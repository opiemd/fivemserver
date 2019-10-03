Config = {}
Config.Locale = 'de'
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.

-- List of item names that will close ui when used
Config.CloseUiItems = {"headbag", "bandage", "fishingrod", "tunerlaptop", "binoculars", "gps", "joint", "cigarette", "cigar", "fixkit", "rollingpaper", "cocaine", "meth", "bag"}

Config.ShopBlipID = 52
Config.LiquorBlipID = 93
Config.YouToolBlipID = 402
Config.BahamamamasBlipID = 93
Config.PhoneShopBlipID = 619
Config.MafiaBlipID = 543
Config.PrisonShopBlipID = 52
Config.WeedStoreBlipID = 140
Config.WeaponShopBlipID = 110

Config.ShopLength = 14
Config.LiquorLength = 10
Config.YouToolLength = 2
Config.BahamamamasLength = 2
Config.PhoneShopLength = 3
Config.MafiaLength = 2
Config.PrisonShopLength = 2

Config.Color = 2
Config.WeaponColor = 1

Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8}
Config.LicensePrice = 15000

Config.Shops = {
    RegularShop = {
        Locations = {
			{x = 373.875,   y = 325.896,  z = 102.566},
			{x = 2557.458,  y = 382.282,  z = 107.622},
			{x = -3038.939, y = 585.954,  z = 6.908},
			{x = -3241.927, y = 1001.462, z = 11.830},
			{x = 547.431,   y = 2671.710, z = 41.156},
			{x = 1961.464,  y = 3740.672, z = 31.343},
			{x = 2678.916,  y = 3280.671, z = 54.241},
			{x = 1729.216,  y = 6414.131, z = 34.037},
			{x = 1135.808,  y = -982.281,  z = 45.415},
			{x = -1222.915, y = -906.983,  z = 11.326},
			{x = -1487.553, y = -379.107,  z = 39.163},
			{x = -2968.243, y = 390.910,   z = 14.043},
			{x = 1166.024,  y = 2708.930,  z = 37.157},
			{x = 1392.562,  y = 3604.684,  z = 33.980},
			{x = 25.723,   y = -1346.966, z = 28.497}, 
			{x = -1037.618,  y = -2737.399, z = 19.169},
			{x = -48.519,   y = -1757.514, z = 28.421},
			{x = 1163.373,  y = -323.801,  z = 68.205},
			{x = -707.501,  y = -914.260,  z = 18.215},
			{x = -1820.523, y = 792.518,   z = 137.118},
            {x = 1698.388,  y = 4924.404,  z = 41.063},
            {x = -92.68,    y = 6409.92,   z = 31.64},
            {x = -2650.25,  y = 3255.72,   z = 32.81},
            {x = -2678.75, y = 3228.89, z = 36.66}
        },
        Items = {
            {name = 'bread'},
            {name = 'water'},
			{name = 'cigarett'},
			{name = 'lighter'},
			{name = 'whisky'},
			{name = 'vodka'},
			{name = 'soda'},
			{name = 'sandwich'},
			{name = 'jus_raisin'},
			{name = 'coffee'},
			{name = 'beer'},
            {name = 'hamburger'},
            {name = 'chips'},
			{name = 'limonade'},
            {name = 'chocolate'},
            {name = 'cocacola'},
            {name = 'drpepper'},
            {name = 'energy'},
            {name = 'lemonade'},
            {name = 'phone'},
            {name = 'icetea'}
        }
    },
	
	Bennys = {
		Locations = {
			{x = -207.96, y = -1342.0, z = 34.5},
        },
        Items = {
            {name = 'bread'},
            {name = 'beer'},
            {name = 'bag'},
			{name = 'hamburger'},
			{name = 'sandwich'},
			{name = 'lemonade'},
			{name = 'energy'},
			{name = 'cigarett'},
			{name = 'lighter'},
            {name = 'coffee'},
            {name = 'water'}
        }
	},
	
	Mechanic = {
		Locations = {
			--{x = -319.17, y = -131.51, z = 38.1},
        },
        Items = {
            --{name = 'fixtool'},
            {name = 'bread'},
            {name = 'fixkit'},
            {name = 'water'}
        }
	},
	
	Medic = {
		Locations = {
			{x = 350.46, y = -584.55, z = 28.1},
        },
        Items = {
            {name = 'coffee'},
            {name = 'water'},
            {name = 'bread'}
        }
	},

	Autohaus = {
		Locations = {
			{x = -1194.64, y = -1713.54, z = 4.43},
        },
        Items = {
            {name = 'coffee'},
            {name = 'water'},
            {name = 'bread'}
        }
	},

	Opie = {
		Locations = {
			--{x = 1269.23, y = -1710.54, z = 54.77},
        },
        Items = {
			{name = 'phone'},
            {name = 'drill'},
			{name = 'beer'},
            {name = 'bread'},
            {name = 'water'},
            {name = 'bandage'},
            {name = 'fixkit'},
            {name = 'bag'},
            {name = 'coffee'}
        }
	},

	Mafia = {
		Locations = {
			{x = 988.72, y = -96.02, z = 74.00},
        },
        Items = {
			{name = 'phone'},
			{name = 'cigarett'},
			{name = 'lighter'},
            {name = 'beer'},
            {name = 'bread'},
            {name = 'bag'},
            {name = 'water'},
            {name = 'bandage'},
            {name = 'fixkit'},
            {name = 'medikit'},
            {name = 'coffee'},
            {name = 'bolcacahuetes'},
            {name = 'bolnoixcajou'},
			{name = 'bolpistache'},
			{name = 'chocolate'},
			{name = 'hamburger'},
            {name = 'cocacola'},
            {name = 'drpepper'},
            {name = 'energy'},
            {name = 'jager'},
            {name = 'jagerbomb'},
            {name = 'jagercerbere'},
			{name = 'jusfruit'},
            {name = 'limonade'},
            {name = 'martini'},
			{name = 'metreshooter'},
			{name = 'mixapero'},
            {name = 'mojito'},
            {name = 'rhum'},
            {name = 'rhumcoca'},
            {name = 'rhumfruit'},
            {name = 'tequila'},
            {name = 'vodka'},
			{name = 'vodkaenergy'},
            {name = 'vodkafruit'},
            {name = 'whisky'},
			{name = 'xanax'},
			{name = 'gnseblmchen'},
			{name = 'whiskycoca'}
        }
	},
	
	Bahamamamas = {
		Locations = {
--			{x = -1393.409, y = -606.624,  z = 29.319},
--			{x = -1377.61, y = -627.02,  z = 30.82},
--			{x = -1577.95, y = -3014.89,  z = -78.01},
--			{x = -1586.79, y = -3012.79,  z = -75.01},
        },
        Items = {
			{name = 'beer'},
			{name = 'cigarett'},
			{name = 'lighter'},			
            {name = 'bolcacahuetes'},
            {name = 'bolnoixcajou'},
			{name = 'bolpistache'},
			{name = 'chocolate'},
			{name = 'hamburger'},
            {name = 'cocacola'},
            {name = 'drpepper'},
            {name = 'energy'},
            {name = 'jager'},
            {name = 'jagerbomb'},
            {name = 'jagercerbere'},
			{name = 'jusfruit'},
            {name = 'limonade'},
            {name = 'martini'},
			{name = 'metreshooter'},
			{name = 'mixapero'},
            {name = 'mojito'},
            {name = 'rhum'},
            {name = 'rhumcoca'},
            {name = 'rhumfruit'},
            {name = 'tequila'},
            {name = 'vodka'},
			{name = 'vodkaenergy'},
            {name = 'vodkafruit'},
            {name = 'whisky'},
			{name = 'whiskycoca'}
        }
	},
	
    PhoneShop = {
        Locations = {
            {x = -85.1, y = 38.86, z = 70.8},
        },
        Items = {
            {name = 'phone'}
        }
    },	
	
	Police = {
		Locations = {
			{x = 459.79, y = -988.92, z = 30.5},
        },
        Items = {
            {name = 'bread'},
            {name = 'water'},
            --{name = 'fixkit'},
            --{name = 'medikit'},
            {name = 'coffee'}
        }
	},

    YouTool = {
        Locations = {
            {x = 2748.0, y = 3473.0, z = 55.68},
        },
        Items = {
            {name = 'drill'},
			{name = 'bag'},
			{name = 'lighter'},			
			{name = 'essence'},
            {name = 'highgradefert'}
        }
    },

    PrisonShop = {
        Locations = {
            {x = 1728.41, y = 2584.31, z = 45.84},
        },
        Items = {
            {name = 'bread'},
            {name = 'water'},
			{name = 'cigarett'},
			{name = 'lighter'},			
            {name = 'sandwich'},
            {name = 'chips'}
        }
    },


    WeaponShop = {
        Locations = {
            { x = -662.180, y = -934.961, z = 20.829 },
            { x = 810.25, y = -2157.60, z = 28.62 },
            { x = 1693.44, y = 3760.16, z = 33.71 },
            { x = -330.24, y = 6083.88, z = 30.45 },
            { x = 252.63, y = -50.00, z = 68.94 },
            { x = 22.09, y = -1107.28, z = 28.80 },
            { x = 2567.69, y = 294.38, z = 107.73 },
            { x = -1117.58, y = 2698.61, z = 17.55 },
            { x = 842.44, y = -1033.42, z = 27.19 },
        },
        Weapons = {
            {name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_KNIFE", ammo = 30},
            {name = "WEAPON_HATCHET", ammo = 1},
			{name = "WEAPON_KNUCKLE", ammo = 1},
			{name = "WEAPON_POOLCUE", ammo = 1},
			{name = "WEAPON_SWITCHBLADE", ammo = 1},
			{name = "WEAPON_PISTOL50", ammo = 50},
			{name = "WEAPON_PETROLCAN", ammo = 5000},
			{name = "WEAPON_BALL", ammo = 1},
			{name = "WEAPON_NIGHTSTICK", ammo = 1},
			{name = "WEAPON_MACHETE", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
        },
        Ammo = {
			{name = "benzin_fuel", weaponhash = "WEAPON_PETROLCAN", ammo = 50},
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24},
			{name = "50mm_rounds", weaponhash = "WEAPON_PISTOL50", ammo = 24},
        },
        Items = {
			{name = 'silencieux'},
            {name = 'flashlight'},
			{name = 'grip'},
			{name = 'yusuf'}
        }
    },
}