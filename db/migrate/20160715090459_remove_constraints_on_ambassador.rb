class RemoveConstraintsOnAmbassador < ActiveRecord::Migration
  def self.up
    change_column :ambassadors, :promotion_code, :string, :null => true
  end

  def self.down
    change_column :ambassadors, :promotion_code, :string, :null => true
  end
end
