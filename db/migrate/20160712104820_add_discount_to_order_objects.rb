class AddDiscountToOrderObjects < ActiveRecord::Migration
  def self.up
    add_column :order_objects, :price, :integer
    add_reference :order_objects, :ambassador, index: true, foreign_key: true
  end

  def self.down
    remove_column :order_objects, :price
    remove_reference :order_objects, :ambassador
  end
end
