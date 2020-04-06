class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, limit: 150, null: false
      t.decimal :price, precision: 15, scale: 2, null: false, default: 0
      t.text :description

      t.index :title, unique: true
      
      t.timestamps
    end
  end
end
