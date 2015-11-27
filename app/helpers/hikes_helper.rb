module HikesHelper
  has_many: :trips
  has_many: :hikers, :through => :trips
end
