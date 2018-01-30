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

  get '/authors/:slug' do
    @author = Author.find_by_slug(params[:slug])
    erb :'authors/show_author'
  end
end
