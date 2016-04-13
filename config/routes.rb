Rails.application.routes.draw do
  devise_for :user
  root 'projects#index'
  resources :projects do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
  end
  resources :tags, only: [:index, :show], param: 'not_id'
end

