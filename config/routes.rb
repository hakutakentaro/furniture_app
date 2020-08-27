Rails.application.routes.draw do
  resources :areas
  resources :furnitures
  resources :rooms
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"

  # simurator
  get '/simulator/:room_id', to: 'simulator#index'
  
end
