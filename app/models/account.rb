class Account < ApplicationRecord
  has_many :portfolios
  has_many :watches, through: :portfolios

  validates :email, presence: true, uniqueness: true, length: {maximum: 75}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, length: {in: 1..20}

  has_secure_password
end
