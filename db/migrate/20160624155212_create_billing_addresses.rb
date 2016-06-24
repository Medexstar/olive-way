class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|

      t.timestamps null: false
    end
  end
end
