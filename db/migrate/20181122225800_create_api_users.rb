class CreateApiUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :api_users do |t|
      t.string :api_key
      t.timestamps
    end
  end
end
