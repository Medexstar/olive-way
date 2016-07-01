class AddRefsToOrderObjects < ActiveRecord::Migration
  def self.up
    add_reference :order_objects, :suit,        index: true, foreign_key: true
    add_reference :order_objects, :accessory,   index: true, foreign_key: true
    add_reference :order_objects, :order,       index: true, foreign_key: true
  end

  def self.down
    remove_reference :order_objects, :suit
    remove_reference :order_objects, :accessory
    remove_reference :order_objects, :order
  end
end
