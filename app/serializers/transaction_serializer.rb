class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :coin_id, :api_user_id, :created_at
end
