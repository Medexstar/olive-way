class ChangeAddressTypeAndDefault < ActiveRecord::Migration
  def up
    change_column :shipping_addresses, :postcode, :string
    change_column :billing_addresses, :postcode, :string
    change_column_default :shipping_addresses, :postcode, ""
    change_column_default :billing_addresses, :postcode, ""
    change_column_default :shipping_addresses, :phone, ""
    change_column_default :billing_addresses, :phone, ""
  end
  
  def down
    change_column :shipping_addresses, :postcode, :integer
    change_column :billing_addresses, :postcode, :integer
    change_column_default :shipping_addresses, :postcode, 0
    change_column_default :billing_addresses, :postcode, 0
    change_column_default :shipping_addresses, :phone, "0"
    change_column_default :billing_addresses, :phone, "0"
  end
end
