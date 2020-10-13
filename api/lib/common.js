const xlsx = require('node-xlsx');
const exec = require('child_process').exec;
const moment = require('moment');
const fs = require('fs');

module.exports = {
  generateXls: async function (table) {
    let result = '';
    let header = ''
    switch(table) {
      case 'product':
        result = await Product.find();
        header = ['id', '']
        break;
      case 'order':
        result = await Order.find();
        break;
      case 'customer':
        result = await Customer.find();
        break;
    }
  },

  rawOut: function (table, cb) {
    let time = moment().format('YYYY-MM-D_H:m');
    let cmd = 'mysqldump -uroot -p8Uhb9ijn -e "select * from t_'+table+'" fuji > /root/farm/fuji_server/assets/xlsx/'+time+'_'+table+'.xls';
    let fileName = time+'_'+table+'.xls';
    exec(cmd, function (err, stdout, stderr) {
      console.log(stdout || err);
      return cb(fileName);
    })
  },

  exportTable: async function (table) {
    let record = [];
    switch(table) {
      case 'order':
        record = await Order.find();
        break;
      case 'customer':
        record = await Customer.find();
        break;
      case 'invoice':
        record = await Invoice.find();
        break;
      case 'staff':
        record = await Staff.find();
        break;
    }
    console.log(record);
    let tableHeader = [];
    let data = [];
    if(record.length >0) {
      for(let key in record[0]) {
        if(key == 'constructor') {
          break;
        } else {
          tableHeader.push(key);
        }
      };
      data.push(tableHeader);
      for(let i=0; i<record.length; i++){
        let array = [];
        for(let k in record[i]){
          if (k == 'constructor') {
            break;
          } else {
            array.push(record[i][k]);
          }
        }
        data.push(array);
      };
      console.log(data);
    }
    let buffer = xlsx.build([{name: table, data: data}]);
    let time = moment().format('YYYY-MM-D_H:m');
    let filePath = '/root/farm/fuji_server/assets/xlsx/'+time+'_'+table+'.xlsx';
    let fileName = time+'_'+table+'.xlsx';
    fs.writeFileSync(filePath, buffer);
    return fileName;
  },

  dbBackup: function (day, cb) {
    let cmd = 'mysqldump -uroot -p8Uhb9ijn fuji > /root/farm/fuji_server/assets/db_bak/'+day+'.sql';
    exec(cmd, function (err, stdout, stderr) {
      console.log(stdout || err);
      return cb('ok');
    })
  },

  saveFile: function (req, file_name) {
    return new Promise(function (resolve, reject) {
      req.file(file_name).upload({
        dirname: '../../assets/img',
        maxBytes: 20000000
      }, function (err, files) {
        if (err) reject(err);
        console.log(files);
        if (files.length > 0) {
          let fileName = files[0].fd.split('/')[4];
          resolve('/img/'+fileName);
        }
      })
    })
  }
}
