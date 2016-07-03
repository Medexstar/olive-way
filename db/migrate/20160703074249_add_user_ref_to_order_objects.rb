class AddUserRefToOrderObjects < ActiveRecord::Migration
  def self.up
    add_reference :order_objects, :user, index: true, foreign_key: true
  end

  def self.down
    remove_reference :order_objects, :user
  end
end
