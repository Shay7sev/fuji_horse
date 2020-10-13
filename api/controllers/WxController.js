/**
 * WxController
 *
 * @description :: Server-side logic for managing wxes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const jwt = require('jsonwebtoken');
const rp = require('request-promise');
const wx_secret = 'stramoin2019';
//const app_id = 'wx8ae0f5c0d530e81b';
const app_id = 'wx72ce5c1fca855c05';
//const app_secret = 'c414246f43140d49807407d9c37d3ffb';
const app_secret = '7530f24f2488aac108bb807400c09155';
const moment = require('moment');
const wx_pay = require('../lib/WxPay');
module.exports = {

  //generate wx token for authorization
  'wxToken': function (req, res) {
    let openid = req.body.openid;
    let token = jwt.sign({openid: openid}, wx_secret);
    res.send({
      error: 0,
      token: token
    })
  },

  'code2token': async function (req, res) {
    let code = req.param('code');
    console.log(code);
    let url = 'https://api.weixin.qq.com/sns/jscode2session?appid='+app_id+'&secret='+app_secret+'&js_code='+code+'&grant_type=authorization_code';
    try {
      let body = await rp(url);
      let json = JSON.parse(body);
      let result = await Customer.findOrCreate({openid: json.openid});
      console.log(result);
      let token = jwt.sign({openid: json.openid}, wx_secret);
      res.send({
        error: 0,
        token: token,
        raw: json
      });
    } catch (err) {
      console.log(err);
    }
  },

  'decode': function (req, res) {
    let decoded = jwt.verify(req.param('token'), wx_secret);
    console.log(decoded);
    res.send('ok');
  },

  'authTest': function (req, res) {
    res.send('okay');
  },

  'updateCustomer': async function (req, res) {
    let openid = req.params.openid;
    let form = {
      nickname: req.body.nickName,
      avatar: req.body.avatarUrl,
      city: req.body.city
    }
    try {
      let result = await Customer.find({openid: openid});
      if (result.length > 0 ) {
        try {
          let updated = await Customer.update({openid: openid}, form);
          console.log(updated);
          res.send({
            error: 0,
            message: 'ok'
          })
        } catch (err) {
          console.log(err);
        }
      } else {
        res.send({
          error: 0,
          message: 'already updated'
        })
      }
    } catch (err) {
      console.log(err);
    }
  },

  'updatePhone': async function (req, res) {
    let openid = req.params.id;
    let form = req.body;
    try {
      let result = await Customer.update({openid: openid}, form);
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getPhone': async function (req, res) {
    let openid = req.params.id;
    try {
      let record = await Customer.find({openid: openid});
      if (record.length > 0) {
        res.send({
          error: 0,
          phone: record[0].phone
        })
      } else {
        res.send({
          error: 1,
          phone: ''
        })
      }
    } catch (err) {
      console.log(err);
    }
  },

  'getPromotion': async function (req, res) {
    try {
      let hotProducts = await Product.find({promotion: 1});
      res.send({
        error: 0,
        list: hotProducts
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getCarousel': async function (req, res) {
    try {
      let carousel = await Product.find({carousel: 1});
      res.send({
        error: 0,
        list: carousel
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getProduct': async function (req, res) {
    let productId = req.params.id;
    try {
      let product = await Product.find({id: productId});
      res.send({
        error: 0,
        product: product[0]
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getList': async function (req, res) {
    let category = req.params.id;
    try {
      let products = await Product.find({category: category});
      res.send({
        error: 0,
        products: products
      })
    } catch (err) {
      console.log(err);
    }
  },

  'updateCart': async function (req, res) {
    let openid = req.params.id;
    let productId = req.body.productId;
    let form = req.body;
    try {
      let result = await Cart.find({customerId: openid, productId: productId});
      if (result.length == 0) {
        let record = await Cart.create(form);
        console.log(record);
        res.send({
          error: 0,
          message: 'ok'
        });
      } else {
        res.send({
          error: 1,
          message: 'already in cart'
        })
      }
    } catch (err) {
      console.log(err);
    }
  },

  'clearCart': async function (req, res) {
    let customerId = req.params.cid;
    console.log(customerId);
    let products = JSON.parse(req.param('pid'));
    console.log(products);
    for(let i=0; i<products.length; i++){
      try {
        let result = await Cart.destroy({customerId: customerId});
        console.log(result);
      } catch (err) {
        console.log(err);
      }
    };
    res.send({
      error: 0,
      message: 'ok'
    });
  },

  'deleteCart': async function (req, res) {
    let cartId = req.params.id;
    try {
      let result = await Cart.destroy({id: cartId});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err)
    }
  },

  'getCart': async function (req, res) {
    let customerId = req.params.id;
    try {
      let cart = await Cart.find({customerId: customerId});
      if (cart.length > 0) {
        for(let i=0; i<cart.length; i++){
          let product = await Product.find({id: cart[i].productId});
          cart[i]['product'] = product[0];
          cart[i]['checked'] = false;
        }
        res.send({
          error: 0,
          cart: cart
        })
      } else {
        res.send({
          error: 0,
          cart: []
        })
      }
    } catch (err) {
      console.log(err);
    }
  },

  'createOrder': async function (req, res) {
    let form = req.body;
    let createTime = moment().format('YYYY年MM月DD日H时m分');
    let today = moment().format('YYYY年MM月DD日0时0分');
    try {
      let count = await Order.count({
        createTime: {'>': today}
      });
      let orderNo = Number(moment().format('YYYYMMDD0000'))+Number(count)+1;
      console.log('order today:', count);
      form['createTime'] = createTime;
      form['status'] = '待确认';
      form['id'] = 'D'+orderNo;
      try {
        let result = await Order.create(form);
        console.log(result);
        res.send({
          error: 0,
          record: result
        })
      } catch (err) {
        console.log(err);
      }
    } catch (err) {
      console.log(err);
    }
  },

  'getOrder': async function (req, res) {
    let orderId = req.params.id;
    try {
      let record = await Order.find({id: orderId});
      let products = JSON.parse(record[0].productId);
      let amount = JSON.parse(record[0].amount);
      let array = [];
      for(let i=0; i<products.length; i++) {
        let product = await Product.find({id: products[i]});
        let horseInfoList = [];
        let addressInfoList = [];
        for(let j=0; j<amount[i]; j++){
          let horse = await HorseToOrder.find({orderId: orderId, productId: products[i]+'_'+j});
          let address = await AddressToOrder.find({orderId: orderId, productId: products[i]+'_'+j});
          if (horse.length>0) {
            let horseInfo = await Horse.find({id: horse[0].horseId});
            horseInfoList.push(horseInfo)
          }
          if (address.length>0) {
            let addressInfo = await Address.find({id: address[0].addressId});
            addressInfoList.push(addressInfo);
          }
        }
        product[0]['horse'] = horseInfoList;
        product[0]['address'] = addressInfoList;
        array.push(product[0]);
      }
      let orderInfo = record[0];
      orderInfo['products'] = array;
      res.send({
        error: 0,
        info: orderInfo
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getOrders': async function (req, res) {
    let openid = req.param('openid');
    try {
      let orders = await Order.find({customerId: openid}).sort({id: 'DESC'});
      for(let i=0; i<orders.length; i++){
        let products = JSON.parse(orders[i].productId);
        let array = [];
        for(let j=0; j<products.length; j++){
          let info = await Product.find({id: products[j]});
          array.push(info[0]);
        }
        orders[i]['products'] = array;
      }
      res.send({
        error: 0,
        orders: orders
      })
    } catch (err) {
      console.log(err);
    }
  },

  'updateOrder': async function (req, res) {
    let orderId = req.params.id;
    let form = req.body;
    form['updateTime'] = moment().format('YYYY年MM月D日H时m分');
    try {
      let result = await Order.update({id: orderId}, form);
      res.send({
        error: 0,
        record: result
      });
    } catch (err) {
      console.log(err);
    }
  },

  'deleteOrder': async function (req, res) {
    let orderId = req.params.id;
    try {
      let result = await Order.destroy({id: orderId});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getReport': async function (req, res) {
    let orderId = req.params.id;
    try {
      let record = await Report.find({orderId: orderId});
      console.log(record);
      res.send({
        error: 0,
        report: record
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getAddress': async function (req, res) {
    let openid = req.param('openid');
    try {
      let list = await Address.find({customerId: openid});
      res.send({
        error: 0,
        list: list
      })
    } catch (err) {
      console.log(err)
    }
  },

  'createAddress': async function (req, res) {
    let form = req.body;
    let createTime = moment().format('YYYY年MM月D日H时m分');
    form['createTime'] = createTime;
    try {
      let record = await Address.create(form);
      res.send({
        error: 0,
        record: record
      });
    } catch (err) {
      console.log(err)
    }
  },

  'deleteAddress': async function (req, res) {
    let addressId = req.params.id;
    try {
      let result = await Address.destroy({id: addressId});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getHorse': async function (req, res) {
    let openid = req.param('openid');
    try {
      let list = await Horse.find({master: openid});
      res.send({
        error: 0,
        list: list
      })
    } catch (err) {
      console.log(err)
    }
  },

  'createHorse': async function (req, res) {
    let form = req.body;
    let createTime = moment().format('YYYY年MM月D日H时m分');
    form['createTime'] = createTime;
    try {
      let record = await Horse.create(form);
      res.send({
        error: 0,
        record: record
      });
    } catch (err) {
      console.log(err)
    }
  },

  'deleteHorse': async function (req, res) {
    let horseId = req.params.id;
    try {
      let result = await Horse.destroy({id: horseId});
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getCount': async function (req, res) {
    let openid = req.params.id;
    try {
      let cart = await Cart.count({customerId: openid});
      let order = await Order.count({
        customerId: openid,
        status: { '!': '待确认'}
      });
      //let invoice = await Invoice.count({customerId: openid});
      let report = await Order.count({customerId: openid, status: '已报告'});
      let invoice = await Invoice.find({customerId: openid, status: '已开票'});
      let count = {
        cart: cart,
        order: order,
        invoice: invoice.length>0?'已开票':'_',
        report: report
      };
      res.send({
        error: 0,
        count: count
      })
    } catch (err) {
      console.log(err);
    }
  },

  'assignHorse': async function (req, res) {
    let form = req.body;
    try {
      let record = await HorseToOrder.find({orderId: form.orderId, productId: form.productId});
      if (record.length == 0) {
        try {
          let result = await HorseToOrder.create(form);
          console.log(result);
        } catch (err) {
          console.log(err);
        }
      } else {
        try {
          let updated = await HorseToOrder.update({orderId: form.orderId, productId: form.productId}, form);
          console.log(updated);
        } catch (err) {
          console.log(err);
        }
      }
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getHorseOrder': async function (req, res) {
    let orderId = req.params.oid;
    let productId = req.params.pid;
    try {
      let result = await HorseToOrder.find({orderId: orderId, productId: productId});
      console.log(result);
      res.send({
        error: 0,
        info: result
      })
    } catch (err) {
      console.log(err);
    }
  },

  'assignAddress': async function (req, res) {
    let form = req.body;
    try {
      let record = await AddressToOrder.find({orderId: form.orderId, productId: form.productId});
      if (record.length == 0) {
        try {
          let result = await AddressToOrder.create(form);
          console.log(result);
        } catch (err) {
          console.log(err);
        }
      } else {
        try {
          let updated = await AddressToOrder.update({orderId: form.orderId, productId: form.productId}, form);
          console.log(updated);
        } catch (err) {
          console.log(err);
        }
      }
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getAddressOrder': async function (req, res) {
    let orderId = req.params.oid;
    let productId = req.params.pid;
    try {
      let result = await AddressToOrder.find({orderId: orderId, productId: productId});
      console.log(result);
      res.send({
        error: 0,
        info: result
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getPrepayId': async function (req, res) {
    let orderId = req.param('orderId');
    let openid = req.param('openid');
    let body = req.param('body');
    let amount = req.param('amount');
    let json = await wx_pay.uniOrder(orderId, openid, amount, body);
    console.log(json, typeof json);
    let prepayId = JSON.parse(json).xml.prepay_id;
    let sign = wx_pay.genWxPaySign(prepayId);
    res.send({
      error: 0,
      xml: json,
      sign: sign,
      prepay_id: prepayId
    });
  },

  'getInvInfos': async function (req, res) {
    let openid = req.param('openid');
    try {
      let record = await InvInfo.find({customerId: openid});
      console.log(record);
      res.send({
        error: 0,
        inv: record
      })
    } catch (err) {
      console.log(err)
    }
  },

  'getInvInfo': async function (req, res) {
    let customerId = req.params.id;
    try {
      let record = await InvInfo.find({customerId: customerId});
      console.log(record);
      res.send({
        error: 0,
        inv: record
      })
    } catch (err) {
      console.log(err);
    }
  },

  'createInvInfo': async function (req, res) {
    let form = req.body;
    let formnNotify = {
      type: 'invoice',
      content: '你有新发票需要开具:'+form.orderId,
      createTime: moment().unix()
    }
    form['date'] = moment().format('YYYY-MM-DD');
    form['status'] = '未开票';
    try {
      let result = await Invoice.create(form);
      console.log(result);
      try {
        let record = await Notification.create(formnNotify);
        let updated = await Order.update({id: form.orderId}, {invStatus: '已开票'});
        console.log(updated);
        console.log(record);
      } catch (err) {
        console.log(err);
      }
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'saveInvInfo': async function (req, res) {
    let form = req.body;
    try {
      let result = await InvInfo.find({customerId: form.customerId});
      if (result.length > 0) {
        let updated = await InvInfo.update({customerId: form.customerId}, form);
        console.log(updated);
      } else {
        let saved = await InvInfo.create(form);
      }
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'notifyServer': async function (req, res) {
    let orderId = req.body.orderId;
    let notifyType = req.body.notify_type;
    let form = {
      createTime: moment().unix()
    }
    if (notifyType == 'report') {
      form['type'] = 'report';
      form['content'] = '你有新订单需要报告：'+orderId;
    } else {
      form['type'] = 'deliver';
      form['content'] = '你有新订单需要发货：'+orderId;
    }
    try {
      let result = await Notification.create(form);
      console.log(result);
      res.send({
        error: 0,
        message: 'ok'
      })
    } catch (err) {
      console.log(err);
    }
  },

  'getInvOrders': async function (req, res) {
    var openid = req.param('openid');
    try {
      let result = await Order.find({status: '已支付', customerId: openid});
      let array = [];
      if (result.length > 0) {
        for(let i=0; i<result.length; i++) {
          array.push(result[i].id);
        }
      }
      res.send({
        error: 0,
        data: array
      })
    } catch (err) {
      console.log(err);
    }
  }
};

