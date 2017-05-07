class Portfolio < ApplicationRecord
  belongs_to :account
  belongs_to :watch
end
