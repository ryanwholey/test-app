'use strict'

// Explicitly assume 'production' environment unless specified
const NODE_ENV = (!process.env.NODE_ENV) ? 'production' : process.env.NODE_ENV
process.env.NODE_ENV = NODE_ENV

if (NODE_ENV !== 'production') {
    require('dotenv')
}

const config = {
    port: process.env.PORT || 3000,
}

module.exports = config
