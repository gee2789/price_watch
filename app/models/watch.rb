class Watch < ApplicationRecord
  has_many :portfolios
  has_many :accounts, through: :portfolios
  has_many :histories
  has_many :prices, through: :histories
end
