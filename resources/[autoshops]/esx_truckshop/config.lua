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
		Pos   = { x = 925.61, y = -1560.26, z = 29.70 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = 969.92, y = -1577.00, z = 29.72 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 1.3,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = 901.33, y = -1538.34, z = 29.46 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 222.67,
		Type    = -1
	},

	ResellVehicle = {
		Pos   = { x = 913.72, y = -1577.8, z = 29.68 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}
