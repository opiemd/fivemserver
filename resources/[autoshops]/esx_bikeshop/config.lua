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
		Pos   = { x = -569.84, y = -1047.29, z = 21.33 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = -586.91, y = -1080.03, z = 21.33 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 1.3,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -576.71, y = -1039.73, z = 21.18 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 222.67,
		Type    = -1
	},

	ResellVehicle = {
		Pos   = { x = -561.9, y = -1048.19, z = 21.21 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}
