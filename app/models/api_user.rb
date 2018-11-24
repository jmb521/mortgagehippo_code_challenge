class ApiUser < ApplicationRecord
  has_many :transactions
  has_many :coins, through: :transactions
end
