class Change < ActiveRecord::Migration[5.2]
  def change
    rename_column :transactions, :user_id, :api_user_id
  end
end
