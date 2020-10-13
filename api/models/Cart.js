/**
 * Cart.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_cart',
  attributes: {
    id: {
      type: 'string',
      required: true,
      columnName: 'id',
      primaryKey: true,
      defaultsTo: function () {
        return uuid.v4();
      }
    },
    customerId: {
      type: 'string',
      required: true,
      columnName: 'customer_id'
    },
    productId: {
      type: 'string',
      columnName: 'product_id'
    },
    amount: {
      type: 'string',
      columnName: 'amount'
    }
  }
};

