Rails.application.routes.draw do

  devise_for :user
  root 'projects#index'
  resources :projects

end
