class ApiUser < ApplicationRecord
  has_many :transactions
  has_many :coins, through: :transactions


 before_create do |user|
   user.api_key = user.generate_api_key
 end


 def generate_api_key
   loop do
     token = SecureRandom.base64.tr('+/=', 'Qrt')
     break token unless ApiUser.exists?(api_key: token)
   end
 end
end
