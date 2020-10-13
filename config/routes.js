/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes map URLs to views and controllers.
 *
 * If Sails receives a URL that doesn't match any of the routes below,
 * it will check for matching files (images, scripts, stylesheets, etc.)
 * in your assets directory.  e.g. `http://localhost:1337/images/foo.jpg`
 * might match an image file: `/assets/images/foo.jpg`
 *
 * Finally, if those don't match either, the default 404 handler is triggered.
 * See `api/responses/notFound.js` to adjust your app's 404 logic.
 *
 * Note: Sails doesn't ACTUALLY serve stuff from `assets`-- the default Gruntfile in Sails copies
 * flat files from `assets` to `.tmp/public`.  This allows you to do things like compile LESS or
 * CoffeeScript for the front-end.
 *
 * For more information on configuring custom routes, check out:
 * http://sailsjs.org/#!/documentation/concepts/Routes/RouteTargetSyntax.html
 */

module.exports.routes = {

  /***************************************************************************
  *                                                                          *
  * Make the view located at `views/homepage.ejs` (or `views/homepage.jade`, *
  * etc. depending on your default view engine) your home page.              *
  *                                                                          *
  * (Alternatively, remove this and add an `index.html` file in your         *
  * `assets` directory)                                                      *
  *                                                                          *
  ***************************************************************************/

  '/': 'HomeController.index',

  'get /ping': 'HomeController.ping',

  'get /admin': 'HomeController.admin',

  'get /login': 'HomeController.login',

  'post /auth': 'HomeController.auth',

  'get /admin/customers': 'HomeController.customer',

  'get /admin/orders': 'HomeController.order',

  'get /admin/products': 'HomeController.product',

  'get /admin/reports': 'HomeController.report',

  'get /admin/invoices': 'HomeController.invoice',

  'get /admin/staff': 'HomeController.staff',

  'post /customer/:openid': 'HomeController.updateCustomer',

  'delete /customer/:openid': 'HomeController.deleteCustomer',

  'post /order/:orderId': 'HomeController.updateOrder',

  'delete /order/:id': 'HomeController.deleteOrder',

  'post /product': 'HomeController.addProduct',

  'post /product/:id': 'HomeController.updateProduct',

  'delete /product/:id': 'HomeController.deleteProduct',

  'post /report/:id': 'HomeController.updateReport',

  'post /staff': 'HomeController.addStaff',

  'post /staff/:id': 'HomeController.updateStaff',

  'post /token': 'WxController.wxToken',

  'get /auth_test': 'WxController.authTest',

  'get /decode': 'WxController.decode',

  'get /code2openid': 'WxController.code2token',

  'post /api/customer/:openid': 'WxController.updateCustomer',

  'post /api/phone/:id': 'WxController.updatePhone',

  'get /api/phone/:id': 'WxController.getPhone',

  'get /api/hot': 'WxController.getPromotion',

  'get /api/carousel': 'WxController.getCarousel',

  'get /api/product/:id': 'WxController.getProduct',

  'get /api/list/:id': 'WxController.getList',

  'get /api/cart/:id': 'WxController.getCart',

  'get /api/clear_cart/:cid': 'WxController.clearCart',

  'post /api/cart/:id': 'WxController.updateCart',

  'delete /api/cart/:id': 'WxController.deleteCart',

  'post /api/order': 'WxController.createOrder',

  'get /api/order/:id': 'WxController.getOrder',

  'get /api/order': 'WxController.getOrders',

  'post /api/order/:id': 'WxController.updateOrder',

  'delete /api/order/:id': 'WxController.deleteOrder',

  'get /api/address': 'WxController.getAddress',

  'post /api/address': 'WxController.createAddress',

  'delete /api/address/:id': 'WxController.deleteAddress',

  'get /api/horse': 'WxController.getHorse',

  'post /api/horse': 'WxController.createHorse',

  'delete /api/horse/:id' : 'WxController.deleteHorse',

  'get /api/count/:id': 'WxController.getCount',

  'get /gen_xlsx': 'HomeController.generateXls',

  'post /api/horse2order': 'WxController.assignHorse',

  'get /api/horse2order/:oid/:pid': 'WxController.getHorseOrder',

  'post /api/address2order': 'WxController.assignAddress',

  'get /api/address2order/:oid/:pid': 'WxController.getAddressOrder',

  'get /report/:id': 'HomeController.getReport',

  'get /api/report/:id': 'WxController.getReport',

  'post /report': 'HomeController.createReport',

  'get /api/prepay_id': 'WxController.getPrepayId',

  'get /api/inv_info/:id': 'WxController.getInvInfo',

  'post /api/inv_info': 'WxController.createInvInfo',

  'post /inv_info/:id': 'HomeController.updateInvInfo',

  'post /api/inv': 'WxController.saveInvInfo',

  'get /api/inv_infos': 'WxController.getInvInfos',

  'post /upload_report': 'HomeController.uploadReport',

  'post /api/notify_server': 'WxController.notifyServer',

  'get /poll_notify': 'HomeController.pollNotify',

  'post /handle_notify/:id': 'HomeController.handleNotify',

  'get /api/inv_order': 'WxController.getInvOrders',

  'post /upload_product': 'HomeController.uploadProduct',

  'get /search': 'HomeController.globalSearch',

  'get /dump_database': 'HomeController.dumpDb',

  'get /miniprogram': 'HomeController.miniProgram',

  'get /test_export': 'HomeController.testExport',

  'get /top_banner': 'HomeController.getBanner',

  'get /admin/banner': 'HomeController.editBanner',
  
  'post /banner': 'HomeController.saveBanner'

  /***************************************************************************
  *                                                                          *
  * Custom routes here...                                                    *
  *                                                                          *
  * If a request to a URL doesn't match any of the custom routes above, it   *
  * is matched against Sails route blueprints. See `config/blueprints.js`    *
  * for configuration options and examples.                                  *
  *                                                                          *
  ***************************************************************************/

};
