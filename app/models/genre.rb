class Genre < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :genre_name, presence: true, uniqueness: true
end
