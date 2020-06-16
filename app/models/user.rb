class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :cards, dependent: :destroy 
end
