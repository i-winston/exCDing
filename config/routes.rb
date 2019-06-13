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
  resources :products, only: [:index, :show]
  resources :product_carts , only: [:index, :create, :destroy]  
  resources :orders , only: [:new, :create, :destroy]
  resources :contact , only: [:new, :create]  
  resources :artists , only: [:create] 
  resources :genres , only: [:create] 
  resources :lebels , only: [:create] 

  namespace :admins do
  resources :products , only: [:new, :create, :index, :edit, :update, :destroy, :show]
  resources :endusers , only: [:index, :show, :edit, :update]
  resources :orders , only: [:index]  
  resources :contacts , only: [:index, :show, :create] 
  resources :homes , only: [:index] 
  end
end
