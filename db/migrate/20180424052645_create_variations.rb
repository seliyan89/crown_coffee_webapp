class CreateVariations < ActiveRecord::Migration[5.2]
  def change
    create_table :variations do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.float :price
      t.string :category
      t.boolean :is_deleted
      t.boolean :is_available

      t.timestamps
    end
  end
end
