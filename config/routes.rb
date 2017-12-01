Rails.application.routes.draw do
  get 'baskets/show'

  devise_for :users
  resources :users, only: [ :show, :edit, :update, :destroy] do
  end
  resources :baskets, only: [ :show, :update ] do
    get "pay", on: :member
  end
  resources :products, only: [ :new, :create , :index, :show, :edit, :update, :destroy ]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
