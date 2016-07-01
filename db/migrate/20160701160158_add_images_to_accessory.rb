class AddImagesToAccessory < ActiveRecord::Migration
  def self.up
    add_attachment :accessories, :image_one
    add_attachment :accessories, :image_two
    add_attachment :accessories, :image_three
  end

  def self.down
    remove_attachment :accessories, :image_one
    remove_attachment :accessories, :image_two
    remove_attachment :accessories, :image_three
  end
end
