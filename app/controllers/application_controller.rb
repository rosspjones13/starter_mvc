class ApplicationController < Sinatra::Base
  set :views, "app/views"

  #puts user at the actors index
  get '/' do
    redirect "/actors"
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

  #shows a page of an actor and their films
  get '/actors/:id' do
    @actor = Actor.find(params[:id])
    erb :show
  end

  #form to edit an actor's info
  get '/actors/:id/edit' do
    @actor = Actor.find(params[:id])
    erb :edit
  end

  #edit actors name
  patch '/actors/:id' do
    @actor = Actor.find(params[:id])
    @actor.update(params[:name])
    redirect "/actors/#{actor.id}"
  end

  #destroy an actor
  delete '/actors/:id' do
    Actor.destroy(params[:id])
    redirect "/actors"
  end
end
