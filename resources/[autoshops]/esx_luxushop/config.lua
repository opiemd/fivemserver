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
		Pos   = { x = -914.71, y = -2038.74, z = 8.4 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = -973.08, y = -2071.95, z = 7.81 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 169.72,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -897.7, y = -2035.06, z = 7.7 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 224.74,
		Type    = -1
	},

	ResellVehicle = {
		Pos   = { x = -914.83, y = -2054.41, z = 7.7 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}