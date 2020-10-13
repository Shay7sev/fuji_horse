/**
 * Customer.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_customer',
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
    openid: {
      type: 'string',
      columnName:'openid'
    },
    nickname: {
      type: 'string',
      columnName: 'nickname'
    },
    avatar: {
      type: 'string',
      columnName: 'avatar'
    },
    age: {
      type: 'string',
      columnName: 'age'
    },
    city: {
      type: 'string',
      columnName: 'city'
    },
    phone: {
      type: 'string',
      columnName: 'phone'
    }
  }
};

