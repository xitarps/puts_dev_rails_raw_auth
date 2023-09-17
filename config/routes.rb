Rails.application.routes.draw do
  root 'home#index'
  
  resources :articles

  # resources :users

  get 'singnup', to: 'users#new'
  get 'singnup', to: 'users#create'
  get 'singnup', to: 'users#update'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'
end
