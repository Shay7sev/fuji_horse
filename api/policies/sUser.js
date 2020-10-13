module.exports = function (req, res, next) {
  if (req.session.user.role == 'sUser' || req.session.user.role == 'super') {
    return next()
  } else {
    return res.forbidden('you shall not pass!');
  }
}
