class AddUserRefToMeasurements < ActiveRecord::Migration
  def self.up
    add_reference :measurements, :user, index: true, foreign_key: true
  end

  def self.down
    remove_reference :measurements, :user
  end
end
