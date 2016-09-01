class AddDiscountToAmbassadors < ActiveRecord::Migration
  def change
    add_column :ambassadors, :discount, :float, :default => 0.9
  end
end
