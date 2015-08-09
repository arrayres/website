# HTTP server entry point.
#
# This server is used for serving static application files.

'use strict'

# Community modules:
path = require 'path'
express = require 'express'
compression = require 'compression'
serveStatic = require 'serve-static'

# Our modules:
env = require './env'

# Compatibility headers middleware for Internet Explorer:
compatibilityHeaders = (request, response, next) ->
  # Instruct IE to use the latest available compatibility mode:
  response.setHeader 'X-UA-Compatible', 'IE=edge'
  do next

# Static file server middleware:
staticDir = path.resolve __dirname, env.STATIC_DIR
staticFileServer = serveStatic staticDir,
  maxAge: env.CACHE_AGE_ASSETS
  index: false

# HTML5 mode middleware:
indexFileServer = (request, response) ->
  indexFilePath = path.resolve staticDir, 'index.html'
  response.sendFile indexFilePath, maxAge: env.CACHE_AGE_INDEX

# Server:
express()
  .use compatibilityHeaders
  .use compression()
  .use staticFileServer
  .use indexFileServer
  .listen env.PORT
