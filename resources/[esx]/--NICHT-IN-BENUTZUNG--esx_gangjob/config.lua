Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 100 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'de'

Config.GangStations = {

  Gang = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
	{ name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 9000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  { name = 'WEAPON_COMBATPISTOL', 	  price = 4000 } ,-- = 20000$
	  { name = 'WEAPON_PUMPSHOTGUN', 	  price = 9000 },-- = 35000$
	  { name = 'WEAPON_SWITCHBLADE', 	  price = 500 },-- = 4000$
	  { name = 'WEAPON_KNUCKLE', 		  price = 1000 },-- = 15000$
	  { name = 'WEAPON_BAT', 			  price = 500 },-- = 5000$
	  { name = 'WEAPON_CROWBAR', 		  price = 1500 },-- = 6000$
	  { name = 'WEAPON_MICROSMG', 		  price = 40000 },-- = 80000$
	  { name = 'WEAPON_MACHINEPISTOL', 	  price = 35000 },-- = 70000$
	  { name = 'WEAPON_ASSAULTRIFLE',     price = 100000 },-- = 250000$
      { name = 'WEAPON_SNSPISTOL', 		  price = 5000 },-- = 25000$
     
    },

	  AuthorizedVehicles = {
		  { name = 'gclass',       label = 'Mercedes Benz G500' },
		  { name = 'rmodm3e36',    label = 'E36' },
		  { name = 'c63a',   label = 'c63' },
		  { name = 'x6m',      label = 'X6' },
	  },

    Cloakrooms = {
      { x = 144.57633972168, y = -2203.7377929688, z = 3.6880254745483 },
    },

    Armories = {
      { x = -1139.38, y = 367.25, z = 74.93},
	   
    },

    Vehicles = {
      {
        Spawner    = { x = -1099.15, y = 359.12, z = 68.48 },
        Spawner    = { x = -1099.15, y = 359.12, z = 68.48 },
        Heading    = 344.51,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 113.30500793457, y = -3109.3337402344, z = 5.0060696601868 },
        SpawnPoint = { x = 112.94457244873, y = -3102.5942382813, z = 5.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
       { x = 1049.38, y = 358.36, z = 68.51 },
       
    },

    BossActions = {
      { x = -1143.88, y = 370.75, z = 74.93 },
	   
    },

  },

}
