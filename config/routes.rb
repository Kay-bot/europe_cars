Rails.application.routes.draw do
  root :to => "cars#index" 
  resources :cars
  get 'cars/index'
  get 'cars/show'
  get 'cars/edit'
  get 'cars/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
