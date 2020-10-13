const jwt = require('jsonwebtoken');
const secret = 'stramoin2019';

module.exports = async function (req, res, next) {
  let token = req.param('token');
  let decoded = jwt.verify(token, secret);
  console.log(decoded);
  if (typeof decoded.openid != 'undefined') {
    try {
      let result = await Customer.find({openid: decoded.openid});
      if (result.length > 0) {
        return next();
      } else {
        return res.forbidden('user not found, please register first');
      }
    } catch (err) {
      return res.forbidden('an error occured');
    }
  } else {
    return res.forbidden('auth failed');
  }
}
