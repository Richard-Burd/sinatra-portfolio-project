require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "password_security"
  end

  helpers do
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(:email => session[:email]) if session[:email]
    end
  end
end
