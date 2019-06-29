class Contact < ApplicationRecord
  has_many :contact_answers, inverse_of: :contact
  belongs_to :enduser

  accepts_nested_attributes_for :contact_answers, reject_if: :all_blank, allow_destroy: true

  enum status: [:未返信, :返信済み]
end
