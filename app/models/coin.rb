class Coin < ApplicationRecord
  has_one :transaction
  has_one :user
  end
