Rails.application.routes.draw do
  resources :requests
  resources :charges
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]

  devise_for :users
  resources :moves
  resources :users
  root to: "moves#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
