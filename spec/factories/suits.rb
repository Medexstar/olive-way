# == Schema Information
#
# Table name: suits
#
#  id             :integer          not null, primary key
#  name           :string
#  quantity       :integer
#  unit_price     :decimal(, )
#  sex            :string
#  colour         :string
#  jacket_lapels  :string
#  jacket_vents   :string
#  jacket_buttons :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :suit do
    
  end
end
