class ContactAnswer < ApplicationRecord
  belongs_to :contacts
  belongs_to :admins
end
