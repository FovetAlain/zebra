class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :marque
      t.text :description
      t.decimal :prix
      t.decimal :prix_after
      t.integer :promotion
      t.text :photos
      t.text :tailles
      
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
