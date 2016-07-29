class AddFieldsToObjects < ActiveRecord::Migration
  def self.up
    add_column :suits,       :comment, :text
    add_column :accessories, :comment, :text
  end

  def self.down
    remove_column :suits, :comment
    remove_column :accessories, :comment
  end
end
