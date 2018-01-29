class AuthorsController < ApplicationController
  get '/tweets' do
    if logged_in?
#     @tweets = Tweet.all  <= this is irrelevant
      erb :'tweets/tweets'
    else
      redirect to '/login'
    end
  end

  get '/authors' do
    erb :'authors/authors'
  end

  get '/authors/new' do
    if logged_in?
      erb :'authors/create_author'
    else
      redirect to '/login'
    end
  end
end
