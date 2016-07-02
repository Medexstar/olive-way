class RemoveTypeFromOrderObjects < ActiveRecord::Migration
  def self.up
    remove_column :order_objects, :type
  end

  def self.down
    add_column :order_objects, :type, :integer
  end
end
