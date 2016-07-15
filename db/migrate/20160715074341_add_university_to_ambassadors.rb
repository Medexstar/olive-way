class AddUniversityToAmbassadors < ActiveRecord::Migration
  def self.up
    add_column :ambassadors, :university, :integer
  end

  def self.down
    remove_column :ambassadors, :university
  end
end
