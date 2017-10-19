Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/home'

  root to: 'pages#home'
  resources :users
  resources :comments
  resources :posts
  resources :channels

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
