class Product < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :product_carts, dependent: :destroy
  has_many :order_details, dependent: :destroy
  has_many :disks, inverse_of: :product
  accepts_nested_attributes_for :disks, reject_if: :all_blank, allow_destroy: true
  belongs_to :label
  attachment :jacket_id
end
