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
	orbital_eccentricity=0.0933941,
	satellites={"moon"}
	}

earth.buildings = {
		{
		name="spacecenter",
		queue={}
		}
	}
	

mars={
	type="planet",
	name="mars",
	sidereal_period=59355072,--686.98*86400
	semi_major=227943820*10^3, -- meters;
	orbital_eccentricity=0.0933941,
	diameter=6791400, -- meters
	axis_tilt =25,
	satellites={"phobos, deimos"}
	}

extend (world, {earth, moon, mars})

return world