/**
 * Admin.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

const uuid = require('node-uuid');
module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_admin',
  attributes: {
    id: {
      type: 'string',
      columnName: 'id',
      required: true,
      defaultsTo: function () {
        return uuid.v4();
      }
    },
    name: {
      type: 'string',
      columnName: 'name'
    },
    role: {
      type: 'string',
      columnName: 'role'
    },
    password: {
      type: 'string',
      columnName: 'password'
    }
  }
};

