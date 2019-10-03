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
		Pos   = { x = -1211.59, y = -1727.37, z = 3.21 },
		Size  = { x = 1.5, y = 1.5, z = 0.2 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = -1186.68, y = -1725.08, z = 12.56 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 334.46,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -1141.17, y = -1713.03, z = 3.88 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 353.97,
		Type    = -1
	},
	
	ResellVehicle = {
		Pos   = { x = -1219.64, y = -1732.27, z = 3.21 },
		Size  = { x = 3.0, y = 3.0, z = 0.0 },
		Type  = 1
	}

}
