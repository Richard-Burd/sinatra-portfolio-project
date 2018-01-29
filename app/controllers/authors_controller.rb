class AuthorsController < ApplicationController
  get '/tweets' do
    if logged_in?
#     @tweets = Tweet.all  <= this is irrelevant
      erb :'tweets/tweets'
    else
      redirect to '/login'
    end
  end
end
