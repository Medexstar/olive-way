class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      t.belongs_to :user, index:true
      t.string :company
      t.string :street
      t.integer :postcode
      t.string :suburb
      t.string :state
      t.string :country
      t.integer :phone
      t.string :type
      t.timestamps null: false
    end
  end
end
