class LocationsController < ApplicationController
  get '/locations' do
    erb :'locations'
  end
end
