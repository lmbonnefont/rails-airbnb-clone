Rails.application.routes.draw do
  devise_for :users
  resource :users, only: [ :show, :destroy]
  resources :products, only: [ :new, :create , :index, :show, :edit, :update, :destroy ]
  resource :profile, only: :show
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
