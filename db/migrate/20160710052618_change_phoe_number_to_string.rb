class ChangePhoeNumberToString < ActiveRecord::Migration
  def change
    change_column :shipping_addresses, :phone, :string
    change_column :billing_addresses, :phone, :string
  end
end
