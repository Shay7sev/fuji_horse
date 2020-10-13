/**
 * HomeController
 *
 * @description :: Server-side logic for managing homes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const secret = 'fujifilmhorseriding';
const jwt = require('jsonwebtoken');
const uuid = require('node-uuid');
const wx_secret = 'stramoin2019';
const util = require('../lib/common');
const moment = require('moment');
let bannerData = '体检套餐显示价格为每匹马检查一次的服务单价；影像服务套餐显示价格为每上门一次进行服务的单价；平台试运行阶段截止至8/31日，期间下单，您将可享受更优惠的价格！';

module.exports = {
  'ping': async function (req, res) {
    try {
      let result = await Admin.find();
      console.log('result:', result);
    } catch (err) {
      console.log(err);
    }
    res.send('pong');
  },

  'index': function (req, res) {
    if (typeof req.session.user == 'undefined') {
      res.redirect('/login');
    } else {
      res.view('index');
    }
  },

  'admin': function (req, res) {
    if (typeof req.session.user == 'undefined') {
      res.redirect('/login');
    } else {
      res.view('index');
    }
  },

  'login': function (req, res) {
    res.view('login', {layout: 'layoutNull', error: null});
  },

  'auth': async function (req, res) {
    try {
      let record = await Admin.find({name: req.body.name});
      if (record.length > 0 && record[0].password === req.body.password) {
        req.session.user = {
          name: record[0].name,
          role: record[0].role
        }
        res.redirect('/admin');
      } else {
        res.view('login', {layout: 'layoutNull', error: 'failed'})
      }
    } catch (err) {
      console.log(err);
    }
  },

  'customer': async function (req, res) {
    try {
      let customers = await Customer.find();
      res.view('customer', {customers: customers});
    } catch (err) {
      console.log(err);
    }
  },

  'order': async function (req, res) {
    try {
      let orders = await Order.find().sort({id: 'DESC'});
      for(var i=0; i<orders.length; i++){
        let horses = await HorseToOrder.find({orderId: orders[i].id});
        let horseNames = [];
        for(var j=0; j<horses.length; j++) {
          let horse = await Horse.find({id: horses[j].horseId});
          horseNames.push(horse[0]);
        }
        let customer = await Customer.find({openid: orders[i].customerId});
        let addr = await AddressToOrder.find({orderId: orders[i].id});
        let hor = await HorseToOrder.find({orderId: orders[i].id});
        let address = [];
        for(let k=0; k<addr.length; k++){
          let result = await Address.find({id: addr[k].addressId});
          if(result.length>0){
            let addr_info = result[0].province+' '+result[0].city+' '+result[0].street+' '+result[0].telephone;
            address.push(addr_info);
          }
        }
        let horse = []
        for(let l=0; l<hor.length; l++){
          let result = await Horse.find({id: hor[l].horseId});
          if(result.length>0) {
            let horse_info = result[0].name+' '+result[0].gender+' '+result[0].color+' '+result[0].age;
            horse.push(horse_info);
          }
        }
        orders[i]['horses'] = horse;
        orders[i]['address'] = address;
        orders[i]['customer'] = customer;
      }
      console.log(orders);
      res.view('order', {orders: orders});
    } catch (err) {
      console.log(err);
    }
  },

  'product': async function (req, res) {
    try {
      let products = await Product.find();
      res.view('product', {products: products});
    } catch (err) {
      console.log(err);
    }
  },

  'report': async function (req, res) {
    try {
      let reports = await Report.find();
      res.view('report', {reports: reports});
    } catch (err) {
      console.log(err);
    }
  },

  'invoice': async function (req, res) {
    try {
      let invs = await Invoice.find().sort({
        date: 'DESC'
      });
      console.log(invs);
      res.view('invoice', {invs: invs});
    } catch (err) {
      console.log(err)
    }
  },

  'staff': async function (req, res) {
    try {
      let staff = await Staff.find();
      res.view('staff', {staff: staff});
    } catch (err) {
      console.log(err)
    }
  },

  'updateCustomer': async function (req, res) {
    let openid = req.params.openid;
    let form = req.body;
    console.log(form);
    try {
      let result = await Customer.update({openid: openid}, form);
      console.log(result);
      res.send({status: 'ok'});
    } catch (err) {
      console.log(err);
    }
  },

  'deleteCustomer': async function (req, res) {
    let customerId = req.params.openid;
    try {
      let result = await Customer.destroy({openid: customerId});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'updateOrder': async function (req, res) {
    let orderId = req.params.orderId;
    let form = req.body;
    try {
      let result = await Order.update({id: orderId}, form);
      console.log(result);
      res.send({status: 'ok'});
    } catch (err) {
      console.log(err);
    }
  },

  'deleteOrder': async function (req, res) {
    let vid = req.params.id;
    try {
      let result = await Order.destroy({vid: Number(vid)});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'addProduct': async function (req, res) {
    let form = req.body;
    form['id'] = uuid.v4();
    try {
      let result = await Product.create(form);
      console.log(result);
      res.send({status: 'ok'})
    } catch (err) {
      console.log(err);
    }
  },

  'updateProduct': async function (req, res) {
    let id = req.params.id;
    let form = req.body;
    try {
      let result = await Product.update({id: id}, form);
      console.log(result);
      res.send({status: 'ok'});
    } catch (err) {
      console.log(err);
    }
  },

  'deleteProduct': async function (req, res) {
    let id = req.params.id;
    try {
      let result = await Product.destroy({id: id});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'updateReport': async function (req, res) {
    let id = req.params.id;
    let form = req.body;
    try {
      let result = await Report.update({id: id}, form);
      console.log(result);
      res.send({status: 'ok'});
    } catch (err) {
      console.log(err);
    }
  },

  'addStaff': async function (req, res) {
    let form = req.body;
    form['id'] = uuid.v4();
    try {
      let result = await Staff.create(form);
      console.log(result);
      res.send({status: 'ok'});
    } catch (err) {
      console.log(err);
    }
  },

  'updateStaff': async function (req, res) {
    let id = req.params.id;
    let form = req.body;
    try {
      let result = await Staff.update({id: id}, form);
      console.log(result);
      res.send({status: 'ok'});
    } catch (err) {
      console.log(err);
    }
  },

  'generateXls': async function (req, res) {
    let table = req.param('table');
    //util.rawOut(table, function (cb) {
    //  res.send({
    //    error: 0,
    //    file_path: cb
    //  })
    //});
    try {
      let filePath = await util.exportTable(table);
      res.send({
        error: 0,
        file_path: filePath
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getReport': async function (req, res) {
    let reportId = req.params.id;
    try {
      let record = await Report.find({id: reportId});
      console.log(record);
      res.send({
        error: 0,
        report: record
      })
    } catch (err) {
      console.log(err)}
  },

  'createReport': async function (req, res) {
    let form = req.body;
    console.log(form);
    let orderId = form.orderId;
    try {
      let result = await Report.create(form);
      console.log(result);
      let record = await Order.update({id: orderId}, {status: '报告已发送'});
      console.log(record);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'uploadReport': async function (req, res) {
    let form = req.body;
    console.log(form);
    let fileArray = JSON.parse(form.file_array);
    for(let i=0; i<fileArray.length; i++) {
      req.file('report_'+fileArray[i]).upload({
        dirname: '../../assets/',
      }, async function (err, files) {
        if (err) console.log(err);
        let fileName = files[0].fd.split('/')[3];
        try {
          let record = await Report.create({link: fileName, orderId: form.orderId, customerId: form.openid, productNo: fileArray[i]});
          console.log(record);
          try {
            let result = await Order.update({id: form.orderId}, {status: '已报告'});
            console.log(result);
          } catch (err) {
            console.log(err);
          }
        } catch (err) {
          console.log(err);
        }
      })
    }
    res.redirect('/admin/orders');
  },

  'pollNotify': async function (req, res) {
    try {
      let result = await Notification.find({handled: 0});
      res.send({
        error: 0,
        data: result
      })
    } catch (err) {
      console.log(err);
    }
  },

  'handleNotify': async function (req, res) {
    let notId = req.params.id;
    try {
      let result = await Notification.update({id: notId}, {handled: 1, updateTime: moment().unix()});
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'uploadProduct': async function (req, res) {
    let form = req.body;
    try {
      form.picMain = await util.saveFile(req, 'picMain');
      form.picThumb = await util.saveFile(req, 'picThumb');
      form.picDetail = await util.saveFile(req, 'picDetail');
      try {
        let record = await Product.create(form);
        console.log(record);
        res.send('ok');
      } catch (err) {
        console.log(err);
      }
    } catch (err) {
      console.log(err);
    }
  },

  'globalSearch': function (req, res) {
    let q = req.param('q');
    if (q.indexOf('D2019') >= 0) {
      res.redirect('/admin/orders?orderId='+q);
    } else {
      res.redirect('/admin/orders');
    }
  },

  'dumpDb': function (req, res) {
    let day = moment().format('YYYY_MM_DD');
    util.dbBackup(day, function (cb) {
      if (cb == 'ok') {
        res.send({
          error: 'ok',
          path: '/db_bak/'+day+'.sql'
        })
      }
    })
  },

  'updateInvInfo': async function (req, res) {
   let invId = req.params.id;
   let form = req.body;
   try {
     let updated = await Invoice.update({id: invId}, form);
     console.log(updated);
     res.send({
       error: 0,
       message: 'ok'
     })
   } catch (err) {
     console.log(err);
   }
  },

  'miniProgram': function (req, res) {
    res.view('miniHome', {layout: 'layoutNull'});
  },

  'testExport': async function (req, res) {
    let tableName = req.param('table');
    let data = await util.exportTable(tableName);
    res.send(data);
  },

  'editBanner': async function(req, res) {
    res.view('banner', {banner: bannerData});
  },

  'saveBanner': async function(req, res) {
    let form = req.body;
    bannerData = form.data;
    console.log(bannerData);
    res.send('ok');
  },

  'getBanner': async function(req, res) {
    res.send(bannerData);
  }
};

