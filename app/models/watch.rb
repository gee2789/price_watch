class Watch < ApplicationRecord
  has_many :portfolios
  has_many :accounts, through: :portfolios
end
