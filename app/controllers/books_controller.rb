class BooksController < ApplicationController
  get '/books' do
    @books = Book.all
    erb :'books/books'
  end

  get '/books/new' do
    @authors = Author.all # this is required to list out all existing authors
    if logged_in?
      erb :'books/create_book'
    else
      redirect to '/login'
    end
  end

  get '/books/:slugtitle' do
    @books = Book.find_by_slugtitle(params[:slugtitle])
    erb :'books/show_book'
  end

  post '/books/new/book/address/here' do
    @book = Book.create(params[:title])
  #  @books = Book.find(params[:slugtitle])
  #  @books.update(params["book"])
  #  if !params["author"]["name"].empty?
  #    @books.author = Author.create(name: params["author"]["name"])
  #  end
  #  @books.save
  #  redirect "books/#{@books.title.slugtitle}"
  end
end
