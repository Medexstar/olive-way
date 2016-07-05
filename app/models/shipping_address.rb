# == Schema Information
#
# Table name: shipping_addresses
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  company      :string           default(""), not null
#  street       :string           default(""), not null
#  postcode     :string           default(""), not null
#  suburb       :string           default(""), not null
#  state        :string           default(""), not null
#  country      :string           default(""), not null
#  phone        :string           default(""), not null
#  address_type :integer
#  first_name   :string
#  last_name    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ShippingAddress < ActiveRecord::Base
    belongs_to :user
    validates_format_of :phone, :with => /\A0\d{9}\Z/,
                                :message => "Must be a 10 digit number including 0; eg 0123456789",
                                :numericality => true,
                                :length => { is: 10 }
end
