'use strict'

module.exports =
  STATIC_DIR: 'static'
  CACHE_AGE_INDEX: parseInt process.env.ARRAYRES_CACHE_AGE_INDEX, 10
  CACHE_AGE_ASSETS: parseInt process.env.ARRAYRES_CACHE_AGE_ASSETS, 10
  PORT: parseInt process.env.ARRAYRES_PORT, 10
