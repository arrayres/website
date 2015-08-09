#
# Index file builder (development).
# @module gulp/tasks/dev/index-file
#

#
# Returns a processed stream of critical styles.
# @param  {Object} config Gulp configuration object.
# @return {Stream}        Processed critical styles stream.
#
streamCriticalStyles = (config) ->
  gulp = require 'gulp'
  stylus = require 'gulp-stylus'
  plumber = require 'gulp-plumber'
  base64 = require 'gulp-base64'
  autoprefixer = require 'gulp-autoprefixer'

  notify = require '../../helpers/notify'

  gulp
    .src config.src.clientCriticalStylesMain
    .pipe plumber notify.andContinue
    .pipe stylus 'include css': true
    .pipe autoprefixer browsers: config.browsers
    .pipe base64 maxImageSize: 128

#
# Returns a processed stream of critical scripts.
# @param  {Object} config Gulp configuration object.
# @return {Stream}        Processed critical scripts stream.
#
streamCriticalScripts = (config) ->
  browserify = require 'browserify'
  coffeeify = require 'coffeeify'
  source = require 'vinyl-source-stream'
  buffer = require 'vinyl-buffer'

  config = require '../../config'
  notify = require '../../helpers/notify'

  browserify(config.src.clientCriticalScriptsMain)
    .transform [coffeeify]
    .bundle()
    .on 'error', notify.andContinue
    .pipe source 'critical.js'
    .pipe buffer()

#
# Builds the index file.
# @param  {Function} [done] Optional done callback (not needed).
# @return {Stream}          Generated index file stream.
#
module.exports = ->
  gulp = require 'gulp'
  series = require 'stream-series'
  browserSync = require 'browser-sync'

  config = require '../../config'
  inline = require '../../helpers/inline'

  runningBrowserSync = browserSync.get 'default'

  gulp
    .src config.src.clientIndex
    .pipe inline.styles streamCriticalStyles config
    .pipe inline.scripts streamCriticalScripts config
    .pipe gulp.dest config.dest.clientRoot
    .pipe runningBrowserSync.reload stream: yes
