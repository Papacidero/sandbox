module.exports = function(grunt) {

grunt.initConfig({
    sass: {
      dist: {
        files: [{
          expand: true,
          cwd: '../sass/',
          src: ['*.scss'],
          dest: '../css/',
          ext: '.css'
        }]
      }
    },
  autoprefixer: {
      options: {
          browsers: ['last 2 versions']
      },
      dist: {
              src: "../css/*.css"
      }
    },
    watch: {
      css: {
        files: ['../sass/*.scss'],
        tasks: ['sass','autoprefixer'],
        options: {
          spawn: false,
        },
      },
    }    
});

grunt.loadNpmTasks('grunt-contrib-watch');
grunt.loadNpmTasks('grunt-contrib-sass');
grunt.loadNpmTasks('grunt-autoprefixer');

grunt.registerTask('default',['watch']);

};