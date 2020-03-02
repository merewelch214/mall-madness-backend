Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :create, :delete]

  resources :users, only: [:index, :create, :show]

  resources :carts, only: [:index, :show, :create, :delete]

  resources :stores, only: [:index, :show, :create, :delete]

  post '/signup', to: 'users#create'
  post '/login', to:'auth#login'
  get '/mall', to: 'stores#index'
  get '/store/:id', to: 'store#show'

end