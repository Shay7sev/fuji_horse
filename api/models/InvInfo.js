/**
 * InvInfo.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_inv_info',
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
    invType: {
      type: 'string',
      columnName: 'inv_type'
    },
    name: {
      type: 'string',
      columnName: 'name'
    },
    address: {
      type: 'string',
      columnName: 'address'
    },
    taxCode: {
      type: 'string',
      columnName: 'tax_code'
    },
    remark: {
      type: 'string',
      columnName: 'remark'
    },
    customerId: {
      type: 'string',
      columnName: 'customer_id'
    }
  }
};

