Config = {}
Config.Blip			= {sprite= 0, color = 30} --524
Config.LkwBlip		= {sprite= 632, color = 30}
Config.AircraftBlip	= {sprite= 569, color = 30}
Config.MecanoBlip	= {sprite= 357, color = 26}
Config.Price		= 468 -- pound price to get vehicle back
Config.SwitchGaragePrice		= 10 -- price to pay to switch vehicles in garage
Config.StoreOnServerStart = true -- Store all vehicles in garage on server start?

Config.Garages = {
	Garage_Flughafen = {	
		Pos = {x = -982.51,y = -2707.95,z = -125.15},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -982.51,y = -2707.95,z = 13.84},
			Heading = 334.75,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -976.8,y = -2708.98,z = 13.86 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Casino = {	
		Pos = {x = 927.01,y = -103.95,z = -125.15},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 927.01,y = -103.95,z = 78.76},
			Heading = 39.38,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 923.8,y = -106.5,z = 78.76 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Uldi = {	
		Pos = {x = -1664.01,y = 400.01,z = -125.15},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -1664.76,y = 391.44,z = 89.22},
			Heading = 37.43,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -1667.92,y = 396.39,z = 89.0 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Ramirez = {	
		Pos = {x = -1971.01,y = 622.01,z = -125.15},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -1971.01,y = 622.01,z = 122.15},
			Heading = 242.88,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -1967.76,y = 620.56,z = 121.65 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Stark = {	
		Pos = {x = -1794.08,y = 342.2,z = -75.50 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -1790.9,y = 353.28,z = 88.57},
			Heading = 59.81,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -1797.62,y = 349.3,z = 88.56 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Villa = {	
		Pos = {x = -809.7,y = 190.11,z = 75.50 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -819.3,y = 184.41,z = 72.22 },
			Heading = 120.89,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -807.09,y = 162.28,z = 71.55 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Biker = {	
		Pos = {x = 986.46,y = -138.6,z = 73.10 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 955.39,y = -128.23,z = 74.38 },
			Heading = 234.12,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 967.05,y = -128.02,z = 74.37 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Fraktion2 = {	
		Pos = {x = 1850.73,y = 3677.26,z = -33.83 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 1848.36,y = 3669.83,z = 33.80 },
			Heading = 212.45,
			Marker = { w= 0.5, h= 0.5, r= 16, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 1854.43,y = 3674.62,z = 33.72 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_GaldinQuay = {	
		Pos = {x = -2030.79,y = -465.63,z = -11.7 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -2023.81,y = -471.34,z = 11.44 },
			Heading = 138.32,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -2037.09,y = -460.92,z = 11.44 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Berbau = {	
		Pos = {x = 838.77,y = -2185.06,z = -30.34 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 850.37,y = -2181.18,z = 30.38 },
			Heading = 177.16,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 847.99,y = -2186.06,z = 30.34 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Arkadius = {	
		Pos = {x = -156.6,y = -637.1,z = -32.6 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -124.42,y = -666.7,z = 35.4 },
			Heading = 248.16,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -154.6,y = -629.8,z = 32.6 },
			Marker = { w= 1.0, h= 0.1,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Schrott = {	
		Pos = {x = -568.15,y = -1686.3,z = -19.4 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -562.67,y = -1684.8,z = 19.4 },
			Heading = 199.86,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -555.67,y = -1698.8,z = 19.2 },
			Marker = { w= 1.0, h= 1.0,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_Admin = {	
		Pos = {x = 1280.33,y = -1724.2,z = -54.66 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 1282.79,y = -1729.34,z = 52.76 },
			Heading = 115.44,
			Marker = { w= 1.0, h= 1.0, r= 0, g= 100, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 1290.04,y = -1725.37,z = 53.4 },
			Marker = { w= 1.0, h= 0.1,r= 255, g= 0, b= 0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	

	},	
	Garage_City = {	
		Pos = {x = 100.47,y = -1073.73,z = -29.4 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 36},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 107.97,y = -1080.19,z = 29.2 },
			Heading = 340.51,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 114.48,y = -1070.26,z = 29.2 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_Bennys = {	
		Pos = {x = -181.47,y = -1277.73,z = 31.4 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 36},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -189.97,y = -1290.19,z = 31.4 },
			Heading = 266.51,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -181.44,y = -1286.26,z = 31.4 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_ACLS = {	
		Pos = {x = -384.05,y = -134.31,z = 38.7 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 36},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -384.24,y = -130.31,z = 38.7 },
			Heading = 310.09,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -382.37,y = -137.44,z = 38.7 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},		
	Garage_Centre = {	
		Pos = {x=215.800, y=-810.057, z= -30.8},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x=229.700, y= -800.1149, z= 30.7},
			Heading = 160.0,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x=215.124, y=-791.377, z=31.0},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Centre2 = {	
		Pos = {x = -1523.191,y = -451.017,z = -35.596},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -1519.22,y = -434.582,z = 35.442},
			Heading = 160.0,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -1528.022,y = -443.280,z = 35.442},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},		
	Garage_Paleto = {	
		Pos = {x=105.3, y=6613.8, z= -32.5},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x=145.97, y= 6614.15, z= 31.9},
			Heading = 0.25,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x=140.81, y=6607.48, z=31.9},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_SandyShore = {	
		Pos = {x=1694.571, y=3610.924, z= -35.4},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x=1713.492, y= 3598.938, z= 35.4},
			Heading = 160.0,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 1695.156,y = 3601.061,z = 35.6},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Ocean1 = {	
		Pos = {x = -3140.323,y = 1124.463,z = -20.8},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -3132.638,y = 1126.662,z = 20.73},
			Heading = 160.0,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -3136.902,y = 1102.685,z = 20.7},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_Ocean2 = {	
		Pos = {x = -2982.561,y = 327.506,z = -15.0},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -2977.238,y = 337.777,z = 14.8},
			Heading = 160.0,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -2971.814,y = 355.331,z = 14.8},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},		
	Garage_Sud = {	
		Pos = {x = 443.3,y = -1969.5,z = -24.45},
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 437.8140,y = -1958.572,z = 23.2},
			Heading = 182.0,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 457.91,y = -1971.343,z = 23.2},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Lake = {	
		Pos = {x = -73.165504455566,y = 908.08734130859,z = -235.7 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -72.099822998047,y = 902.85479736328,z = 235.7 },
			Heading = 134.409,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -66.987632751465,y = 891.65881347656,z = 235.6 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_Occaz = {	
		Pos = {x = 472.00717163086,y = -1113.5531005859,z = -29.2 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 465.24938964844,y = -1122.1062011719,z = 29.4 },
			Heading = 179.84,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 480.43997192383,y = -1123.5560302734,z = 29.4 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Groove = {	
		Pos = {x = -69.514305114746,y = -1822.9477539063,z = -27.0 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -67.72095489502,y = -1835.7784423828,z = 27.0 },
			Heading = 225.887,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -60.4020652771,y = -1829.5288085938,z = 26.9 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_venise = {	
		Pos = {x = -1081.974609375,y = -1254.1881103516,z = -5.5 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -1077.2590332031,y = -1239.3200683594,z = 5.2 },
			Heading = 144.887,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -1097.2971191406,y = -1253.8725585938,z = 5.3 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_tequila = {	
		Pos = {x = -570.92272949219,y = 313.41049194336,z = -84.5 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -569.47564697266,y = 323.53549194336,z = 84.5 },
			Heading = 22.52,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -560.84375,y = 322.41586303711,z = 84.5 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_banque = {	
		Pos = {x = 363.48370361328,y = 296.83682250977,z = -103.6 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 378.00622558594,y = 288.13024902344,z = 103.24 },
			Heading = 62.22,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 364.76132202148,y = 285.18911743164,z = 103.44 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_mirrorpark = {	
		Pos = {x = 1033.9229736328,y = -767.10662841797,z = -58.1 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 1040.6834716797,y = -778.18170166016,z = 58.1 },
			Heading = 359.92,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 1022.7816772461,y = -763.78955078125,z = 58.0 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_Police = {	
		Pos = {x = 463.0,y = -1014.97,z = -28.1 },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 449.89,y = -1020.47,z = 28.43 },
			Heading = 83.53,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 450.54,y = -1013.13,z = 28.6 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
	Garage_Autohandel = {	
		Pos = {x = -1166.63,y = -1777.18,z = -4.00  },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = -1177.14,y = -1762.09,z = 4.00  },
			Heading = 305.58,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -1175.3,y = -1773.94,z = 3.87 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},
	Garage_Krankenhaus = {	
		Pos = {x = 317.37,y = -553.41,z = -28.8  },
		Marker = { w= 0.5, h= 0.5,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um die Garage zu öffnen",
		SpawnPoint = {
			Pos = {x = 317.37,y = -547.92,z = 28.8  },
			Heading = 269.8,
			Marker = { w= 0.7, h= 0.7,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 317.37,y = -545.04,z = 28.8 },
			Marker = { w= 0.7, h= 0.7,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um dein Fahrzeug einzuparken",
		}, 	
	},	
}

Config.GaragesMecano = {
	mechanic = {
		Name = 'Verwahrstelle ACLS',
		SpawnPoint = {
			Pos = {x = -372.95,y = -106.53,z = 38.8},
			Heading = 161.27,
			Marker = { w= 1.0, h= 1.0,r=69,g=139,b=116},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um das Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = -364.67,y = -109.52,z = 38.8},
			Marker = { w= 1.0, h= 1.0,r=139,g=35,b=35},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um das Fahrzeug einzuparken",
		},
	},
	police = {
		Name = 'Verwahrstelle Polizei',
		SpawnPoint = {
			Pos = {x = 436.89,y = -1013.92,z = 28.8},
			Heading = 180.13,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um das Fahrzeug auszuparken",
		},
		DeletePoint = {
			Pos = {x = 431.53,y = -1014.17,z = 28.9},
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um das Fahrzeug einzuparken",
		},
	},
}

Config.LkwGarages = {
	LkwGarage_Centre = {
		Pos = {x = 10.24,y = -597.44,z = 31.65 },
		Marker = { w= 1.5, h= 1.5,r = 204, g = 204, b = 0},
		Name = 'LKW Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um es auszuparken",
		SpawnPoint = {
			Pos = {x = 12.9,y = -590.49,z = 31.65 },
			Heading = 250.3,
			Marker = { w= 1.5, h= 1.5,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um es auszuparken"
		},
		DeletePoint = {
			Pos = {x = 43.42,y = -575.87,z = 31.65 },
			Marker = { w= 1.5, h= 1.5,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um es einzuparken"
		}, 	
	},
}

Config.AircraftGarages = {
	Flughafen = {	
		Pos = {x = 1716.54,y = 3268.97,z = 41.17 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Flugzeug Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um es auszuparken",
		SpawnPoint = {
			Pos = {x = 1719.84,y = 3258.35,z = 41.17 },
			Heading = 106.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um es auszuparken"
		},
		DeletePoint = {
			Pos = {x = 1689.8,y = 3248.89,z = 41.00 },
			Marker = { w= 3.5, h= 3.5,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um es einzuparken"
		}, 	
	},
	FlughafenGarage_Centre = {	
		Pos = {x = -1039.9,y = -2974.81,z = 13.97 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Flugzeug Garage',
		HelpPrompt = "Drücke ~INPUT_PICKUP~ um es auszuparken",
		SpawnPoint = {
			Pos = {x = -1037.4,y = -2970.57,z = 13.97 },
			Heading = 118.68,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um es auszuparken"
		},
		DeletePoint = {
			Pos = {x = -1034.71,y = -2965.98,z = 13.97 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Drücke ~INPUT_PICKUP~ um es einzuparken"
		}, 	
	},
}	