Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :create, :destroy, :update]

  resources :users, only: [:index, :create, :show]

  resources :carts, only: [:index, :show, :create, :destroy, :update]

  resources :stores, only: [:index, :show, :create, :destroy, :update]

  post '/signup', to: 'users#create'
  post '/login', to:'auth#login'
  get '/mall', to: 'stores#index'
  get '/store/:id', to: 'store#show'
  get '/auto_login', to: 'auth#auto_login'
  get '/showBasedOnOwner/:user_id', to: 'stores#show_based_on_owner'

end