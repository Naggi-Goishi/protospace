Rails.application.routes.draw do

  devise_for :user
  root 'top#index'
  resources :projects, only: [:show, :index, :new]

end
