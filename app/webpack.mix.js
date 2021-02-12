const mix = require('laravel-mix');
require('dotenv').config()
require('mix-tailwindcss')

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your WordPlate application. By default, we are compiling the Sass
 | file for your application, as well as bundling up your JavaScript files.
 |
 */

const theme = process.env.WP_THEME

mix.setResourceRoot('../')
mix.setPublicPath(`public/themes/${theme}/assets`)

mix.js('resources/scripts/app.js', 'scripts')
   .sass('resources/styles/app.scss', 'styles')
   .tailwind()

/**
 * Pour plus de configurations
 * https://browsersync.io/docs/options
 */
mix.browserSync({
  proxy: '127.0.0.1:1337',
  open: false,
  notify: false,
  files: [
    "public/themes/wordplate/assets/styles/app.css",
    "public/themes/wordplate/assets/scripts/app.js",
    "public/themes/wordplate/**/*.php",
    "public/themes/wordplate/**/*.twig"
  ]
})
