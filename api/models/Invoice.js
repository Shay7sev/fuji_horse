/**
 * Invoice.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_invoice',
  attributes: {
    id: {
      type: 'string',
      columnName: 'id',
      required: true,
      primaryKey: true,
      defaultsTo: function () {
        return uuid.v4();
      }
    },
    customerId: {
      type: 'string',
      columnName: 'customer_id'
    },
    orderId: {
      type: 'string',
      columnName: 'order_id'
    },
    title: {
      type: 'string',
      columnName: 'title'
    },
    taxCode: {
      type: 'string',
      columnName: 'tax_code'
    },
    amount: {
      type: 'string',
      columnName: 'total_amount'
    },
    date: {
      type: 'string',
      columnName: 'date'
    },
    address: {
      type: 'string',
      columnName: 'address'
    },
    invType: {
      type: 'string',
      columnName: 'inv_type'
    },
    status: {
      type: 'string',
      columnName: 'status'
    }
  }
};

