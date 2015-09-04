# Gulp
gulp   = require 'gulp'
watch  = require 'gulp-watch'

# Gulp plugins
concat = require 'gulp-concat'

# Compilers
jade   = require 'gulp-jade'
coffee = require 'gulp-coffee'
sass   = require 'gulp-ruby-sass'

# Directories
componentDir = 'dev/components/'

gulp.task 'jade', ->
  return gulp.src componentDir + '**/index.jade'
    .pipe concat 'components.jade'
    .pipe gulp.dest componentDir

gulp.task 'coffee', ->
  return gulp.src componentDir + '**/index.coffee'
    .pipe concat 'components.coffee'
    .pipe gulp.dest componentDir

gulp.task 'scss', ->
  return gulp.src componentDir + '**/index.scss'
    .pipe concat 'components.scss'
    .pipe gulp.dest componentDir

gulp.task 'default', ['jade', 'coffee', 'scss']
