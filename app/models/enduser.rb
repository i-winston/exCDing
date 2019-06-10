class Enduser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :favorites, dependent: :destroy
   has_many :product_carts, dependent: :destroy
   has_many :order, dependent: :destroy
   has_many :user_addresses, dependent: :destroy
   has_many :contacts, dependent: :destroy
end
