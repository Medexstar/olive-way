class Suit < ActiveRecord::Base
    has_and_belongs_to_many :orders
    belongs_to :collection
end
