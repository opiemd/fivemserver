Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 1000  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale = 'de'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 20 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(356.58, -596.14, 28.78), heading = 245.18 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(364.76, -591.19, 28.69),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(335.83, -580.77, 27.69)
		},

		Pharmacies = {
			vector3(354.16, -576.41, 27.69),
			vector3(332.14, -573.87, 27.69),
			vector3(330.78, -580.75, 27.69)
		},

		Vehicles = {
			{
				Spawner = vector3(315.64, -559.69, 28.69),
				InsideShop = vector3(337.37, -623.75, 29.06),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(327.62, -555.48, 28.51), heading = 340.39, radius = 0.0 },
					{ coords = vector3(331.73, -555.48, 28.51), heading = 340.39, radius = 0.0 },
					{ coords = vector3(338.94, -555.48, 28.51), heading = 340.39, radius = 0.0 }
				}
			}
		},

		Aircrafts = {
			{
				Spawner = vector3(342.06, -582.01, 74.17),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.53, -587.72, 74.17), heading = 255.27, radius = 10.0 },
					{ coords = vector3(314.3, -577.49, 94.48), heading = 338.05, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			{
				From = vector3(340.25, -595.17, 27.79),
				To = { coords = vector3(342.33, -585.04, 74.17), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(339.97, -584.3, 73.1),
				To = { coords = vector3(338.56, -594.63, 28.79), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(346.18, -602.42, 74.00),
				To = { coords = vector3(321.46, -575.15, 94.48), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(310.19, -571.2, 93.48),
				To = { coords = vector3(346.75, -599.66, 74.17), heading = 0.0 },
				Marker = { type = 1, x = 1.1, y = 1.1, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 1 }
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 1 }
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 1 }
	},

	boss = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 1 }
	}

}

Config.AuthorizedAircrafts = {

	ambulance = {},

	doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1 }
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 1 }
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 1 }
	}

}
