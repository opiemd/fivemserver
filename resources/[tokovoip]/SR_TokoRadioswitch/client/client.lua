-- Made by The Stoned raider 
--Check out our server DOJSRC


ESX = nil
local PlayerData                = {}

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Wait(14)

if IsControlJustPressed(1, Config.Key2) and IsControlPressed(1, Config.Key1)   then
			OpenRadioMenu()	
			
			end
	end
end)



function OpenRadioMenu()
        local _source = source
        local PlayerData = ESX.GetPlayerData(_source)
  local elements = {
    {label = _U('leavepublic'), value = 'leavepublic'}
	
}


    if (PlayerData.job.name == 'police') then

	  table.insert(elements, { label = _U('leavepolice'), value = 'leavepolice'})
	  table.insert(elements, { label = _U('R1'), value = 'radio6'})  --Police
	  table.insert(elements, { label = _U('R3'), value = 'radio8'})  --geteilter Funk/Polizei/Medeziner
	  
end

    if (PlayerData.job.name == 'ambulance') then

	  table.insert(elements, { label = _U('leavepolice'), value = 'leavepolice'})
	  table.insert(elements, { label = _U('R2'), value = 'radio7'})  --Medic
	  table.insert(elements, { label = _U('R3'), value = 'radio8'})  --geteilter Funk/Polizei/Medeziner
	  
end

    if (PlayerData.job.name == 'mechanic') then

	  table.insert(elements, { label = _U('leavepolice'), value = 'leavepolice'})
	  table.insert(elements, { label = _U('R13'), value = 'radio13'})  --ACLS
	  
end

    if (PlayerData.job.name == 'bennys') then

	  table.insert(elements, { label = _U('leavepolice'), value = 'leavepolice'})
	  table.insert(elements, { label = _U('R12'), value = 'radio12'})  --Bennys
	  
end

    if (PlayerData.job.name == 'mafia') then

	  table.insert(elements, { label = _U('leavepolice'), value = 'leavepolice'})	  
	  table.insert(elements, { label = _U('R6'), value = 'radio11'})  --ADMIN 
      table.insert(elements, { label = _U('R1'), value = 'radio6'})  --Police
      table.insert(elements, { label = _U('R2'), value = 'radio7'})  --Medic
      table.insert(elements, { label = _U('R3'), value = 'radio8'})  --geteilter Funk
	  table.insert(elements, { label = _U('R12'), value = 'radio12'})  --ACLS
	  table.insert(elements, { label = _U('R13'), value = 'radio13'})  --Bennys
	  	  
  
	  
end		
      table.insert(elements, { label = _U('CB1'), value = 'radio1'})  
      table.insert(elements, { label = _U('CB2'), value = 'radio2'})  
      table.insert(elements, { label = _U('CB3'), value = 'radio3'}) 
      table.insert(elements, { label = _U('CB4'), value = 'radio4'})  
      table.insert(elements, { label = _U('CB5'), value = 'radio5'}) 	  
      table.insert(elements, { label = _U('AD'), value = 'nothing'}) 
  ESX.UI.Menu.CloseAll()


    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'radio',
      {
        title    = _U('Channel sellect'),
        align    = 'bottom-right',
        elements = elements,
        },

        function(data, menu)

      menu.close()
	  
	  if data.current.value == 'leavepublic' then
if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then  
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
		  end
if channel == 16 then
          exports.tokovoip_script:removePlayerFromRadio(16)
		  end		  
end	  	  
      
	  if data.current.value == 'leavepolice' then
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
		  end
if channel == 2 then  
          exports.tokovoip_script:removePlayerFromRadio(2)
		  end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
		  end
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
		  end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
		  end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
		  end		  
end	  

	 
      if data.current.value == 'radio1' then
if channel == 12 then	  
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then	
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then	
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then	
          exports.tokovoip_script:removePlayerFromRadio(15)
      end
if channel == 1 then
        exports.tokovoip_script:removePlayerFromRadio(1)
    end
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end	
		  exports.tokovoip_script:addPlayerToRadio(11)	
		  channel = 11
	end


      if data.current.value == 'radio2' then
if channel == 11 then	
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 13 then	
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
      end
if channel == 1 then
        exports.tokovoip_script:removePlayerFromRadio(1)
    end
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
		  exports.tokovoip_script:addPlayerToRadio(12)		 
		  channel = 12
    end


 if data.current.value == 'radio3' then

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
		  end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
      end
if channel == 1 then
        exports.tokovoip_script:removePlayerFromRadio(1)
    end
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
		  exports.tokovoip_script:addPlayerToRadio(13)
		  channel = 13
    end	
  
if data.current.value == 'radio4' then
	  
if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
	end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
	end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
	end
if channel == 15 then
          exports.tokovoip_script:removePlayerFromRadio(15)
    end
if channel == 1 then
        exports.tokovoip_script:removePlayerFromRadio(1)
    end
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
		  exports.tokovoip_script:addPlayerToRadio(14)
		  channel = 14
    end
	  
if data.current.value == 'radio5' then

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
    end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
    end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
    end
if channel == 14 then
        exports.tokovoip_script:removePlayerFromRadio(14)
    end
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
    end
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
		  exports.tokovoip_script:addPlayerToRadio(15)
		  channel = 15
      end
	  
      if data.current.value == 'radio6' then -- Police

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
      end
if channel == 15 then
        exports.tokovoip_script:removePlayerFromRadio(15)
    end	
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
    		  exports.tokovoip_script:addPlayerToRadio(1) -- Police 
		channel = 1
      end
	 
      if data.current.value == 'radio7' then -- Medeziner 

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
      end
if channel == 15 then
        exports.tokovoip_script:removePlayerFromRadio(15)
    end
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
    end	
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
		  exports.tokovoip_script:addPlayerToRadio(2) -- Medeziner 
		channel = 2
      end
	  
      if data.current.value == 'radio8' then -- PD/SO/EMS Radio 

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
      end
if channel == 15 then
        exports.tokovoip_script:removePlayerFromRadio(15)
    end
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
    end	
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
		  exports.tokovoip_script:addPlayerToRadio(3) -- PD/SO/EMS Radio 
		channel = 3
      end  
	  


if data.current.value == 'radio11' then -- ADmin 

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
      end
if channel == 15 then
        exports.tokovoip_script:removePlayerFromRadio(15)
    end
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
    end	
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end				
                  exports.tokovoip_script:addPlayerToRadio(4) -- Admin 
            channel = 4
              end
		
      if data.current.value == 'radio12' then -- ACLS 

if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
      end
if channel == 15 then
        exports.tokovoip_script:removePlayerFromRadio(15)
    end
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
    end	
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 5 then
          exports.tokovoip_script:removePlayerFromRadio(5)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
                  exports.tokovoip_script:addPlayerToRadio(6) -- ACLS
            channel = 6
              end 			  
		
      if data.current.value == 'radio13' then -- Bennys 
if channel == 11 then
          exports.tokovoip_script:removePlayerFromRadio(11)
		  end
if channel == 12 then
          exports.tokovoip_script:removePlayerFromRadio(12)
		  end		  
if channel == 13 then
          exports.tokovoip_script:removePlayerFromRadio(13)
		  end
if channel == 14 then
          exports.tokovoip_script:removePlayerFromRadio(14)
      end
if channel == 15 then
        exports.tokovoip_script:removePlayerFromRadio(15)
    end
if channel == 1 then
          exports.tokovoip_script:removePlayerFromRadio(1)
    end	
if channel == 2 then
          exports.tokovoip_script:removePlayerFromRadio(2)
    end
if channel == 3 then
          exports.tokovoip_script:removePlayerFromRadio(3)
    end	
if channel == 4 then
          exports.tokovoip_script:removePlayerFromRadio(4)
    end
if channel == 6 then
          exports.tokovoip_script:removePlayerFromRadio(6)
	end
if channel == 7 then
          exports.tokovoip_script:removePlayerFromRadio(7)
	end
if channel == 8 then
          exports.tokovoip_script:removePlayerFromRadio(8)
	end
                  exports.tokovoip_script:addPlayerToRadio(5) -- Taxi 
            channel = 5
              end


        

      CurrentAction     = 'radio'
      CurrentActionMsg  = _U('Channel sellect')
      CurrentActionData = {}

    end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'radio'
      CurrentActionMsg  = _U('Channel sellect')
      CurrentActionData = {}
    end
  )

end
