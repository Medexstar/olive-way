class CreateOrderObjects < ActiveRecord::Migration
  def self.up
    create_table :order_objects do |t|
      t.integer :type,            null: false
      t.integer :jacket_lapels,   null: true
      t.integer :jacket_vents,    null: true
      t.integer :jacket_buttons,  null: true
      t.integer :status,          null: false
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :order_objects
  end
end
