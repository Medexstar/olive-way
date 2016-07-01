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

require 'rails_helper'

RSpec.describe Suit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
