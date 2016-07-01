class CreateAccessories < ActiveRecord::Migration
  def self.up
    create_table :accessories do |t|
      t.string    :name
      t.integer   :quantity
      t.integer   :unit_price
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :accessories
  end
end
