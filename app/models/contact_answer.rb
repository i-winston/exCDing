class ContactAnswer < ApplicationRecord
  belongs_to :contact
  belongs_to :admin
end
