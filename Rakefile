ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.

desc 'starts up the console'
namespace :db do
  task :console do
    Pry.start
  end
end
