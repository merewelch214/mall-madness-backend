Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :products, only: [:index, :show, :create, :delete]

  resources :users, only: [:index, :create, :show]

  resources :carts, only: [:index, :show, :create, :delete]

  resources :stores, only: [:index, :show, :create, :delete]

  # resources :users do
  #   resources :carts do
  #     resources :products, only: [:index, :show, :delete]
  #   end
  # end

  # resources :users do
  #   resources :stores do 
  #     resources :products, only: [:index, :show]
  #   end
  # end



end


# resources :carts, only: [:index, :create]
# resources :products, only: [:index, :create, :update, :destroy]
# resources :stores, only: [:index, :create]
# resources :users, only: [:index, :create]