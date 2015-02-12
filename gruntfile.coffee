module.exports = (grunt) ->

  require('load-grunt-tasks')(grunt)

  grunt.initConfig

    stylus:
      compile:
        options:
          compress: false
        files:
          'test/test.css': 'test/test.styl'

    jade:
      compile:
        options:
          pretty: true
        files:
          'test/index.html': 'test/index.jade'

    connect:
      server:
        options:
          port: '3000'
          open:
            target: 'http://localhost:<%= connect.server.options.port %>/test/'

    watch:
      options:
        livereload: true
      stylus:
        files: ['test/*.styl']
        tasks: ['stylus']
      jade:
        files: ['test/*.jade']
        tasks: ['jade']

  grunt.registerTask 'build', ['jade', 'stylus']
  grunt.registerTask 'serve', ['connect', 'watch']
