class CreateShippingAddresses < ActiveRecord::Migration
  def change
    create_table :shipping_addresses do |t|
      t.belongs_to :user, index:true
      t.string :company,         null: false, default: ""
      t.string :street,          null: false, default: ""
      t.integer :postcode,       null: false, default: 0
      t.string :suburb,          null: false, default: ""
      t.string :state,           null: false, default: ""
      t.string :country,         null: false, default: ""
      t.integer :phone,          null: false, default: 0
      t.string :type,            null: false, default: ""
      t.timestamps null: false
    end
  end
end
