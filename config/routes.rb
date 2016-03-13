Rails.application.routes.draw do

  devise_for :user
  root 'projects#index'
  resources :projects, only: [:show, :index, :new, :create]

end
