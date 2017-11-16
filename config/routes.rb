Rails.application.routes.draw do

  get 'pages/index'

  get 'pages/home'

  root to: 'pages#home'
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :comments
  resources :posts
  resources :channels
  resources :sessions, only: [:new, :create]
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create] do
  delete :destroy, on: :collection



  end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

