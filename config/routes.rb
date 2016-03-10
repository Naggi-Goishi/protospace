Rails.application.routes.draw do

  devise_for :user
  root 'project#index'
  resources :project, only: [:show, :index, :new]

end
