class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.decimal :shipping, precision: 12, scale: 3, default: 5.9
      t.decimal :total, precision: 12, scale: 3

      t.timestamps null: false
    end
  end
end
