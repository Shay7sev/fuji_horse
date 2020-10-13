/**
 * Report.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_report',
  attributes: {
    id: {
      type: 'string',
      required: true,
      columnName: 'id',
      defaultsTo: function () {
        return uuid.v4();
      }
    },
    link: {
      type: 'string',
      columnName: 'link'
    },
    customerId: {
      type: 'string',
      columnName: 'customer_id'
    },
    orderId: {
      type: 'string',
      columnName: 'order_id'
    },
    productNo: {
      type: 'string',
      columnName: 'product_no'
    }
  }
};

