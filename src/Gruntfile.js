'use strict';
var moment = require('moment');
 
var LIVERELOAD_PORT = 35729;
var RUNNING_PORT = 1337; // <- if you change this, you need to change in public/js/app.js and recompile
var lrSnippet = require('connect-livereload')({port: LIVERELOAD_PORT});
var mountFolder = function (connect, dir) {
  return connect.static(require('path').resolve(dir));
};

module.exports = function(grunt) {
  
  // load all grunt tasks
  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      },
      build: {
        src: 'bin/<%= pkg.name %>',
        dest: 'build/<%= pkg.name %>.sh'
      }
    },
    // Watch Config
    watch: {
        files: ['views/**/*'],
        options: {
            livereload: true
        },
        scripts: {
            files: [
                'public/js/**/*.js'
            ],
            tasks:['build']
        },
        css: {
            files: [
                'public/css/**/*.css',
            ],
        },
        less: {
            files: ['public/bower_components/bootstrap/less/**/*.less'],
            tasks: ['build']
        },
        express: {
            files:  [ 'server.js', '!**/node_modules/**', '!Gruntfile.js' ],
            tasks:  [ 'watch' ],
            options: {
                nospawn: true // Without this option specified express won't be reloaded
            }
        },
    }
    ,
    open: {
      server: {
        path: 'http://localhost:' + RUNNING_PORT
      }
    }
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');

  //grunt.registerTask('build', ['cssmin', 'concat', 'uglify']);

  //grunt.registerTask('launch', ['wait', 'open']);

  // Default task(s).
  grunt.registerTask('default', ['uglify']);

};