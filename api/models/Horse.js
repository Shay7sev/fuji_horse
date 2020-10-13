/**
 * Horse.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_horse',
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
    name: {
      type: 'string',
      columnName: 'name'
    },
    gender: {
      type: 'string',
      columnName: 'gender'
    },
    age: {
      type: 'string',
      columnName: 'age'
    },
    master: {
      type: 'string',
      columnName: 'master'
    },
    color: {
      type: 'string',
      columnName: 'color'
    }
  }
}
