class Transaction < ApplicationRecord
  belongs_to :api_user
  belongs_to :coin
end
