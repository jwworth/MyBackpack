class Hike < ActiveRecord::Base
  has_many :trips
  has_many :hikers, :through => :trips
end
