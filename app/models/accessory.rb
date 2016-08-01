# == Schema Information
#
# Table name: accessories
#
#  id                       :integer          not null, primary key
#  name                     :string
#  quantity                 :integer
#  unit_price               :integer
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
#  main_image_file_name     :string
#  main_image_content_type  :string
#  main_image_file_size     :integer
#  main_image_updated_at    :datetime
#  comment                  :text
#

class Accessory < ActiveRecord::Base
    has_many :order_objects
    has_many :orders, through: :order_objects

    has_attached_file :main_image,
        styles: { thumb: '270x380>', main: '280x380>', option: '65x90>', zoom: '440x600>' }
    has_attached_file :image_one,
        styles: { thumb: '270x380>', main: '280x380>', option: '65x90>', zoom: '440x600>' }
    has_attached_file :image_two,
        styles: { thumb: '270x380>', main: '280x380>', option: '65x90>', zoom: '440x600>' }
    has_attached_file :image_three,
        styles: { thumb: '270x380>', main: '280x380>', option: '65x90>', zoom: '440x600>' }

    validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
    validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\Z/
    validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\Z/
    validates_attachment_content_type :image_three, content_type: /\Aimage\/.*\Z/

    def formatted_cost
      unit_price/100.0
    end
end
