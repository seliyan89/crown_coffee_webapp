class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :number
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.float :price
      t.string :payment_status
      t.boolean :is_complete

      t.timestamps
    end
  end
end
