class AddImagesToSuits < ActiveRecord::Migration
  def self.up
    add_attachment :suits, :image_one
    add_attachment :suits, :image_two
    add_attachment :suits, :image_three
  end

  def self.down
    remove_attachment :suits, :image_one
    remove_attachment :suits, :image_two
    remove_attachment :suits, :image_three
  end
end
