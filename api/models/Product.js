/**
 * Product.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const uuid = require('node-uuid');

module.exports = {
  autoCreatedAt: false,
  autoUpdatedAt: false,
  tableName: 't_product',
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
    name: {
      type: 'string',
      columnName: 'name'
    },
    category: {
      type: 'string',
      columnName: 'category'
    },
    price: {
      type: 'string',
      columnName: 'price'
    },
    detail: {
      type: 'string',
      columnName: 'detail'
    },
    picThumb: {
      type: 'string',
      columnName: 'pic_thumb'
    },
    picMain: {
      type: 'string',
      columnName: 'pic_main'
    },
    picDetail: {
      type: 'string',
      columnName: 'pic_detail'
    },
    promotion: {
      type: 'string',
      columnName: 'promotion',
      defaultsTo: 0
    },
    carousel: {
      type: 'string',
      columnName: 'carousel',
      defaultsTo: 0
    }
  }
};

