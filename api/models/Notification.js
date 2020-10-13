/**
 * Notification.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_notification',
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
    type: {
      type: 'string',
      columnName: 'type'
    },
    content: {
      type: 'string',
      columnName: 'content'
    },
    handled: {
      type: 'string',
      columnName: 'handled',
      defaultsTo: 0
    },
    remark: {
      type: 'string',
      columnName: 'remark'
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
}
