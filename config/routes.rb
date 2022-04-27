Rails.application.routes.draw do
  devise_for :users
  root to: 'videos#index'
  resources :videos, only: [:new, :create, :show, :edit, :update, :destroy]
end
