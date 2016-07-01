class AddUserRefToShippingAddresses < ActiveRecord::Migration
  def self.up
    add_reference :shipping_addresses, :user, index: true, foreign_key: true
  end

  def self.down
    remove_reference :shipping_addresses, :user
  end
end
