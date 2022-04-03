Rails.application.routes.draw do
  resources :addresses
  resources :people

  get 'public/index'
  # Defines the root path route ("/")
  root 'public#index'
end
