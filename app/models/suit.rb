# == Schema Information
#
# Table name: suits
#
#  id                       :integer          not null, primary key
#  name                     :string           not null
#  quantity                 :integer          not null
#  unit_price               :integer          not null
#  sex                      :integer          not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  image_one_file_name      :string
#  image_one_content_type   :string
#  image_one_file_size      :integer
#  image_one_updated_at     :datetime
#  image_two_file_name      :string
#  image_two_content_type   :string
#  image_two_file_size      :integer
#  image_two_updated_at     :datetime
#  image_three_file_name    :string
#  image_three_content_type :string
#  image_three_file_size    :integer
#  image_three_updated_at   :datetime
#

class Suit < ActiveRecord::Base
  has_many :order_objects
  has_many :orders,       through: :order_objects
  
  has_attached_file :image_one,
      styles: { big: '400x600>', potrait: '200x300>', landscape: '300x200>' },
      :path => "images/:class/:id/one/:style.:extension"
  has_attached_file :image_two,
      styles: { big: '400x600>', potrait: '200x300>', landscape: '300x200>' },
      :path => "images/:class/:id/two/:style.:extension"
  has_attached_file :image_three,
      styles: { big: '400x600>', potrait: '200x300>', landscape: '300x200>' },
      :path => "images/:class/:id/three/:style.:extension"

  validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image_three, content_type: /\Aimage\/.*\Z/
end
