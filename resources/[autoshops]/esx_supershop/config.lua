Config = {}
Config.Locale = 'de'

Config.DrawDistance = 100.0
Config.MarkerColor  = { r = 120, g = 120, b = 240 }

Config.EnableOwnedVehicles = true -- If true then it will set the Vehicle Owner to the Player who bought it.
Config.ResellPercentage    = 75 -- Sets the Resell Percentage | Example: $100 Car will resell for $75
Config.LicenseEnable       = true -- Require people to own a Commercial License when buying vehicles? Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = { x = -803.58, y = -224.27, z = 36.22 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = -789.13, y = -196.84, z = 35.59 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 272.08,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -768.59, y = -243.72, z = 36.54 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 204.9,
		Type    = -1
	},

	ResellVehicle = {
		Pos   = { x = -764.26, y = -241.8, z = 35.54 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}
