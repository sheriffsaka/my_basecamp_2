Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :users
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get 'home/about'
  root 'home#index'
end
