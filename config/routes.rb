Rails.application.routes.draw do
  
  root "pages#index"
  devise_for :users
  resources :users
  devise_for :locations
  resources :locations
  devise_for :groups
  resources :groups

  # get '/locations', to: 'location#index'
  # get '/locations/:id', to: 'location#show'

  get '/users', to: 'user#index'
  post '/users/:id', to: 'user#show'

  # post '/groups/new', to: 'group#new', as: 'new_group'
  # post '/groups/', to: 'group#create'
  # get '/groups', to: 'group#index'
  # get '/groups/:id', to: 'group#show'

  patch 'join', to: 'user#join', as: 'join' #this route is a problem

end
