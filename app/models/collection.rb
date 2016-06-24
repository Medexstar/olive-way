class Collection < ActiveRecord::Base
    has_many :suits
    has_many :accessories
end
