world = {}

function extend (tabl, list)
	for i, value in pairs (list) do
		if not tabl[value.type] then tabl[value.type]={} end
		tabl[value.type][value.name]=value
	end
end



earth={
	type="planet",
	name="earth",
	sidereal_period=31558118, -- seconds; 365.256*86400
	semi_major=149598261*10^3, -- meters;
	orbital_eccentricity=0.01671123,
	radius=3389500, -- meters
	inclination=1.57869, -- grad
	natural_satellites={"moon"},
	satellite_of="sun"
	}

earth.buildings = {
		{
		name="spacecenter",
		queue={}
		}
	}
	
moon={
	type="natural-satellite",
	name="moon",
	sidereal_period=2360591, -- seconds; 27.321661*86400
	semi_major=384399*10^3, -- meters;
	orbital_eccentricity=0.0549,
	radius=1737100, -- meters
	inclination=5.145, -- grad
	natural_satellites={"micromoon"},
	satellite_of="earth"
	}	

micromoon={
	type="natural-satellite",
	name="moon",
	sidereal_period=23605, -- seconds;
	semi_major=17371000, -- 384399000, -- meters;
	orbital_eccentricity=0,
	radius=46656, -- meters
	inclination=0, -- grad
	satellite_of="moon"
	}
	

mars={
	type="planet",
	name="mars",
	sidereal_period=59355072,--686.98*86400
	semi_major=227943820*10^3, -- meters;
	orbital_eccentricity=0.0933941,
	diameter=6791400, -- meters
	inclination =1.85061, -- grad
	natural_satellites={"phobos, deimos"},
	satellite_of="sun"
	}

phobos={
	type="natural-satellite",
	name="phobos",
	sidereal_period=27552, -- seconds; 7*60*60+2352
	semi_major=9377200, -- meters;
	orbital_eccentricity=0.0151,
	radius=11100, -- meters
	inclination=1.093, -- grad
	satellite_of="mars"
}

deimos={
	type="natural-satellite",
	name="deimos",
	sidereal_period=109075, -- seconds; 1.26244*86400
	semi_major=23458000, -- meters;
	orbital_eccentricity=0.0002,
	radius=7000, -- meters
	inclination=27.58, -- grad
	satellite_of="mars"
	}


extend (world, {earth, moon, micromoon, mars, phobos, deimos})

return world