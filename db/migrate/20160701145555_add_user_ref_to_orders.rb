class AddUserRefToOrders < ActiveRecord::Migration
  def self.up
    add_reference :orders, :user, index: true, foreign_key: true
  end

  def self.down
    remove_reference :orders, :user
  end
end
