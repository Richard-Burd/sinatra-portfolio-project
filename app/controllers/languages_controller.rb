class LanguagesController < ApplicationController
  get '/languages' do
    erb :'languages'
  end
end
