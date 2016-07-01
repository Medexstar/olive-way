# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  total_price :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

FactoryGirl.define do
  factory :order do
    
  end
end
