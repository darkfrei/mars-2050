space={} -- space has Earth, Sun and all bodies
local sun={}
table.insert(space, sun)
sun.name="sun"
sun.buddy_names = 
{"mercury", "venus", "earth", "mars", 
  "ceres", "pallas", "juno", "vesta", 
  "jupiter", "saturn", "uranus", "neptune", "pluto"}

local earth={}
table.insert(space, earth)
earth.name="earth"
earth.system="sun"
earth.buddy_names={"moon"}
earth.buildings={}
earth.rockets={}
earth.orbit={}
earth.orbit.rockets={}
earth.orbit.satellites={}
earth.orbit.stations={}

local moon={}
table.insert(space, moon)
moon.name="moon"
moon.system="earth"
moon.buildings={}
moon.rockets={}
moon.orbit={}
moon.orbit.rockets={}
moon.orbit.satellites={}
moon.orbit.stations={}

