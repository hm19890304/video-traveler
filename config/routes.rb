Rails.application.routes.draw do
  devise_for :users
  root to: 'videos#index'
  resources :videos, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show]
end
