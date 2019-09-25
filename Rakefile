ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'

# This contains many rake tasks (rake -T) included in Sinatra
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.

# This is a rake task that is not included in the Sinatra library above
desc 'starts up the console'
namespace :db do
  task :console do
    Pry.start
  end
end
