class LanguagesController < ApplicationController
  get '/languages' do
    @languages = Language.all
    erb :'languages'
  end
end
