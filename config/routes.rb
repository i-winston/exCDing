Rails.application.routes.draw do

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
  resources :products, only: [:index, :show,]
  resources :product_carts , only: [:index, :create, :destroy, :update]  
  resources :orders , only: [:new, :index, :create, :destroy]
  resources :contacts , only: [:new, :create]  
  resources :artists, only: [:index, :create, :destroy]
  resources :labels, only: [:index, :create, :destroy]
  resources :genres, only: [:index, :create, :destroy]

  namespace :admins do
  resources :products , only: [:new, :create, :index, :edit, :update, :destroy, :show]
  resources :endusers , only: [:index, :show, :edit, :update, :destroy]
  resources :orders , only: [:index]  
  resources :contacts , only: [:index, :show, :create] 
  resources :homes , only: [:index] 
  end
end

