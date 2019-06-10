Rails.application.routes.draw do
  get 'home/index'
  get 'lebels/create'
  get 'genres/create'
  get 'contacts/new'
  get 'orders/new'
  get 'orders/index'
  get 'productsa_carts/index'
  get 'favorites/index'
  get 'products/index'
  get 'products/show'
  get 'endusers/show'
  get 'endusers/edit'
  devise_for :admins
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
