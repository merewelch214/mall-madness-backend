Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :carts, only: [:index, :create]
  resources :products, only: [:index, :create, :update, :destroy]
  resources :stores, only: [:index, :create]
  resources :users, only: [:index, :create]

end
