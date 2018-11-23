Rails.application.routes.draw do
  resources :products
  devise_for :users
  
  authenticated :user do
  	root 'home#index'
  end

  unauthenticated :user do
  	root 'home#unregistered'
  end

end