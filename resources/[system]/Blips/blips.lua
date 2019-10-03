local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     --{title="Fahrschule", colour=4, id=498, size=0.7, x = 239.61, y = -1380.72, z = 33.74},
	 --{title="Baumarkt", colour=10, id=566, size=0.7, x = 2748.27, y = 3472.75, z = 55.67},
	 --{title="Marktplatz", colour=17, id=434, size=0.7, x = 199.56, y = -929.72, z = 30.68},
	 --{title="Haustiershop", colour=4, id=442, size=0.7, x = 562.30, y = 2741.61, z = 42.86},
	 --{title="Bank", colour=69, id=108, size=0.7, x = 1175.61, y = 2707.05, z = 44.11},
	 --{title="Bank", colour=69, id=108, size=0.7, x = 243.89, y = 221.46, z = 171.36},
	 --{title="Bank", colour=69, id=108, size=0.7, x = -351.53, y = -49.52, z = 95.13},
	 --{title="Bank", colour=69, id=108, size=0.7, x = 314.19, y = -278.70, z = 57.53},
	 --{title="Bank", colour=69, id=108, size=0.7, x = 147.04, y = -1044.94, z = 49.22},
	 --{title="Bank", colour=69, id=108, size=0.7, x = -1212.93, y = -330.25, z = 14.75},
	 --{title="Bank", colour=69, id=108, size=0.7, x = -1075.47, y = -2558.36, z = 15.7},
	 --{title="Bank", colour=69, id=108, size=0.7, x = -2962.96, y = 482.71, z = 15.7},
	 {title="Burger Shot", colour=1, id=431, size=0.7, x = -1194.69, y = -891.77, z = 13.99},
	 --{title="The Diamond Casino & Resort", colour=29, id=304, size=0.7, x = 930.32, y = 43.11, z = 81},
	 --{title="Lifeinvader (Jobcenter)", colour=10, id=408, size=0.7, x = -1081.79, y = -248.01, z = 37.76},
	 --{title="Polizeistation", colour=29, id=60, size=0.7, x = 1852.22, y = 3691.14, z = 34.26},
	 --{title="Polizeistation", colour=29, id=60, size=0.7, x = 4681.33, y = -5089.06, z = 114.96},
	 --{title="Maze Bank", colour=1, id=78, size=0.7, x = -70.24, y = -799.5, z = 44.22},
	 {title="Sandplatz", colour=16, id=143, size=0.7, x = -110.62, y = 3801.19, z = 31.83},
	 {title="Sand Verarbeiter", colour=16, id=478, size=0.7, x = 803.29, y = 2175.16, z = 50.0},
	 {title="Glas Verkäufer", colour=16, id=280, size=0.7, x = 1542.62, y = 2178.4, z = 50.0},
	 {title="Kartoffeln Verarbeiter", colour=21, id=478, size=0.7, x = -685.39, y = 5794.73, z = 17.33},
	 {title="Kartoffel Feld", colour=21, id=143, size=0.7, x = 570.7, y = 6484.54, z = 30.74},
	 {title="Chipstüten Verkäufer", colour=21, id=280, size=0.7, x=-1043.46, y=5326.97, z=44.56},
	 --{title="Verschmutzte Meeres Früchten", colour=57, id=143, size=0.7, x = 2828.32, y = -744.94, z = 1.10},
	 --{title="Meeres Früchten Wäscher", colour=57, id=478, size=0.7, x = 2854.99, y = 1479.23, z = 24.74},
	 --{title="Meeres Früchten Verkäufer", colour=57, id=280, size=0.7, x = 3802.17, y = 4442.04, z = 4.16},
     --{title="Mandarinen Feld", colour=47, id=143, size=0.7, x = 1984.42, y = 4838.26, z = 42.86},
	 --{title="Mandarinen Verarbeiter", colour=47, id=478, size=0.7, x = 1737.57, y = 3898.81, z = 34.56},
	 --{title="Mandarinen Saft Verkäufer", colour=47, id=280, size=0.7, x = -441.26, y = 295.24, z = 82.23},
	 --{title="Erdöl sammelpunkt", colour=76, id=143, size=0.7, x = 3734.03, y = -5056.29, z = 92.51},
	 --{title="Erdöl Verarbeiter", colour=76, id=478, size=0.7, x = 3541.66, y = -4665.56, z = 113.46},
	 --{title="Plastiktüten Verkäufer", colour=76, id=280, size=0.7, x = 3192.99, y = -4810.26, z = 113.46},
	 --{title="Mietwagen", colour=68, id=198, size=0.8, x = 5330.32, y = -5185.07, z = 82.79},
	 --{title="Fahrzeug verlust Meldung", colour=68, id=67, size=0.8, x = 5352.27, y = -5224.34, z = 82.79},
	 --{title="Mechaniker", colour=5, id=446, size=0.7, x = 5335.47, y = -5194.59, z = 82.79},
	 --{title="Pink Cage Motel", colour=41, id=475, size=1.0, x = 325.89, y = -209.26, z = 82.79},
	 --{title="Klinik", colour=6, id=61, size=1.0, x = 361.02, y = -590.05, z = 82.79}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipColour(info.blip, info.colour)
	  SetBlipScale(info.blip, info.size)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)