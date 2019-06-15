class Favorite < ApplicationRecord
  belongs_to :endusers
  belongs_to :favorites
end
