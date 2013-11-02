'use strict';

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    // Metadata.
    pkg: grunt.file.readJSON('packageInfo.json'),

    banner: '/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - ' +
      '<%= grunt.template.today("yyyy-mm-dd") %>\n' +
      '<%= pkg.homepage ? "* " + pkg.homepage + "\\n" : "" %>' +
      '* Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %>;' +
      ' Licensed <%= _.pluck(pkg.licenses, "type").join(", ") %> */\n',

    // Task configuration.
    clean: {
      src: ['dist']
    },

    concat: {
      options: {
        banner: '<%= banner %>',
        stripBanners: true
      },
      dist: {
        src: [
          'app/scripts/**/*.js'
        ],
        dest: 'dist/ba-<%= pkg.name %>.js'
      },
    },

    uglify: {
      options: {
        banner: '<%= banner %>'
      },
      dist: {
        src: '<%= concat.dist.dest %>',
        dest: 'dist/ba-<%= pkg.name %>.min.js'
      },
    },

    coffee: {
      compile: {
        files: {
          'app/scripts/kickstart.js': 'coffee/kickstart.coffee',
        },
        options: {
          basePath: 'app/scripts',
        }
      },
    },

    jade: {
      compile: {
        files: {
          "app/index.html": "jade/index.jade",
        }
      },
      options: {
        pretty: true
      }
    },

    watch: {
      coffee: {
        files: [
          'coffee/*.coffee',
          'coffee/**/*.coffee'
        ],
        tasks: 'coffee:compile'
      },
      jade: {
        files: [
          'jade/*.jade',
          'jade/**/*.jade'
        ],
        tasks: 'jade:compile'
      },
    }

  });

  // These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-jade');

  // Default task.
  grunt.registerTask('default', ['coffee', 'jade', 'watch']);
  grunt.registerTask('build', ['clean', 'concat', 'uglify']);

};