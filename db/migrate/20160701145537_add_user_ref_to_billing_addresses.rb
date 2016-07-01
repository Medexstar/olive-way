class AddUserRefToBillingAddresses < ActiveRecord::Migration
  def self.up
    add_reference :billing_addresses, :user, index: true, foreign_key: true
  end

  def self.down
    remove_reference :billing_addresses, :user
  end
end
