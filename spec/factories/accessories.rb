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

FactoryGirl.define do
  factory :accessory do
    
  end
end
