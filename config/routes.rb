Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root to: 'videos#index'
  resources :videos, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
    resource :favorites, only: [:create, :destroy, :show]
  end
  resources :users, only: [:show]
end
