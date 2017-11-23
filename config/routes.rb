Rails.application.routes.draw do

  get 'users/index'

  get 'users/import'

  root to: 'pages#home'
  get 'pages/index'

  post 'posts/search' => 'posts#search', as: 'search_posts'
  get 'all_post_updates/:id' => 'post_updates#index', as: 'all_post_updates'
  get 'post_updates/new/:id' => 'post_updates#new', as: 'new_post_update'

  post 'channels/search' => 'channels#search', as: 'search_channels'
  get 'all_channel_updates/:id' => 'chanel_updates#index', as: 'all_channel_updates'
  get 'channel_updates/new/:id' => 'channel_updates#new', as: 'new_channel_update'


  post 'comments/search' => 'comments#search', as: 'search_comments'
  get 'all_comment_updates/:id' => 'comment_updates#index', as: 'all_comment_updates'
  get 'comment_updates/new/:id' => 'comment_updates#new', as: 'new_comment_update'
  get 'pages/home'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  resources :users do
    collection { post :import}
  end

  resources :comments
  resources :posts
  resources :channels
  resources :sessions, only: [:new, :create]
#  resources :users, only: [:new, :create]
 # resources :sessions, only: [:new, :create] do
 # delete :destroy, on: :collection

 # end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

