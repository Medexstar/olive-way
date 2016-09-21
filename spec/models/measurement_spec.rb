# == Schema Information
#
# Table name: measurements
#
#  id              :integer          not null, primary key
#  neck            :float
#  shoulder        :float
#  sleeve_length   :float
#  bicep           :float
#  wrist           :float
#  bust            :float
#  underbust       :float
#  back_length     :float
#  waist           :float
#  hips            :float
#  thigh           :float
#  rise            :float
#  outleg          :float
#  inleg           :float
#  ankle           :float
#  chest           :float
#  user_id         :integer
#  order_object_id :integer
#

require 'rails_helper'

RSpec.describe Measurement, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
