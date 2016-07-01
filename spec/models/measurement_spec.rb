# == Schema Information
#
# Table name: measurements
#
#  id                :integer          not null, primary key
#  shoulder          :float
#  half_chest        :float
#  half_jacket_waist :float
#  half_hem          :float
#  back_length       :float
#  sleeve_outstem    :float
#  bicep             :float
#  pant_outseam      :float
#  half_pant_waist   :float
#  half_bottom       :float
#  crotch            :float
#  thigh             :float
#  hip               :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#  order_object_id   :integer
#

require 'rails_helper'

RSpec.describe Measurement, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
