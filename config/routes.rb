Rails.application.routes.draw do
  resources :requests
  resources :charges

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]

  devise_for :users
  resources :moves
  resources :users
  root to: "moves#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
