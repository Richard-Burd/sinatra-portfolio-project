class UsersController < ApplicationController

  get '/signup' do
    if !logged_in?
      erb :'users/create_user'
    else
      redirect to '/index'
    end
  end



  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      flash[:signup_page_message] = "Sorry, can you make sure to fill out all three fields: Name, Email, and Password?"
      redirect to 'signup'
    end

    if !User.new(:username => params[:username], :password => params[:password]).valid?
      flash[:signup_page_message] ="Oops, sorry but that name is already taken!"
      redirect to 'signup'
    elsif !User.new(:email => params[:email], :password => params[:password]).valid?
      flash[:signup_page_message] ="Oops, sorry but that email address is already taken!"
      redirect to 'signup'
    else
      @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to '/library'
    end
  end


  get '/login' do
    if !logged_in?
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
      flash[:message_for_login_page] = "Oops, your username & password combo is incorrect; click here to sign in as a new user."
      erb :'users/login'
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
