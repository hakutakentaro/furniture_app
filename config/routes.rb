Rails.application.routes.draw do
  resources :furnitures do
   resources :areas
  end
  resources :rooms do
   resources :areas
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
end
