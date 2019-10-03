Config = {}
Config.Locale = 'de'

Config.DrawDistance = 100.0
Config.MarkerColor  = { r = 120, g = 120, b = 240 }

Config.EnableOwnedVehicles = false -- If true then it will set the Vehicle Owner to the Player who bought it.
Config.ResellPercentage    = 75 -- Sets the Resell Percentage | Example: $100 Car will resell for $75
Config.LicenseEnable       = false -- Require people to own a Commercial License when buying vehicles? Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = { x = -2628.86, y = 3289.9, z = 32.44 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = -2527.81, y = 3314.92, z = 32.82 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 96.87,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -2631.74, y = 3337.68, z = 32.5 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 150.64,
		Type    = -1
	},

	ResellVehicle = {
		Pos   = { x = -2498.44, y = 3316.44, z = 32.5 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = -1
	}

}