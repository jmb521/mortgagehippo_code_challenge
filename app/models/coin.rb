class Coin < ApplicationRecord
  has_one :transactions
  has_one :users
  end
