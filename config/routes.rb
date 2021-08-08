Rails.application.routes.draw do

  resources :order_items
  get 'cart' => 'cart#show'
  resources :categories
  get 'menu/index'
  devise_for :users
  root 'pages#home'
  resources :food_items
  get 'comments/index'
  resources :comments
  resources :orders
  get 'catering' => 'pages#catering'
  get 'info' => 'pages#info'
  get 'menu' => 'menu#index'
  get 'review' => 'comments#index'
  get 'search' => 'menu#search'
  get 'food_items' => 'food_items#index'
  get 'orders' => 'orders#index'
  root 'welcome#index'
  end
