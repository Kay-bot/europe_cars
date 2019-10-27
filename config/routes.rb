Rails.application.routes.draw do
  
  root :to => 'cars#index'
  get 'add_car', to:'cars#new', as:'add_car'
  delete '/cars/:id' => 'cars#delete_car'
  resources :cars

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  
end
