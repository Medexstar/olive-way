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

require 'rails_helper'

RSpec.describe Accessory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
