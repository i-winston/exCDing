Rails.application.routes.draw do

  resources :add_impressions_count_to_products
  post 'admins/products/new' => 'admins_products#create'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :endusers, controllers: {
    sessions: 'endusers/sessions',
    passwords: 'endusers/passwords',
    registrations: 'endusers/registrations'
  }

  root 'products#index'
  resources :endusers , only: [:edit, :show, :update, :destroy] 
  resources :product_carts , only: [:index, :create, :destroy, :update]  
  resources :orders , only: [:new, :index, :create, :destroy]
  resources :order_details , only: [:create, :destroy]
  resources :contacts , only: [:index, :new, :create]
  resources :user_addresses
  resources :artists, only: [:index, :create, :destroy]
  resources :labels, only: [:index, :create, :destroy]
  resources :genres, only: [:index, :create, :destroy]
  resources :products, only: [:index, :show,:new]do
    resource :favorites, only: [:create, :destroy]
  end

  namespace :admins do
  resources :products , only: [:new, :create, :index, :edit, :update, :destroy, :show]
  resources :endusers , only: [:index, :show, :edit, :update, :destroy]
  resources :orders , only: [:index, :update]  
  resources :contacts , only: [:index, :show, :create] 
  resources :homes , only: [:index] 
  end
end

