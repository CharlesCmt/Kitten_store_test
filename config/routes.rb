Rails.application.routes.draw do
  get 'cards/show'
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root 'shops#index'
  resources :shops, only:[:index, :show]
  resources :items
  resources :order_items
  resource :cards, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
