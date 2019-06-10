class Song < ApplicationRecord
	belongs_to :disks
	belongs_to :artists
	belongs_to :genres
end
