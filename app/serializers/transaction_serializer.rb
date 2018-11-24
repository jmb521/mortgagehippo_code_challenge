class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :coin_id, :api_user_id
end
