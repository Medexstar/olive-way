class AddMainImages < ActiveRecord::Migration
  def self.up
    add_attachment :suits, :main_image
    add_attachment :accessories, :main_image
  end

  def self.down
    remove_attachment :suits, :main_image
    remove_attachment :accessories, :main_image
  end
end
