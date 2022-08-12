Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :deals, only: [:new,:create,:destroy]
  end
  resources :deals, except: [:new,:create,:destroy]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "app#index"
  
end
