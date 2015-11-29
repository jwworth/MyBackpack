Rails.application.routes.draw do
  root 'hikes#home'
  resources :hikes do
    resources :trips 
  end
  resources :hikers do
  end
end
