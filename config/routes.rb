Rails.application.routes.draw do
  get 'posts/index' => 'posts#index' 
  resources :posts

  get 'home/index'
  root :to => 'cars#index'
  get 'add_car', to:'cars#new', as:'add_car'
  get '/all_cars' => 'cars#all_cars'
  delete '/cars/:id' => 'cars#delete_car'
  get '/cars/:id/edit' =>'cars#edit'
  resources :cars

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  
end
