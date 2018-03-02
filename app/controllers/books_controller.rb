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
      flash[:message] ="Oops, sorry but you must login below or sign up here first before creating a new book."
      redirect to '/login'
    end
  end

  post '/books' do
    if logged_in?
      @book = current_user.books.build(title: params[:book][:title], topics: params[:book][:topics], year_published: params[:book][:year_published], author_id: params[:book][:author_id])
      if @book.year_published == ""
        @book.year_published = nil
      end
      @book.unknown_author

      # I'm not sure I need this since I have a line that says:
      # @book = current_user.books.build
      @book.user_id = session[:user_id]

      # I need to save the book here to instantiate the
      # code associating the new book to the join tables
      if @book.save
        params[:booklanguage][:langs].each do |details|
          BookLanguage.create(details)
        end

        BookLanguage.all.each do |booklanguage|
          if booklanguage.book_id == nil
            booklanguage.book_id = Book.last.id
            booklanguage.save
          end
        end

      #     Ok, so this 'genre' thingy is just the same as the 'language' one above.
        params[:bookgenre][:gens].each do |details|
          BookGenre.create(details)
        end

        BookGenre.all.each do |bookgenre|
          if bookgenre.book_id == nil
            bookgenre.book_id = Book.last.id
            bookgenre.save
          end
        end
        redirect to "/books"
      else
        flash[:message] = "Sorry, but that book title is already taken, please choose another title."
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
        redirect to '/books'
      end
    else
      redirect to '/login'
    end
  end

  patch '/books/:slugtitle' do
    if logged_in?
      @book = Book.find_by_slugtitle(params[:slugtitle])
      if @book.update(title: params[:book][:title], topics: params[:book][:topics], year_published: params[:book][:year_published], author_id: params[:book][:author_id]) != true
        flash[:message] = "Sorry, but that book title is already taken, please choose another title."
        redirect to '/books/new' #<= You can't redirect to the '/books/:slugtitle/edit for some reason...even if you are logged in as the user that created it.'
      end

      if @book.year_published == ""
        @book.year_published = nil #<= so this activates the <<hypothetical_date_of_publication>> method so if you don't know when the book was published, it will estimate that for you.
      end
      @book.unknown_author         #<= when you create a new author named "Unknown" and then you list
      @book.save

      # first, you have to delete all BookLanguages with associations of the current book, this is in the "edit" post, but not in the "create" post.
      BookLanguage.all.each do |booklanguage|
        if booklanguage.book_id == @book.id
          booklanguage.delete
          booklanguage.save
        end
      end

      params[:booklanguage][:langs].each do |details|
        BookLanguage.create(details)
      end

      BookLanguage.all.each do |booklanguage|
        if booklanguage.book_id == nil
          booklanguage.book_id = @book.id
          booklanguage.save
        end
      end

#     Ok, so this 'genre' thingy is just the same as the 'language' one above.
      BookGenre.all.each do |bookgenre|
        if bookgenre.book_id == @book.id
          bookgenre.delete
          bookgenre.save
        end
      end

      params[:bookgenre][:gens].each do |details|
        BookGenre.create(details)
      end

      BookGenre.all.each do |bookgenre|
        if bookgenre.book_id == nil
          bookgenre.book_id = @book.id
          bookgenre.save
        end
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
