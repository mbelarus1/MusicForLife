Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'index', to: 'pages#index'
  get 'profile', to: 'pages#profile'
  get 'product_detail', to: 'pages#product_detail'
end
