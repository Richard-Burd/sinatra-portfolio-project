class BooksController < ApplicationController
  get '/books' do
    @books = Book.all
    erb :'books/books'
  end

  get '/books/new' do
    @authors = Author.all # this is required to list out all existing authors
    @genres = Author.all # this is required to list out all existing genres
    @languages = Author.all # this is required to list out all existing languages
    if logged_in?
      erb :'books/create_book'
    else
      redirect to '/validation-failure'
    end
  end

  get '/books/:slugtitle' do
    @book = Book.find_by_slugtitle(params[:slugtitle])
    erb :'books/show_book'
  end

  post '/books' do
#    raise params.inspect
    @unknown_author = Author.create(name: params[:author][:name], birth_date: params[:author][:birth_date], death_date: params[:author][:death_date]) # I need this in order to assign an "unknown author"
    @book = Book.create(title: params[:book][:title], topics: params[:book][:topics], year_published: params[:book][:year_published], author_id: params[:book][:author_id])
    @unknown_author = @book.author
#    @unknown_author.unknown_author # <= this method renames the "unknown" author to include the new book name that was just created.
#    @unknown_author.save
#    @book.save
#  This method below is in the seed data that does the same thing to all existing authors with an "unknown" or nil name.
#    Book.all.each do |book|
#      book.unknown_author
#    end
    redirect :'books'
  end
end
