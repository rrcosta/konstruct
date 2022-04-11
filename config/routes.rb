Rails.application.routes.draw do
  devise_for :users

  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'public/index'

  # Defines the root path route ("/")
  root 'public#index'
end
