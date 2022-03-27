Rails.application.routes.draw do
  resources :addresses
  get 'public/index'
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'public#index'
end
