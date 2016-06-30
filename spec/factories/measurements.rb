# == Schema Information
#
# Table name: measurements
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  name              :string
#  unit              :string
#  shoulder          :float
#  half_chest        :float
#  half_jacket_waist :float
#  half_hern         :float
#  back_length       :float
#  sleeve_outstern   :float
#  bicep             :float
#  pant_outseam      :float
#  half_pant_waist   :float
#  half_bottom       :float
#  crotch            :float
#  thigh             :float
#  hip               :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :measurement do
    
  end
end
