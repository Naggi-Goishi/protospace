Rails.application.routes.draw do

  devise_for :users
  root 'top#index'
  resources :project, only: [:show, :index, :new]

end
