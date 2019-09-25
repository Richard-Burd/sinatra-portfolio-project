require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    use Rack::Flash
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "fwitter_secret"
  end

  get '/' do
    erb :index
  end

  get '/validation-failure' do
    erb :'display_validation_failure'
  end

  get '/library' do
    erb :library, :layout => :library_layout
  end

  helpers do
    # all ruby objects will now inherit from anything defined in this Object class
    # class Object
    #   def true?
    #     !!self
    #   end
    # end
    # now I can do the following:
    # current_user.true?
    # ...and I will get a return value of "true" if there is a current user
    # otherwise I will have to use the double negative: !!
    # as is shown below:
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

  end
end
