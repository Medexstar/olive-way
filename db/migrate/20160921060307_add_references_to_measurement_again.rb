class AddReferencesToMeasurementAgain < ActiveRecord::Migration
  def self.up
    add_reference :measurements, :user, index: true, foreign_key: true
    add_reference :measurements, :order_object, index: true, foreign_key: true
  end

  def self.down
    remove_reference :measurements, :user
    remove_reference :measurements, :order_object
  end
end