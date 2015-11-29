class Hiker < ActiveRecord::Base
  has_many :trips
  has_many :hikes, :through => :trips
end
