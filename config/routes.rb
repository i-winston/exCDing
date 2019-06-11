Rails.application.routes.draw do
  namespace :admins do
    get 'homes/index'
  end
  namespace :admins do
    get 'contacts/index'
    get 'contacts/show'
  end
  namespace :admins do
    get 'orders/index'
  end
  namespace :admins do
    get 'endusers/index'
    get 'endusers/show'
    get 'endusers/edit'
  end
  namespace :admins do
    get 'products/new'
    get 'products/index'
    get 'products/edit'
    get 'products/show'
  end
  #get 'endusers/edit'
  #get 'endusers/show'
  #get 'endusers/index'
  #get 'endusers/new'
  get 'contacts/new'
  get 'contacts/index'
  get 'contacts/show'
  get 'orders/new'
  get 'orders/index'
  get 'product_carts/index'
  get 'favorites/index'
  get 'products/index'
  get 'products/show'
  get 'products/edit'
  get 'products/new'
  devise_for :admins
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
