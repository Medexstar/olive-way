class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :quantity
      t.decimal :unit_price
      t.timestamps null: false
    end
  end
end
