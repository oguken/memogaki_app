Rails.application.routes.draw do
  devise_for :users
  root to: 'memogakis#index'
  resources :memogakis do
    resources :plans, only: :create
  end
  resources :users, only: :show
end
