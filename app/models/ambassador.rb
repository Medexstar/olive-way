# == Schema Information
#
# Table name: ambassadors
#
#  id             :integer          not null, primary key
#  email          :string           not null
#  first_name     :string           not null
#  last_name      :string           not null
#  promotion_code :string
#  approved       :boolean          default(FALSE)
#  university     :string
#  mobile         :string
#  discount       :float            default(0.9)
#

class Ambassador < ActiveRecord::Base
  has_many :order_objects
end
