Rails.application.routes.draw do
  get 'messages/new'

  get 'messages/create'

  get 'messages/edit'

  get 'messages/update'

  devise_for :users
  resources :users, only: [ :show, :edit, :update, :destroy]
  resources :products, only: [ :new, :create , :index, :show, :edit, :update, :destroy ]
  resources :messages, only: [:new, :create, :edit, :update]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
