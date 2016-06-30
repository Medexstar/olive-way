# == Schema Information
#
# Table name: shipping_addresses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  company    :string           default(""), not null
#  street     :string           default(""), not null
#  postcode   :integer          default(0), not null
#  suburb     :string           default(""), not null
#  state      :string           default(""), not null
#  country    :string           default(""), not null
#  phone      :integer          default(0), not null
#  type       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe ShippingAddress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
