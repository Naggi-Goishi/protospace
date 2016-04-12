Rails.application.routes.draw do
  devise_for :user
  root 'projects#index'
  resources :projects do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
  end
  resources :tags, only: [:index, :show]
  get 'tags/(:name)', to: 'tags#show'
end

