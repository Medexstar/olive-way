class ChangeMeasurementTable < ActiveRecord::Migration
  def change
    drop_table :measurements
    create_table :measurements do |t|
      t.integer :neck
      t.integer :shoulder
      t.integer :sleeve_length
      t.integer :bicep
      t.integer :wrist
      t.integer :bust
      t.integer :underbust
      t.integer :back_length
      t.integer :waist
      t.integer :hips
      t.integer :thigh
      t.integer :rise
      t.integer :outleg
      t.integer :inleg
      t.integer :ankle
    end
  end
end
