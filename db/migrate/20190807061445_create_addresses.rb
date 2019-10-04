class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
    	t.string :user_id, limit: 50
    	t.string :street, limit: 50
    	t.string :door_no, limit: 50 
    	t.string :city, limit: 100
    	t.string :state, limit: 100 
    	t.string :pinn_code, limit: 100

    	t.timestamps

    end
  end
end

 