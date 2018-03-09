class BooksController < ApplicationController
  get '/books' do
    @books = Book.all
    erb :'books/books'
  end

  get '/books/new' do
    @authors = Author.all # this is required to list out all existing authors
    @genres = Genre.all # this is required to list out all existing genres
    @languages = Language.all # this is required to list out all existing languages
    if logged_in?
      erb :'books/create_book'
    else
      flash[:message_for_login_page] ="Oops, sorry but you must login below or sign up here first before creating a new book."
      redirect to '/login'
    end
  end

  post '/books' do
    if logged_in?
      if Book.new(params[:book]).valid?
        @book = current_user.books.build(params[:book])
        @book.unknown_author
        @book.save
        redirect to "/books"
      else
        flash[:message_for_new_book_page] = "Sorry, but that book title is already taken, please choose another title."
        redirect to "/books/new"
      end
    end
  end

  get '/books/:slugtitle' do
    @book = Book.find_by_slugtitle(params[:slugtitle])
    erb :'books/show_book'
  end

  get '/books/:slugtitle/edit' do # This ie exactly the same as "'/books/new' do" above
    @authors = Author.all # this is required to list out all existing authors
    @genres = Genre.all # this is required to list out all existing genres
    @languages = Language.all # this is required to list out all existing languages
    if logged_in?
      @book = Book.find_by_slugtitle(params[:slugtitle])
      if @book && @book.user == current_user
        erb :'books/edit_book'
      else
        flash[:books_index_page_message] = "Sorry, but you don't have permission to edit a book you didn't create."
        redirect to '/books'
      end
    else
      redirect to '/login'
    end
  end

  patch '/books/:slugtitle' do
    if logged_in?
      @book = Book.find_by_slugtitle(params[:slugtitle])
      if @book && @book.user == current_user
        if @book.update(params[:book]) != true
          flash[:message_for_new_book_page] = "Sorry, but that book title is already taken, please choose another title."
          redirect to '/books/new'
        end
        @book.unknown_author
      else
        flash[:message_for_login_page] = "Sorry, but you don't have permission to edit a book you didn't create."
        erb :'users/login'
      end
      erb :'books/show_book'
    end
  end

  delete '/books/:slugtitle/delete' do
    if logged_in?
      @book = Book.find_by_slugtitle(params[:slugtitle])
      if @book.user_id == current_user.id
        @book.delete
        redirect to '/books'
      else
        redirect to '/books'
      end
    else
      redirect to '/login'
    end
  end
end
