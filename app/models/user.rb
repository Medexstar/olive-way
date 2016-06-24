class User < ActiveRecord::Base
    has_many :measurements
    has_many :shipping_addresses
    has_many :billing_addresses
    has_many :orders
end
