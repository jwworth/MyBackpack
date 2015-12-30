Rails.application.routes.draw do
  root 'hikes#home'
  resources :hikes do
    resources :trips
  end
  get 'hikers/:id/backpack', to: 'hikers#backpack', as: :backpack
  resources :hikers do
  end

  resources :sessions, :only => [:new, :create]

  get "signup", to: "hikers#new", as: :signup
  get "login", to: "sessions#new", as: :login

  delete "/logout", to: "sessions#destroy", as: :logout
end
