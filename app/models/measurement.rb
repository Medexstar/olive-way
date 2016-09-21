# == Schema Information
#
# Table name: measurements
#
#  id              :integer          not null, primary key
#  neck            :integer
#  shoulder        :integer
#  sleeve_length   :integer
#  bicep           :integer
#  wrist           :integer
#  bust            :integer
#  underbust       :integer
#  back_length     :integer
#  waist           :integer
#  hips            :integer
#  thigh           :integer
#  rise            :integer
#  outleg          :integer
#  inleg           :integer
#  ankle           :integer
#  chest           :integer
#  user_id         :integer
#  order_object_id :integer
#

class Measurement < ActiveRecord::Base
    belongs_to :user
    belongs_to :order_object
end
