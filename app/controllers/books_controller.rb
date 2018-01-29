class BooksController < ApplicationController
  get '/books/new' do
    if logged_in?
      erb :'books/create_book'
    else
      redirect to '/login'
    end
  end
end
