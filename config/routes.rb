Rails.application.routes.draw do

  devise_for :users
  root 'top#index'
  resources :projects, only: [:show, :index, :new]

end
