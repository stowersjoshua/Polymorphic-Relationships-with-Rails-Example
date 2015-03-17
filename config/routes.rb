Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :text_posts
  resources :image_posts
  root 'visitors#index'
  get 'messages' => 'visitors#text'
  get 'new_text' => 'text_posts#new'
  get 'new_image' => 'image_posts#new'

end
