class AddFirstNameToUsers < ActiveRecord::Migration[5.2]
  def change
     add_index :users, :first_name
  end
end
