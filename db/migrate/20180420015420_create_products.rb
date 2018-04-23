class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :img
      t.boolean :is_deleted
      t.boolean :is_available
      t.string :sku
      t.string :parent
      t.string :category

      t.timestamps
    end
  end
end
