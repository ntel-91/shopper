class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :sub_total, precision: 15, scale: 2, null: false

      t.timestamps
    end
  end
end
