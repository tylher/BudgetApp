# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :categories do
    resources :deals, only: %i[new create destroy]
  end
  resources :deals, except: %i[new create destroy]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/app', to: 'app#index'
  # Defines the root path route ("/")
  
  root 'app#index'
end
