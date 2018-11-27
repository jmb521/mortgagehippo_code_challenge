class Adddefaulttoquantity < ActiveRecord::Migration[5.2]
  def change
    change_column_default :coins, :quantity, 0
  end
end
