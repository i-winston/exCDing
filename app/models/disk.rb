class Disk < ApplicationRecord
	has_many :songs, dependent: :destroy
	belongs_to :products
end
