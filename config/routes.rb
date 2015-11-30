Rails.application.routes.draw do
  root 'hikes#home'
  resources :hikes do
    resources :trips
  end
  get 'hikers/:id/backpack', to: 'hikers#backpack', as: :backpack
  resources :hikers do
  end
end
