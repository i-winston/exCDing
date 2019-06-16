class Enduser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :first_name_kana, presence: true, format: {with: /\A[ァ-ヶー－]+\z/}
  validates :family_name, presence: true
  validates :family_name_kana, presence: true, format: {with: /\A[ァ-ヶー－]+\z/}
  validates :email, presence: true
  validates :registration_address, presence: true
  validates :registration_postal_code, presence: true , format: {with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/}
  validates :phone_number, presence: true , format: {with: /\A(((0(\d{1}[-]?\d{4}|\d{2}[-]?\d{3}|\d{3}[-]?\d{2}|\d{4}[-]?\d{1}|[5789]0[-]?\d{4})[-]?)|\d{1,4}\-?)\d{4}|0120[-]?\d{3}[-]?\d{3})\z/}
end
