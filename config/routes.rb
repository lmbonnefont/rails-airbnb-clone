Rails.application.routes.draw do
resources :users do
  resources :products, only: [ :new, :create ]
end

get 'products', to: 'products#index', as: :displayallproducts
get 'products/:id', to: 'products#show', as: :showproduct

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
