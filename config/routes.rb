Rails.application.routes.draw do
  
  root "pages#index"
  devise_for :users
  get '/locations', to: 'location#index'

end
