class Price < ApplicationRecord
  has_many :histories
  has_many :watches, through: :histories
end
