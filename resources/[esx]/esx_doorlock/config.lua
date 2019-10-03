Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		objName = 'v_ilev_ph_door01',
		objCoords  = {x = 434.747, y = -980.618, z = 30.839},
		textCoords = {x = 434.747, y = -981.50, z = 31.50},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_ph_door002',
		objCoords  = {x = 434.747, y = -983.215, z = 30.839},
		textCoords = {x = 434.747, y = -982.50, z = 31.50},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 449.698, y = -986.469, z = 30.689},
		textCoords = {x = 450.104, y = -986.388, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = 464.361, y = -984.678, z = 43.834},
		textCoords = {x = 464.361, y = -984.050, z = 44.834},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 461.286, y = -985.320, z = 30.839},
		textCoords = {x = 461.50, y = -986.00, z = 31.50},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 452.618, y = -982.702, z = 33.80},
		textCoords = {x = 453.079, y = -982.600, z = 33.80},
		authorizedJobs = { 'mafia' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objCoords  = {x = 447.238, y = -980.630, z = 30.689},
		textCoords = {x = 447.200, y = -980.010, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 443.97, y = -989.033, z = 30.6896},
		textCoords = {x = 444.020, y = -989.445, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 445.37, y = -988.705, z = 30.6896},
		textCoords = {x = 445.350, y = -989.445, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	-- 
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 463.815, y = -992.686, z = 24.9149},
		textCoords = {x = 463.30, y = -992.686, z = 25.10},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.381, y = -993.651, z = 24.914},
		textCoords = {x = 461.806, y = -993.308, z = 25.064},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.331, y = -998.152, z = 24.914},
		textCoords = {x = 461.806, y = -998.800, z = 25.064},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.704, y = -1001.92, z = 24.9149},
		textCoords = {x = 461.806, y = -1002.450, z = 25.064},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = {x = 463.478, y = -1003.538, z = 25.005},
		textCoords = {x = 464.00, y = -1003.50, z = 25.50},
		authorizedJobs = { 'police' },
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 467.371, y = -1014.452, z = 26.536},
		textCoords = {x = 468.09, y = -1014.452, z = 27.1362},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 469.967, y = -1014.452, z = 26.536},
		textCoords = {x = 469.35, y = -1014.452, z = 27.136},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objCoords  = {x = 488.894, y = -1017.210, z = 27.146},
		textCoords = {x = 488.894, y = -1020.210, z = 30.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objCoords  = {x = 1855.105, y = 3683.516, z = 34.266},
		textCoords = {x = 1855.105, y = 3683.516, z = 35.00},
		authorizedJobs = { 'police' },
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.14, y = 6015.685, z = 31.716},
		textCoords = {x = -443.14, y = 6015.685, z = 32.00},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.951, y = 6016.622, z = 31.716},
		textCoords = {x = -443.951, y = 6016.622, z = 32.00},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1844.998, y = 2604.810, z = 44.638},
		textCoords = {x = 1844.998, y = 2608.50, z = 48.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1818.542, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	--
	-- Addons
	--

	--[[
	-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
	{
		objName = 'prop_gate_airport_01',
		objCoords  = {x = 420.133, y = -1017.301, z = 28.086},
		textCoords = {x = 420.133, y = -1021.00, z = 32.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	}
	--]]
	-- F.I.B T�ren---------
	{
		objName = 'v_ilev_fibl_door01',
		objCoords  = {x = 105.4, y = -745.75, z = 45.75},
		textCoords = {x = 105.4, y = -745.75, z = 46.20},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_fibl_door02',
		objCoords  = {x = 105.74, y = -743.59, z = 45.75},
		textCoords = {x = 105.74, y = -743.59, z = 46.20},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 146.7166, y = -755.5300, z = 241.1519},
		textCoords = {x = 146.7166, y = -755.5300, z = 242.1519},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},

	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 138.7746, y = -768.1416, z = 241.1521},
		textCoords = {x = 138.7746, y = -768.1416, z = 242.1521},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},

	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 127.4972, y = -763.9457, z = 241.1520},
		textCoords = {x = 127.4972, y = -763.9457, z = 242.1520},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},

	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 151.2399, y = -742.8903, z = 241.1519},
		textCoords = {x = 151.2399, y = -742.8903, z = 242.1519},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},

	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 152.7519, y = -738.8159, z = 241.1519},
		textCoords = {x = 152.7519, y = -738.8159, z = 242.1519},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},

	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 121.2496, y = -756.9983, z = 241.1519},
		textCoords = {x = 121.2496, y = -756.9983, z = 242.1519},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},

	{
		objName = 'v_ilev_fib_door2',
		objCoords  = {x = 119.0227, y = -734.0013, z = 241.1520},
		textCoords = {x = 119.0227, y = -734.0013, z = 242.1520},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 14,
	},
	-- Polizei Trainigs Gel�nde - T�ren---------
	{
		objName = 'hei_prop_sync_door_09',
		objCoords  = {x = 453.6, y = -3078.87, z = 6.07},
		textCoords = {x = 453.6, y = -3078.87, z = 6.50},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	-- Autoh�ndler - T�ren---------
	{
		objName = 'v_ilev_bl_shutter2',
		objCoords  = {x = -1130.58, y = -1687.63, z = 5.45},
		textCoords = {x = -1130.58, y = -1687.63, z = 4.45},
		authorizedJobs =  { 'vehsale' },
		locked = false,
		distance = 10.5,
	},
	
	{
		objName = 'v_ilev_bl_shutter2',
		objCoords  = {x = -1123.52, y = -1698.15, z = 5.24},
		textCoords = {x = -1123.52, y = -1698.15, z = 4.45},
		authorizedJobs =  { 'vehsale' },
		locked = false,
		distance = 10.5,
	},
	
	{
		objName = 'hei_prop_ss1_mpint_door_r',
		objCoords  = {x = -1169.79, y = -1706.84, z = 5.39},
		textCoords = {x = -1169.79, y = -1706.84, z = 5.39},
		authorizedJobs =  { 'vehsale' },
		locked = false,
		distance = 2.5,
	},
	
	{
		objName = 'hei_prop_ss1_mpint_door_r',
		objCoords  = {x = -1205.91, y = -1732.19, z = 5.39},
		textCoords = {x = -1205.91, y = -1732.19, z = 5.39},
		authorizedJobs =  { 'vehsale' },
		locked = false,
		distance = 2.5,
	},
	
	{
		objName = 'hei_prop_ss1_mpint_door_r',
		objCoords  = {x = -1201.39, y = -1722.63, z = 5.39},
		textCoords = {x = -1201.39, y = -1722.63, z = 5.39},
		authorizedJobs =  { 'vehsale' },
		locked = false,
		distance = 2.5,
	},
	
	{
		objName = 'hei_prop_dt1_20_mp_gar2',
		objCoords  = {x = -1161.00, y = -1710.41, z = 4.39},
		textCoords = {x = -1161.00, y = -1710.41, z = 4.39},
		authorizedJobs =  { 'vehsale' },
		locked = false,
		distance = 10.4,
	},
		-- Krankenhaus - T�ren---------
	
	{
		objName = 'v_ilev_cor_firedoorwide',
		objCoords  = {x = 337.95, y = -583.46, z = 28.79},
		textCoords = {x = 337.95, y = -583.46, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_cor_firedoorwide',
		objCoords  = {x = 333.15, y = -588.41, z = 28.79},
		textCoords = {x = 333.15, y = -588.41, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_cor_offdoora',
		objCoords  = {x = 324.7, y = -590.58, z = 28.79},
		textCoords = {x = 324.7, y = -590.58, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 313.13, y = -581.1, z = 28.79},
		textCoords = {x = 313.13, y = -581.1, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 314.31, y = -581.54, z = 28.79},
		textCoords = {x = 314.31, y = -581.54, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 342.16, y = -572.18, z = 28.79},
		textCoords = {x = 342.16, y = -572.18, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 342.44, y = -571.06, z = 28.79},
		textCoords = {x = 342.44, y = -571.06, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 345.36, y = -568.65, z = 28.79},
		textCoords = {x = 345.36, y = -568.65, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 346.54, y = -569.01, z = 28.79},
		textCoords = {x = 346.54, y = -569.01, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 345.81, y = -572.3, z = 28.79},
		textCoords = {x = 345.81, y = -572.3, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 345.77, y = -573.49, z = 28.79},
		textCoords = {x = 345.77, y = -573.49, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'v_ilev_cor_doorlift01',
		objCoords  = {x = 338.36, y = -593.82, z = 28.79},
		textCoords = {x = 338.36, y = -593.82, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'v_ilev_cor_doorlift02',
		objCoords  = {x = 337.82, y = -594.84, z = 28.79},
		textCoords = {x = 337.82, y = -594.84, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'hei_prop_heist_cutscene_doorc_r',
		objCoords  = {x = 320.24, y = -559.85, z = 28.79},
		textCoords = {x = 320.24, y = -559.85, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
	
	{
		objName = 'hei_prop_heist_cutscene_doorc_r',
		objCoords  = {x = 319.05, y = -560.42, z = 28.79},
		textCoords = {x = 319.05, y = -560.42, z = 29.20},
		authorizedJobs =  { 'ambulance' },
		locked = true,
		distance = 2.5,
	},	
		-- Admin - T�ren---------
	{
		objName = 'v_ilev_lester_doorfront',
		objCoords  = {x = 1274.49, y = -1720.97, z = 54.68},
		textCoords = {x = 1274.49, y = -1720.97, z = 55.10},
		authorizedJobs =  { 'mafia' },
		locked = true,
		distance = 8.5,
	},
		-- Police - T�ren-2---------	
	--[[{
		objName = 'v_ilev_ph_gendoor006',
		objCoords  = {x = 465.11, y = -989.39, z = 25.30},
		textCoords = {x = 465.11, y = -989.39, z = 25.30},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_ph_gendoor006',
		objCoords  = {x = 465.09, y = -990.71, z = 25.30},
		textCoords = {x = 465.09, y = -990.71, z = 25.30},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	]]
			-- Tür - LOST---------	
	{
		objName = 'v_ilev_lostdoor',
		objCoords  = {x = 982.09, y = -103.12, z = 74.85},
		textCoords = {x = 982.09, y = -103.12, z = 75.30},
		authorizedJobs =  { 'mafia' },
		locked = true,
		distance = 9.5,
	},
	         -- Tür - Sandy Shores - Polizei
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 1856.89, y = 3689.54, z = 33.29},
		textCoords = {x = 1856.90, y = 3689.54, z = 34.29},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 1851.1, y = 3683.16, z = 34.29},
		textCoords = {x = 1851.1, y = 3683.16, z = 34.29},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 1848.89, y = 3690.33, z = 34.29},
		textCoords = {x = 1848.89, y = 3690.33, z = 34.29},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 1848.76, y = 3681.19, z = 34.29},
		textCoords = {x = 1848.76, y = 3681.19, z = 34.29},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 1846.4, y = 3685.39, z = 34.29},
		textCoords = {x = 1846.4, y = 3685.39, z = 34.29},
		authorizedJobs =  { 'police' },
		locked = true,
		distance = 2.5,
	},
	
	 -- Tür - Wohnhaus - Adler
	 
	{
		objName = 'v_ilev_mm_door',
		objCoords  = {x = -807.05, y = 186.24, z = 72.48},
		textCoords = {x = -807.05, y = 186.24, z = 72.48},
		authorizedJobs =  { 'vehsale' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_mm_doorm_r',
		objCoords  = {x = -815.75, y = 178.04, z = 72.48},
		textCoords = {x = -815.75, y = 178.04, z = 40.48},
		authorizedJobs =  { 'vehsale' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'v_ilev_mm_doorm_l',
		objCoords  = {x = -816.16, y = 179.14, z = 72.15},
		textCoords = {x = -815.93, y = 178.46, z = 72.48},
		authorizedJobs =  { 'vehsale' },
		locked = true,
		distance = 2.5,
	},

	{
		objName = 'prop_bh1_48_gate_1',
		objCoords  = {x = -848.55, y = 178.54, z = 69.85},
		textCoords = {x = -848.55, y = 178.54, z = 69.85},
		authorizedJobs =  { 'vehsale' },
		locked = true,
		distance = 2.5,
	},
	
	{
		objName = 'prop_lrggate_02_ld',
		objCoords  = {x = -843.61, y = 155.25, z = 66.86},
		textCoords = {x = -843.75, y = 158.78, z = 66.82},
		authorizedJobs =  { 'vehsale' },
		locked = true,
		distance = 20.5,
	},
	
		 -- Tür - Mafia - Eingans Tor
	 
	{
		objName = 'prop_facgate_07b',
		objCoords  = {x = 965.14, y = -141.74, z = 74.48},
		textCoords = {x = 960.6, y = -139.51, z = 74.47},
		authorizedJobs =  { 'mafia' },
		locked = true,
		distance = 20.5,
	},
	
			 -- Tür - Bennys - Eingans Tor
	--[[ 
	{
		objName = 'prop_facgate_07b',
		objCoords  = {x = -180.68, y = -1292.23, z = 31.32},
		textCoords = {x = -183.79, y = -1292.67, z = 31.44},
		authorizedJobs =  { 'bennys' },
		locked = true,
		distance = 15.5,
	},

	{
		objName = 'hei_prop_station_gate',
		objCoords  = {x = -243.09, y = -1302.39, z = 31.32},
		textCoords = {x = -243.36, y = -1305.36, z = 31.44},
		authorizedJobs =  { 'bennys' },
		locked = true,
		distance = 15.5,
	},
	]]
}