/**
 * Address.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_address',
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
    name: {
      type: 'string',
      columnName: 'name'
    },
    province: {
      type: 'string',
      columnName: 'province'
    },
    city: {
      type: 'string',
      columnName: 'city'
    },
    street: {
      type: 'string',
      columnName: 'street'
    },
    postCode: {
      type: 'string',
      columnName: 'post_code'
    },
    telephone: {
      type: 'string',
      columnName: 'telephone'
    },
    email: {
      type: 'string',
      columnName: 'email'
    },
    createTime: {
      type: 'string',
      columnName: 'create_time'
    },
    updateTime: {
      type: 'string',
      columnName: 'update_time'
    }
  }
};

