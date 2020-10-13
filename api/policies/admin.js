module.exports = function (req, res, next) {
  if (req.session.user.role == 'super') {
    return next()
  } else {
    return res.forbidden('please login first!');
  }
}
