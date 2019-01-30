class ApplicationController < Sinatra::Base
  set :views, "app/views"

  #puts user at the actors index
  get '/' do
    redirect to "/actors"
  end

  #gets all actors into index
  get '/actors' do
    @actors = Actor.all
    erb :index
  end

  #form to create new actor
  get '/actors/new' do
    erb :new
  end

  #create actor with a movie
  post '/actors' do
    actor = Actor.find_or_create_by(name: params[:name])
    params[:film].each do |f|
      if f[:title] != ""
        Film.create(title: params[:title],
                    year: params[:year],
                    genre: params[:genre])
      end
    end
    redirect "/actors/#{actor.id}"
  end

  get '/actors/:id' do
    @actor = Actor.find(params[:id])
    erb :show
  end
end
