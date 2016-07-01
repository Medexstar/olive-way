# == Schema Information
#
# Table name: suits
#
#  id                       :integer          not null, primary key
#  name                     :string
#  quantity                 :integer
#  unit_price               :decimal(, )
#  sex                      :string
#  colour                   :string
#  jacket_lapels            :string
#  jacket_vents             :string
#  jacket_buttons           :string
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

require 'rails_helper'

RSpec.describe Suit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
