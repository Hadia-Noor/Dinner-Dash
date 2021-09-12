Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
     resources :food_items, only: [:index, :create, :destroy, :update]
    end
  end
  resources :order_items
  resources :comments
  resources :orders
  resources :food_items
  resources :categories
  get 'cart' => 'cart#show'
  get 'menu/index'
  devise_for :users
  root 'pages#home'
  get 'comments/index'
  get 'catering' => 'pages#catering'
  get 'info' => 'pages#info'
  get 'menu' => 'menu#index'
  get 'review' => 'comments#index'
  get 'search' => 'menu#search'
  get 'food_items' => 'food_items#index'
  get 'orders' => 'orders#index'
  #root 'welcome#index'
end
