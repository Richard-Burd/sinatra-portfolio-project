class BooksController < ApplicationController
  get '/books' do
    @books = Book.all
    erb :'books/books'
  end

  get '/books/new' do
    if logged_in?
      erb :'books/create_book'
    else
      redirect to '/login'
    end
  end

  get '/books/:slugtitle' do
    @book = Book.find_by_slugtitle(params[:slugtitle])
    erb :'books/show_book'
  end
end
