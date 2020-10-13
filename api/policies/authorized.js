module.exports = function (req, res, next) {
  if (typeof req.session.user != 'undefined') {
    return next()
  } else {
    return res.forbidden('please login first!');
  }
}
