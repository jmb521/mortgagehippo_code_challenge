class Changenameoftype < ActiveRecord::Migration[5.2]
  def change
    rename_column :transactions, :type, :deposit_or_withdrawal
  end
end
