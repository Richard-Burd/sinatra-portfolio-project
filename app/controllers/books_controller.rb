class BooksController < ApplicationController
  get '/books' do
    @books = Book.all
    erb :'books/books'
  end

  get '/books/new' do # This ie exactly the same as "post '/books/:slugtitle/edit' do" below
    @authors = Author.all # this is required to list out all existing authors
    @genres = Genre.all # this is required to list out all existing genres
    @languages = Language.all # this is required to list out all existing languages
    if logged_in?
      erb :'books/create_book'
    else
      redirect to '/validation-failure'
    end
  end

  get '/books/:slugtitle/edit' do
    @book = Book.find_by_slugtitle(params[:slugtitle])
    redirect to '/validation-failure'
  end

  post '/books/:slugtitle/edit' do # This ie exactly the same as "'/books/new' do" above
    @authors = Author.all # this is required to list out all existing authors
    @genres = Genre.all # this is required to list out all existing genres
    @languages = Language.all # this is required to list out all existing languages

    @book = Book.find_by_slugtitle(params[:slugtitle])
    if logged_in?
      erb :'books/edit_book'
    else
      redirect to '/validation-failure'
    end
  end

  post '/books/:slugtitle' do # this recieves the post action of "edit_book.erb"
#   raise params.inspect
    @book = Book.find_by_slugtitle(params[:slugtitle])
    @book.update(title: params[:book][:title], topics: params[:book][:topics], year_published: params[:book][:year_published], author_id: params[:book][:author_id])
    if @book.year_published == ""
      @book.year_published = nil #<= so this activates the <<hypothetical_date_of_publication>> method so if you don't know when the book was published, it will estimate that for you.
    end
    @book.unknown_author         #<= when you create a new author named "Unknown" and then you list
    @book.user_id = session[:user_id]
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

#   Ok, so this 'genre' thingy is just the same as the 'language' one above.
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

  get '/books/:slugtitle' do
    @book = Book.find_by_slugtitle(params[:slugtitle])
    erb :'books/show_book'
  end

  post '/books' do # this recieves the post action of "create_book.erb"
    @book = Book.new(title: params[:book][:title], topics: params[:book][:topics], year_published: params[:book][:year_published], author_id: params[:book][:author_id])
    if @book.year_published == ""
      @book.year_published = nil #<= so this activates the <<hypothetical_date_of_publication>> method so if you don't know when the book was published, it will estimate that for you.
    end
    @book.unknown_author         #<= when you create a new author named "Unknown" and then you list
    @book.user_id = session[:user_id]
    @book.save

    params[:booklanguage][:langs].each do |details|
      BookLanguage.create(details)
    end

    BookLanguage.all.each do |booklanguage|
      if booklanguage.book_id == nil
        booklanguage.book_id = Book.last.id
        booklanguage.save
      end
    end

#   Ok, so this 'genre' thingy is just the same as the 'language' one above.
    params[:bookgenre][:gens].each do |details|
      BookGenre.create(details)
    end

    BookGenre.all.each do |bookgenre|
      if bookgenre.book_id == nil
        bookgenre.book_id = Book.last.id
        bookgenre.save
      end
    end
  #  @booklanguage = BookLanguage.create(book_id: @book.id, language_id: params[:booklanguage]["language.id"])  <= This only would work if there was one book
  #  @bookgenre = BookGenre.create(book_id: @book.id, genre_id: params[:bookgenre]["genre.id"])                 <= This only would work if there was one genre
    redirect to :'books'
  end
end
