var gulp = require( 'gulp' );
var tmpl = require( 'gulp-template' );
var shasum = require( 'shasum' );
var path = require( 'path' );
var spawn = require( 'child_process' ).spawn;

var version = require( './package.json' ).version;

gulp.task( 'default', function () {
  tar = spawn( 'tar', [
    '-cpvzf',
    'dist/buildr-' + version + '.tar.gz',
    'buildr'
  ] );
  tar.on( 'close', function ( code ) {
    var version = require( './package.json' ).version;
    var filename = './dist/buildr-' + version + '.tar.gz';
    var contents = require( 'fs' ).readFileSync( filename );
    gulp.src( './tmpl/buildr.rb' )
      .pipe( tmpl( {
                     version : version,
                     shasum  : shasum( contents )
                   } ) )
      .pipe( gulp.dest( '.' ) );
  } );
} );
