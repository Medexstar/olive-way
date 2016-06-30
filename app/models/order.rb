# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  total_price :decimal(, )
#  ordered_on  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :suits
    has_and_belongs_to_many :accessories
end
