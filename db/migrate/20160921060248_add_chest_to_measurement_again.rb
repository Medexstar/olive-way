class AddChestToMeasurementAgain < ActiveRecord::Migration
  def change
    add_column :measurements, :chest, :float
  end
end
