class ContactAnswer < ApplicationRecord
  belongs_to :contact
  belongs_to :admin
  enum contact_status: [:未返信, :返信済み]
end
