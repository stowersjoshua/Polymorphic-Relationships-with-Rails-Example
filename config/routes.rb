Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'visitors#index'

end
