Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [ :new, :create , :index, :show, :edit, :update, :destroy ]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
