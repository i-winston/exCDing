class Favorite < ApplicationRecord
  belongs_to :enduser
  belongs_to :product
end
