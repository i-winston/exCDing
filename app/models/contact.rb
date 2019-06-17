class Contact < ApplicationRecord
  has_many :contact_answers, dependent: :destroy
  belongs_to :enduser
end
