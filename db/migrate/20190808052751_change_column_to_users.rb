class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :first_name, :string, limit: 100, null:false
  end
end
