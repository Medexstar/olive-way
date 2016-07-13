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

class Order < ActiveRecord::Base
    belongs_to  :user
    has_many    :order_objects
    has_many    :suits,        through: :order_objects
    has_many    :accessories,  through: :order_objects
    has_one     :shipping_address
    has_one     :billing_address
    scope :checked_out, -> (cur_user) { where(user: cur_user) }
end
