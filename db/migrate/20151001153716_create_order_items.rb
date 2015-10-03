class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :item, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true
      t.decimal :unit_price, precision: 12, scale: 3
      t.integer :taille
      

      t.timestamps null: false
    end
  end
end
