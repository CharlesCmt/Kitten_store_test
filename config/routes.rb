Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root 'items#index'
  resources :items
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
