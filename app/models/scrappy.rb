class Scrappy < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"

  validates :name,  :presence => true,
                    :length => {:maximum => 50},
                    :format => {:with => /\A[\w']*\Z/, :message => "should only contain letters"}

  validates :label, :presence => true,
                    :length => {:maximum => 255}
end
