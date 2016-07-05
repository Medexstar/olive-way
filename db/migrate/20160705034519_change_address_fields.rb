class ChangeAddressFields < ActiveRecord::Migration
  def self.up
    remove_column :shipping_addresses, :type
    add_column :shipping_addresses, :address_type, :integer
    add_column :shipping_addresses, :first_name, :string
    add_column :shipping_addresses, :last_name, :string

    remove_column :billing_addresses, :type
    add_column :billing_addresses, :address_type, :integer
    add_column :billing_addresses, :first_name, :string
    add_column :billing_addresses, :last_name, :string
  end

  def self.down
    remove_column :shipping_addresses, :first_name
    remove_column :shipping_addresses, :last_name

    remove_column :billing_addresses, :first_name
    remove_column :billing_addresses, :last_name
  end
end
