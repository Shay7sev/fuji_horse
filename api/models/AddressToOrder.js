/**
 * AddressToOrder.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_address_to_order',
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
    orderId: {
      type: 'string',
      columnName: 'order_id'
    },
    productId: {
      type: 'string',
      columnName: 'product_id'
    },
    addressId: {
      type: 'string',
      columnName: 'address_id'
    },
    customerId: {
      type: 'string',
      columnName: 'customer_id'
    }
  }
};

