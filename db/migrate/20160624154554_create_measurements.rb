class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.belongs_to :user, index:true
      t.string :name
      t.string :unit
      t.float :shoulder
      t.float :half_chest
      t.float :half_jacket_waist
      t.float :half_hern
      t.float :back_length
      t.float :sleeve_outstern
      t.float :bicep
      t.float :pant_outseam
      t.float :half_pant_waist
      t.float :half_bottom
      t.float :crotch
      t.float :thigh
      t.float :hip
      t.timestamps null: false
    end
  end
end
