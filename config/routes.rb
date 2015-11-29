Rails.application.routes.draw do
  root 'hikes#home'
  resources :hikes do
  end
  resources :hikers do
  end
  resources :trips do
  end
end
