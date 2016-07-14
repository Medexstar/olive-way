class CreateBillingAddresses < ActiveRecord::Migration
  def self.up
    create_table :billing_addresses do |t|
      t.string  :company,        null: false, default: ""
      t.string  :street,         null: false, default: ""
      t.integer :postcode,       null: false, default: 0
      t.string  :suburb,         null: false, default: ""
      t.string  :state,          null: false, default: ""
      t.string  :country,        null: false, default: ""
      t.string  :phone,          null: false, default: "0"
      t.string  :type,           null: false, default: ""
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :billing_addresses
  end
end
