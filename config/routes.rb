Rails.application.routes.draw do

  root 'top#index'

  get  '/top'               =>    'top#index'
  get  '/proto'             =>    'proto#index'
  get  '/proto/new'         =>    'proto#new'
  get  '/user'              =>    'user#index'
  get  '/user/new'          =>    'user#new'
  get  '/user/edit'         =>    'user#edit'
  get  '/login'             =>    'login#index'

end
