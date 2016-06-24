class Order < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :suits
    has_and_belongs_to_many :accessories
end
