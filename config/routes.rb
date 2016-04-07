Rails.application.routes.draw do
  devise_for :user
  root 'projects#index'
  resources :projects do
    resources :likes, only: [:create, :destroy]
  end
  resources :comments, only: :create
end
