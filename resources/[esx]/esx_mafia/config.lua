Config                            = {}
Config.DrawDistance               = 50.0
Config.MarkerType                 = 27
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MafiaStations = {

  Mafia = {

    Blip = {
      Pos     = { x = 1275.38, y = -1710.76, z = 54.77 },
      Sprite  = 60,
      Display = 0,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 1 },
      { name = 'WEAPON_ASSAULTSMG',       price = 1 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 1 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 1 },
      { name = 'WEAPON_STUNGUN',          price = 1 },
      { name = 'WEAPON_FLASHLIGHT',       price = 1 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 1 },
      { name = 'WEAPON_FLAREGUN',         price = 1 },
      { name = 'GADGET_PARACHUTE',        price = 1 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 1 },
      { name = 'WEAPON_FIREWORK',         price = 1 },
      { name = 'WEAPON_BZGAS',            price = 1 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 1 },
      { name = 'WEAPON_APPISTOL',         price = 1 },
      { name = 'WEAPON_CARBINERIFLE',     price = 1 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 1 },
      { name = 'WEAPON_FLARE',            price = 1 },
      { name = 'WEAPON_SWITCHBLADE',      price = 1 },
	  { name = 'WEAPON_REVOLVER',         price = 1 },
	  { name = 'WEAPON_POOLCUE',          price = 1 },
	  { name = 'WEAPON_GUSENBERG',        price = 1 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'schafter3',  label = 'Véhicule Civil' },
		  { name = 'btype',      label = 'Roosevelt' },
		  { name = 'sandking',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
		  { name = 'guardian',   label = 'Grand 4x4' },
		  { name = 'burrito3',   label = 'Fourgonnette' },
		  { name = 'mesa',       label = 'Tout-Terrain' },
	  },

    Cloakrooms = {
      --{ x = 974.6, y = -96.31, z = 73.85 },
    },

    Armories = {
      { x = 986.93, y = -92.67, z = 73.85 },
    },

    Vehicles = {
      {
        Spawner    = { x = 977.03, y = -137.59, z = 73.17 },
        SpawnPoint = { x = 972.45, y = -140.03, z = 74.31 },
        Heading    = 53.88,
      }
    },
	
	Aircrafts = {
      {
        Spawner    = { x = 958.82, y = -123.62, z = 73.35 },
        SpawnPoint = { x = 963.89, y = -131.95, z = 73.34 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 975.03, y = -125.72, z = 73.21 },
      --{ x = 21.35, y = 543.3, z = 175.027 },
    },

    BossActions = {
      { x = 984.0, y = -92.2, z = 73.85 }
    },

  },

}
