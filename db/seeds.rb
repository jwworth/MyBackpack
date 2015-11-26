hikes = [
  { name: "Colcuck Lake" location: "47.5277, -120.8210" highlights: "8 miles and 2280 ft elevation gain" description: "TThe first time you round the corner and come out of the trees at Colchuck Lake is something of a religious experience. Suddenly, laid out beneath your feet are the icy waters of the lake–-deep blue in the shade, bright aquamarine in sunlight–-while high above you at the far end of the lake, the twin spires of Dragontail and Colchuck Peaks seem to crowd out the very sky.

And all this is within relatively easy reach. While the final ascent to the lake is steep and rough in places, Colchuck’s overall elevation gain of 2,300 feet makes its spectacular scenery accessible to hikers of almost any ability. In summer, cars fill not only the trailhead parking lot, but the road leading to it. As if Colchuck Lake alone weren’t enough of a draw, it is one of the two gateways to the Enchantments, and the trailhead also accesses Stuart Lake, an easier and equally awesome destination.

Begin on the Stuart Lake Trail #1599. The first mile and a half climbs very gradually in forest, first dense and dark, then thinner and lighter, within earshot and sometimes sightline of Mountaineer Creek. Occasional breaks in the trees offer glimpses of the steep walls of the valley.

At the end of this first mile and a half, the trail crosses to the right bank of Mountaineer Creek on a sturdy log bridge. On hot days, standing at the midpoint of the bridge, hikers can catch some welcome relief from the breeze coming off the rushing whitewater of the creek. After the bridge, the route steepens and grows rockier, a small taste of what’s to come over the hike’s second half.

Three quarters of a mile later, the trail flattens out and drops a little before reaching a trail junction. Straight ahead the path to Stuart Lake rolls out, while the Colchuck Lake Trail #1599.1 breaks off to the left. Follow the trail to the left and after a short stretch in the trees, come to another log bridge that takes you across a narrow, turbulent section of Mountaineer Creek. The trail is a bit of a jumble as you hop boulders in a large talus slope along the creek’s bank. A short distance later you near the creek again, but here its waters turn suddenly glassy smooth; a nice spot for a meditative pause before starting to climb once again.

At first, the trail switchbacks gently, but the closer it gets to the lake, the steeper and rockier it gets. At several spots along the way, views open up, first to the valley you’ve just climbed out of, then up to the toothy ridge of Dragontail Peak. After one final steep stretch, the trail takes a jog to the right, drops into a small swale and suddenly, there you are at one of the finest lake views in the Cascades.

The trail seems to end at a broad granite face overlooking the lake. This is a great place to grab lunch and take in the scenery. Immediately across the lake is the imposing massif of Dragontail Peak. To the left of Dragontail is Aasgard Pass, the climb that serves as the unbelievably steep “shortcut” to the Enchantments. To the right are the remnants of the Colchuck Glacier and the slopes of Colchuck Peak, its true summit tucked out of view behind rocky towers.

The trail continues along the lakeshore another two thirds of a mile, at times rough and a little hard to follow. One of the least obvious route junctures is at a large tarn -– it’s a common mistake to follow the well-trodden dirt to the right, but the trail actually proceeds over rocky slopes to the left. After a series of bends and ups and downs in the trees, the trail reaches a rock field at the bottom of the terminal moraine of the Colchuck Glacier. Here, subalpine firs give way to larches, and the formal trail gives way to a rock-hopping route that eventually heads up Aasgard Pass.

WTA Pro Tip: There are campsites all along the lakeshore, but be aware that camping here is managed under the same strict regime as the core Enchantment Zone -– overnight stays are by permit only from June 15th-October 15th." completed: false notes: },
  { name: "Douglas Creek Canyon - Badger Mountain" location: "47.4851, -119.8980" highlights: "6 miles roundtip & 900 ft elevation gain" description: "Great views await you here, as well as a total desert experience--complete with rattlesnakes.

This area seems to be a haven for the serpents, so be careful while trekking through the brushy canyons. The snakes hole up when the temperature drops, so restrict your visits to autumn through spring and you'll have no worries about vipers. While the snakes dig in, the other animals come out in the cooler temperatures. Coyotes and jackrabbits play out their life-and-death dance here. Mule deer browse on the rich foliage. Badgers burrow in the sandy banks along the canyon walls.

From the creek crossing, hike north on the railroad grade. In just 0.7 mile, you'll encounter an old fence line and decrepit watering troughs. These relics create a very rustic Old West feel. Here you'll turn west and climb along a dirt road angling up a side canyon on the eastern flank of Badger Mountain. After another mile or so of steep climbing, the road veers left (south) and tops out on the highlands above Douglas Canyon. Use the various jeep tracks that cross the terrain to explore a mile or more along the highlands with their stunning views before returning the way you came." completed: false notes: },
  # { name: location: highlights: description: completed: notes: },
  # { name: location: highlights: description: completed: notes: },
  # { name: location: highlights: description: completed: notes: },
  # { name: location: highlights: description: completed: notes: },
]


hikes.each do |hike|
  Hike.create hike
end

hikers = [
  { name: "Claire Schechter" location: "Seattle" bio: "In west Philadelphia born and raised, On the playground was where I spent most of my days. Chillin' out maxin' relaxin' all cool. And all shootin some b-ball outside of the school. When a couple of guys who were up to no good, Started making trouble in my neighborhood. I got in one little fight and my mom got scared, She said 'You're movin' with your auntie and uncle in Bel Air.'"},
  { name: "Lewis & Clark" location: "Out West" bio: "Explorer" },
  { name: "Mama Bear", location: "Yosemite", bio: "Love my cubs and my noms."}


hikers.each do |hiker|
  Hiker.create hiker
end
