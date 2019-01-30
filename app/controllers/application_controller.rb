class ApplicationController < Sinatra::Base
  set :views, "app/views"

  get '/' do
    redirect to "/actors"
  end

  get '/actors' do
    @actors = Actor.all
    erb :index
  end

  # get '/actors/new' do
    
  #   erb :new
  # end
end
