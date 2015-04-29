Rails.application.routes.draw do
  
  root "pages#index"
  devise_for :users
  devise_for :locations
  # resources :locations
  get '/locations', to: 'location#index'
  get '/locations/:id', to: 'location#show'

  get '/groups', to: 'group#index'
  get '/groups/:id', to: 'group#show'

  get '/users', to: 'user#index'
  post '/users/:id', to: 'user#show'

  get '/groups/new', to: 'group#new', as: 'new_group'
  post 'groups/', to: 'group#create'

  patch 'join', to: 'group#join', as: 'join' #this route is a problem

end
