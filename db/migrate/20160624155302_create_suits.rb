class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :name
      t.integer :quantity
      t.decimal :unit_price
      t.string :sex
      t.string :colour
      t.string :jacket_lapels
      t.string :jacket_vents
      t.string :jacket_buttons
      t.timestamps null: false
    end
  end
end
