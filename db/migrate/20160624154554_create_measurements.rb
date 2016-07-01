class CreateMeasurements < ActiveRecord::Migration
  def self.up
    create_table :measurements do |t|
      t.float :shoulder,          precision: 5, scale: 2
      t.float :half_chest,        precision: 5, scale: 2
      t.float :half_jacket_waist, precision: 5, scale: 2
      t.float :half_hem,          precision: 5, scale: 2
      t.float :back_length,       precision: 5, scale: 2
      t.float :sleeve_outstem,    precision: 5, scale: 2
      t.float :bicep,             precision: 5, scale: 2
      t.float :pant_outseam,      precision: 5, scale: 2
      t.float :half_pant_waist,   precision: 5, scale: 2
      t.float :half_bottom,       precision: 5, scale: 2
      t.float :crotch,            precision: 5, scale: 2
      t.float :thigh,             precision: 5, scale: 2
      t.float :hip,               precision: 5, scale: 2
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :measurements
  end
end
