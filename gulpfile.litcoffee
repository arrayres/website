Build system
================================================================================

This is the build system for ArrayRes Website.

- Run `npm run dev` to launch a live-reloaded site from dev build.
- Run `npm run dist` to build a distribution version.

Both *dev* and *dist* will write the generated code to the *./build* folder.


    require('gulp')

      .task 'default', ['dev:serve']

      .task 'shared:clean-build', require './gulp/tasks/shared/clean-build'
      .task 'shared:favicon', require './gulp/tasks/shared/favicon'

      .task 'dev:build', require './gulp/tasks/dev/build'
      .task 'dev:serve', require './gulp/tasks/dev/serve'
      .task 'dev:browser-sync-create', require './gulp/tasks/dev/browser-sync-create'
      .task 'dev:browser-sync-init', require './gulp/tasks/dev/browser-sync-init'
      .task 'dev:watch-index', require './gulp/tasks/dev/watch-index'
      .task 'dev:watch-server', require './gulp/tasks/dev/watch-server'
      .task 'dev:index-file', require './gulp/tasks/dev/index-file'
      .task 'dev:http-server', require './gulp/tasks/dev/http-server'

      .task 'dist:build', require './gulp/tasks/dist/build'
      .task 'dist:http-server', require './gulp/tasks/dist/http-server'
      .task 'dist:index-file', require './gulp/tasks/dist/index-file'
      .task 'dist:package-file', require './gulp/tasks/dist/package-file'
