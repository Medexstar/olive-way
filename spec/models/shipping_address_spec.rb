# == Schema Information
#
# Table name: shipping_addresses
#
#  id           :integer          not null, primary key
#  company      :string           default(""), not null
#  street       :string           default(""), not null
#  postcode     :integer          default(0), not null
#  suburb       :string           default(""), not null
#  state        :string           default(""), not null
#  country      :string           default(""), not null
#  phone        :string           default("0"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  address_type :integer
#  first_name   :string
#  last_name    :string
#

require 'rails_helper'

RSpec.describe ShippingAddress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
