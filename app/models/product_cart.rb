class ProductCart < ApplicationRecord
	belongs_to :endusers
	belongs_to :products
end
