space={} -- space has Earth, Sun and all bodies
local sun={}
table.insert(space, sun)
sun.name="sun"
sun.buddy_names = 
{"mercury", "venus", "earth", "mars",
  "ceres", "pallas", "juno", "vesta",
  "eris", "haumea", "makemake",
  "jupiter", "saturn", "uranus", "neptune", "pluto"}
-- dwarf planets: Ceres, Pluto, Eris, Haumea, and Makemake.
local earth={}
table.insert(space, earth)
earth.name="earth"
earth.selfperiod=86164 -- 23h 56m 04s
earth.system="sun"
earth.systemperiod=31536000
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
moon.orbit_radius=384.5*1000*1000 -- m
moon.buildings={}
moon.rockets={}
moon.orbit={}
moon.orbit.rockets={}
moon.orbit.satellites={}
moon.orbit.stations={}

