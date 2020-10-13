const moment = require('moment');
const app_id = 'wx72ce5c1fca855c05';
const mch_id = '1526792791';
const nonce = '5K8264ILTKCH16CQ2502SI8ZNMTM67VS';
//const app_key = '1qaz3edc5tgb7ujmzxvnasfhqwry1246';
const app_key = 'jfiwefwie1xke125ajaeiji261iajsdi';
const md5 = require('md5-node');
const request = require('request-promise');
const json2xml = require('json2xml');
const xml2json = require('xml2json');

function generate_sign(body, orderId, openid, amount) {
  let string = 'appid='+app_id+'&body='+body+'&device_info=WEB&mch_id='+mch_id+'&nonce_str='+nonce+'&notify_url=https://hm.fujifilm.com.cn/api/payment_notify&openid='+openid+'&out_trade_no='+orderId+'&sign_type=MD5&spbill_create_ip=118.25.45.2&total_fee='+amount+'&trade_type=JSAPI&key='+app_key;
  let sign = md5(string).toUpperCase();
  return sign;
};

function generate_xml(orderId, openid, amount, body) {
  let sign = generate_sign(body, orderId, openid, amount);
  let json = {
    appid: app_id,
    mch_id: mch_id,
    device_info: 'WEB',
    nonce_str: nonce,
    sign: sign,
    sign_type: 'MD5',
    body: body,
    out_trade_no: orderId,
    total_fee: amount,
    spbill_create_ip: '118.25.45.2',
    notify_url: 'https://hm.fujifilm.com.cn/api/payment_notify',
    trade_type: 'JSAPI',
    openid: openid
  }
  let xml = json2xml(json);
  return '<xml>'+xml+'</xml>';
}

module.exports = {
  'uniOrder': async function (orderId, openid, amount, body) {
    let unipay_url = 'https://api.mch.weixin.qq.com/pay/unifiedorder';
    let xml = generate_xml(orderId, openid, amount, body);
    let result = await request({
      url: unipay_url,
      method: 'POST',
      body: xml
    });
    let json = xml2json.toJson(result);
    return json;
  },

  'genWxPaySign': function (prepay_id) {
    let timeStamp = moment().unix();
    let string = 'appId='+app_id+'&nonceStr='+nonce+'&package=prepay_id='+prepay_id+'&signType=MD5&timeStamp='+timeStamp+'&key='+app_key;
    let sign = md5(string).toUpperCase();
    return {
      timeStamp: timeStamp,
      sign: sign,
      nonceStr: nonce
    }
  }
}
