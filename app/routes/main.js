'use strict'

const path = require('path')

module.exports = {
  method: 'GET',
  path: '/{param*}',
  handler: {
    file: {
      path: path.resolve(__dirname, '../public/index.html'),
    }
  }
}
