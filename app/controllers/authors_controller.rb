class AuthorsController < ApplicationController
  get '/authors' do
    @authors = Author.all
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
