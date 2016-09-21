class ChangeMeasurementTableToFloat < ActiveRecord::Migration
  def change
      change_column :measurements, :neck, :float
      change_column :measurements, :shoulder, :float
      change_column :measurements, :sleeve_length, :float
      change_column :measurements, :bicep, :float
      change_column :measurements, :wrist, :float
      change_column :measurements, :bust, :float
      change_column :measurements, :underbust, :float
      change_column :measurements, :back_length, :float
      change_column :measurements, :waist, :float
      change_column :measurements, :hips, :float
      change_column :measurements, :thigh, :float
      change_column :measurements, :rise, :float
      change_column :measurements, :outleg, :float
      change_column :measurements, :inleg, :float
      change_column :measurements, :ankle, :float
      change_column :measurements, :chest, :float
  end
end
