class Label < ApplicationRecord
	has_many :products, dependent: :destroy
	validates :lebel_name, presence: true, uniqueness: true
end
