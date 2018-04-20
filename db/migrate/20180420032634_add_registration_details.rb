class AddRegistrationDetails < ActiveRecord::Migration[5.2]
  def change
  	enable_extension("citext") 
  	add_column :users, :first_name, :text
  	add_column :users, :last_name, :text
  	add_column :users, :phone_number_mobile, :integer
  	add_column :users, :phone_number_office, :integer
  	add_column :users, :is_admin, :boolean
  	add_column :users, :is_deleted, :boolean
  end
end
