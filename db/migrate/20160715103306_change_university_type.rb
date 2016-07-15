class ChangeUniversityType < ActiveRecord::Migration
  def self.up
    change_column :ambassadors, :university, :string
  end

  def self.down
    change_column :ambassadors, :university, :integer
  end
end
