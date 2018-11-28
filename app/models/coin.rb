class Coin < ApplicationRecord
  has_one :transactions
  has_one :users

  def self.coin_total
    total = 0
    
    Coin.all.each do |c|
      total += c.value.to_f.round(2) * c.quantity.to_i
      total = total.round(2)
    end
    total

  end

end
