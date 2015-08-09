#
# BrowserSync server initializer (development).
# @module gulp/tasks/dev/browser-sync-init
#

#
# Initializes a previously-created instance of BrowserSync server.
# @param  {Function} [done] Optional done callback (not used).
# @return {Object}          BrowserSync instance.
#
module.exports = ->
  browserSync = require 'browser-sync'
  config = require '../../config'

  browserSync
    .get 'default'
    .init
      proxy: "http://localhost:#{config.port}"
      open: yes
      browser: 'default'
