hikes = [
  { name: "Colcuck Lake", coordinates: "47.5277, -120.8210", length: 8, elevation_gain: 2280, highest_point: 5580, description: "The first time you round the corner and come out of the trees at Colchuck Lake is something of a religious experience. Suddenly, laid out beneath your feet are the icy waters of the lake–-deep blue in the shade, bright aquamarine in sunlight–-while high above you at the far end of the lake, the twin spires of Dragontail and Colchuck Peaks seem to crowd out the very sky.", parking_pass: "Northwest Forest Pass"},
  { name: "Douglas Creek Canyon - Badger Mountain", coordinates: "47.4851, -119.8980", length: 6, elevation_gain: 900, description: "Great views await you here, as well as a total desert experience--complete with rattlesnakes.", parking_pass: "None" }
  # { name: location: highlights: description: completed: notes: },
  # { name: location: highlights: description: completed: notes: },
  # { name: location: highlights: description: completed: notes: },
  # { name: location: highlights: description: completed: notes: },
]


hikes.each do |hike|
  Hike.create hike
end

hikers = [
  { name: "Claire Schechter", location: "Seattle", bio: "In west Philadelphia born and raised, On the playground was where I spent most of my days. Chillin' out maxin' relaxin' all cool. And all shootin some b-ball outside of the school. When a couple of guys who were up to no good, Started making trouble in my neighborhood. I got in one little fight and my mom got scared, She said 'You're movin' with your auntie and uncle in Bel Air.'"},
  { name: "Lewis & Clark", location: "Out West", bio: "Explorer" },
  { name: "Mama Bear", location: "Yosemite", bio: "Love my cubs and my noms."}
]

hikers.each do |hiker|
  Hiker.create hiker
end

trips = [
  { hiker_id: 1, hike_id: 2, completed_at: Time.now, notes: "Parking lot is hard to find! Look left when you turn off the road."},
  { hiker_id: 2, hike_id: 2, completed_at: Time.now, notes: "Very exposed hike."},
  { hiker_id: 1, hike_id: 1, completed_at: Time.now, notes: "Very steep in the beginning!"}
]

trips.each do |trip|
  Trip.create trip
end
