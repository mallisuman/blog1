class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 50, null: false
      t.string :last_name, limit: 50, null: false
      t.string :email, limit: 50
      t.string :password, limit: 15
      t.boolean :terms_and_conditions
 
      t.integer :phone, limit: 10 

      t.timestamps
    end
  end
end
