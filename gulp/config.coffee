#
# Build system configuration.
# @module gulp/config
#

src = {}
dest = {}

module.exports =
  port: parseInt process.env.ARRAYRES_PORT, 10
  src: src
  dest: dest
  browsers: ['last 2 versions']

#
# Source files and folders
# --------------------

src.package = 'package.json'

src.clientRoot = 'src/client'

src.clientIndex = "#{src.clientRoot}/index.html"
src.clientFavicon = "#{src.clientRoot}/favicon.ico"

src.clientCriticalStyles = "#{src.clientRoot}/critical/**/*.{css,styl}"
src.clientCriticalScripts = "#{src.clientRoot}/critical/**/*.coffee"
src.clientCriticalStylesMain = "#{src.clientRoot}/critical/critical.styl"
src.clientCriticalScriptsMain = "#{src.clientRoot}/critical/critical.coffee"

src.serverRoot = 'src/server'
src.serverScripts = "#{src.serverRoot}/**/*.coffee"

#
# Destination files and folders
# --------------------

dest.buildRoot = 'build'

dest.serverRoot = "#{dest.buildRoot}/server"

dest.clientRoot = "#{dest.serverRoot}/static"
