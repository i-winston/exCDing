class Product < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :product_carts, dependent: :destroy
	has_many :order_details, dependent: :destroy
	has_many :disks, dependent: destroy:
	has_many :labels, dependent: destroy:
end
