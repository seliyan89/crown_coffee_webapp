class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :img
      t.boolean :is_deleted
      t.boolean :is_available

      t.timestamps
    end
  end
end
