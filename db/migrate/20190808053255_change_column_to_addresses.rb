class ChangeColumnToAddresses < ActiveRecord::Migration[5.2]
  def change
  		change_column :addresses, :pinn_code, :integer
  end
end
