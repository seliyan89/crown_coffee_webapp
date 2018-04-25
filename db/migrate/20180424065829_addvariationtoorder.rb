class Addvariationtoorder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :variation, foreign_key: true
  end
end
