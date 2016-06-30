class Suit < ActiveRecord::Base
    has_and_belongs_to_many :orders
    
    # This method associates the attribute ":photo" with a file attachment
  has_attached_file :photo, styles: {
    big: '400x600>',
    potrait: '200x300>',
    landscape: '300x200>'
  }

end
