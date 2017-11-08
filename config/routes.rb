resources :sessions, only: [:new, :create] do
  delete :destroy, on: :collection
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

