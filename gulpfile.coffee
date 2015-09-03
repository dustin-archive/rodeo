# Gulp
gulp = require('gulp')
watch = require('gulp-watch')

# Compilers
jade = require('gulp-jade')
coffee = require('gulp-coffee')
sass = require('gulp-ruby-sass')

# Directories
componentDir = 'components/'

gulp.task 'buckle-up', ->
  return gulp.src(componentDir + '*.scss')
