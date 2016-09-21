class ChangeMeasurementTableAgain < ActiveRecord::Migration
  def change
    drop_table :measurements
    create_table :measurements do |t|
      t.float :neck
      t.float :shoulder
      t.float :sleeve_length
      t.float :bicep
      t.float :wrist
      t.float :bust
      t.float :underbust
      t.float :back_length
      t.float :waist
      t.float :hips
      t.float :thigh
      t.float :rise
      t.float :outleg
      t.float :inleg
      t.float :ankle
    end
  end
end
