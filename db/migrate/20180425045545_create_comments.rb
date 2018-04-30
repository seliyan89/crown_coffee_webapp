class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.integer :mobile_number
      t.text :message	
      t.timestamps
    end
  end
end
