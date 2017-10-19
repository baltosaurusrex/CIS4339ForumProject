Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :posts
  resources :channels
  resources :homepages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
