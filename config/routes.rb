Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :text_posts
  root 'visitors#index'
  get 'posts' => 'text_posts#new'

end
