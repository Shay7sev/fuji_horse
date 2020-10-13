/**
 * Order.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_order',
  attributes: {
    vid: {
      type: 'int',
      columnName: 'vid',
      primaryKey: true
    },
    id: {
      type: 'string',
      required: true,
      columnName: 'id'
    },
    productId: {
      type: 'string',
      columnName: 'product_id'
    },
    customerId: {
      type: 'string',
      columnName: 'customer_id'
    },
    horseId: {
      type: 'string',
      columnName: 'horse_id'
    },
    status: {
      type: 'string',
      columnName: 'status'
    },
    invoiceId: {
      type: 'string',
      columnName: 'invoice_id'
    },
    total: {
      type: 'string',
      columnName: 'total'
    },
    createTime: {
      type: 'string',
      columnName: 'create_time'
    },
    updateTime: {
      type: 'string',
      columnName: 'update_time'
    },
    addressId: {
      type: 'string',
      columnName: 'address_id'
    },
    amount: {
      type: 'string',
      columnName: 'amount'
    },
    reportType: {
      type: 'string',
      columnName: 'report_type'
    },
    orderRate: {
      type: 'string',
      columnName: 'order_rate'
    },
    invStatus: {
      type: 'string',
      columnName: 'inv_status',
      defaultsTo: '未开票'
    }
  }
};

