class UsersController < ApplicationController

  get '/signup' do
    if !logged_in?
      flash[:message] = "Create an account below to add new items to the library catalog."
      erb :'users/create_user'
    else
      redirect to '/index'
    end
  end



  post '/signup' do
    # raise params.inspect
    # params = {"username"=>"Akiva", "email"=>"akiva@yahoo.com", "password"=>"qwerty"}
    # params = {"username"=>"Nancy", "email"=>"nancy@yahoo.com", "password"=>"asdf"}
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      flash[:message] = "Sorry, can you make sure to fill out all three fields: Name, Email, and Password?"
      erb :'users/create_user'
      # redirect to '/signup'
    elsif logged_in?
      redirect to '/library'
    elsif
      user = User.find_by(:username => params[:username])
      if
        user.username == params[:username] && user.email == params[:email]
        "Oops, sorry but that name and password are already taken!"
      end

    else
      @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to '/library'
    end
  end


  get '/login' do
    if !logged_in?
      flash[:message] = "Please sign-up here if you are a new user."
      erb :'users/login'
    else
      redirect '/library'
    end
  end

  post '/login' do
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/library"
    else
      erb :'users/login_error'
    end
  end

  get '/logout' do
    if logged_in?
      session.destroy
      redirect to '/login'
    else
      redirect to '/'
    end
  end
end
