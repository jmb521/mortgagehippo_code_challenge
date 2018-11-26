class Coin < ApplicationRecord
  has_one :transactions
  has_one :users

  after_create :set_default_quantity

  def set_default_quantity
    self.quantity = self.quantity | 1
  end

end
