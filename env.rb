require 'rubygems'
require 'bundler'

Encoding.default_external = 'utf-8'

$ENV = ENV['RACK_ENV'] ||= 'development'
$APP_ROOT = ENV['APP_ROOT'] ||= File.expand_path('..', __FILE__)

Bundler.setup
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

$LOAD_PATH.unshift File.join(ENV['APP_ROOT'], 'lib')

Dir[ENV['APP_ROOT'] + '/initializers/**/*.rb'].each do |file|
  require file
end