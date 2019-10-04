class Product < ApplicationRecord
	validates :name, presence: true
end




rails g migration RemovePhoneToUsers phone:stringrails generate migra

bin/tion addCompanytoUsers company:string

rails generate migration AddFirst_NameToUsers first_name:index


rails generate migration Change_ColumnToUsers  first_name:limit 100



rails generate migration Change_ColumnToAddresses  pinn_code:integer



user = User.new
user.first_name = "suneel"
user.last_name = "valipi"
user.email = "suneelvalipi5a7@gmail.com"
user.password = 1222333
user.company = "ms" 