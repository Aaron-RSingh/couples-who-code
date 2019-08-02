Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/interests', to: 'interests#index'
  #user
  get '/', to: 'users#home', as: 'users'
  post '/', to: 'users#create'
  get '/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'

  #like
  get '/likes', to: "likes#new", as: 'likes'
  post '/likes', to: "likes#create"

  #session
  get '/login', to: "sessions#new", as: 'login'
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy", as: "logout"

  #connection
  get '/connections/new', to: "connections#new", as: "new_connection"
  post '/connections', to: "connections#create"

  #meetup
  get '/meetups', to: 'meetups#index'

end
