class AddChestToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :chest, :integer
  end
end
