Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/new'
  namespace :admins do
    get 'contacts/index'
    get 'contacts/show'
  end
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
  resources :pridycts, only: [:index, :show]
  resources :product_carts , only: [:index, :create, :destroy]  
  resources :orders , only: [:create, :destroy]
  resources :contact , only: [:new, :create]  
  resources : , only: [:] 
  resources : , only: [:] 
  resources : , only: [:] 
  resources : , only: [:] 
  resources : , only: [:] 