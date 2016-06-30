# == Schema Information
#
# Table name: accessories
#
#  id         :integer          not null, primary key
#  name       :string
#  quantity   :integer
#  unit_price :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Accessory < ActiveRecord::Base
    has_and_belongs_to_many :orders
end
