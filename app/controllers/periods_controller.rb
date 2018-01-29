class PeriodsController < ApplicationController
  get '/periods' do
    @periods = Period.all
    erb :'periods'
  end
end
