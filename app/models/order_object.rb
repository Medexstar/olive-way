# == Schema Information
#
# Table name: order_objects
#
#  id             :integer          not null, primary key
#  jacket_lapels  :integer
#  jacket_vents   :integer
#  jacket_buttons :integer
#  status         :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  suit_id        :integer
#  accessory_id   :integer
#  order_id       :integer
#

class OrderObject < ActiveRecord::Base
  belongs_to  :order
  belongs_to  :suit
  belongs_to  :accessory
  belongs_to  :user
  has_one     :measurement
  accepts_nested_attributes_for :measurement

  enum status: { pending: 0, checked_out: 1, uni: 2}

  scope :pending, -> (cur_user) { where(user: cur_user, status: 0) }
  scope :checked_out, -> (cur_user, order_id) { where(user: cur_user, status: 1, order_id: order_id) }
end
