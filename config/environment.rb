ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'capybara/dsl'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite" #=> defines the db folder location
# :database => "db/development.sqlite" alternatively
# see :3:08 / 1:28:48 of this video:
# https://www.youtube.com/watch?v=_S1s6R-_wYc
)

require_all 'app'
require_all 'lib'
