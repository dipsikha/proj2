Rails.application.routes.draw do
  
  root "pages#index"
  devise_for :users
  devise_for :locations
  # resources :locations
  get '/locations', to: 'location#index'
  post '/locations/:id', to: 'location#show'

end
