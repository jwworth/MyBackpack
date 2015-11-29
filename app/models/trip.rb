class Trip < ActiveRecord::Base
  belongs_to :Hiker
  belongs_to :hikes
end
