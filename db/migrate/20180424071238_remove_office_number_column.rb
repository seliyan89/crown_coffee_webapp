class RemoveOfficeNumberColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :phone_number_office
  end
end
