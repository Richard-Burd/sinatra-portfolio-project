require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride # This little ditty allows the Sinatra middleware to send patch and delete requests
use UsersController
use AuthorsController
use BooksController
use PeriodsController
use LanguagesController
use LocationsController
use GenresController
run ApplicationController
