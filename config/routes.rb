Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/interests', to: 'interests#index'

  get '/', to: 'users#home', as: 'users'
  post '/', to: 'users#create'
  get '/new', to: 'users#new', as: 'new_user'
  get '/login', to: "sessions#new", as: 'login'
  get '/likes', to: "likes#index", as: 'likes'
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy", as: "logout"
end
