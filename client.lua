ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('illegal', 'main', RageUI.CreateMenu("~r~Shop Illégal", "~r~Tu veut quoi?!")) 
RMenu:Get('illegal', 'main'):SetRectangleBanner(0, 0, 0, 0)
RMenu.Add('illegal', 'armes blanches', RageUI.CreateSubMenu(RMenu:Get('illegal', 'main'), "Armes Blanches", "Vente ~r~d'armes blanches"))
RMenu.Add('illegal', 'jetables', RageUI.CreateSubMenu(RMenu:Get('illegal', 'main'), "Jetables", "~r~"))

Citizen.CreateThread(function()
    while true do
         RageUI.IsVisible(RMenu:Get('illegal', 'main'), true, true, true, function()
          
      RageUI.Button("Armes Blanches", "~r~J'ai que sa pour l'instant~w~", {RightLabel = "~r~→"},true, function()
      end, RMenu:Get('illegal', 'armes blanches'))

      RageUI.Button("Jetables", "~r~J'ai que sa pour l'instant~w~", {RightLabel = "~r~→"},true, function()
      end, RMenu:Get('illegal', 'jetables'))

      
    end, function()
    end)
 
----------------------------- Armess blanches -----------------------------

        RageUI.IsVisible(RMenu:Get('illegal', 'armes blanches'), true, true, true, function()
            
            RageUI.Button("~r~Couteau", "Avec ça tu pourras te défendre en étant discret.", {RightLabel = "~r~ 1200$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('player:BuyCouteau')
                end 
            end) 

            RageUI.Button("~r~Machete", "Avec ça tu pourras te défendre en faisant des dégats.", {RightLabel = "~r~ 2000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('player:BuyMachete')
                end 
            end) 

            RageUI.Button("~r~Pied De Biche", "Avec ça tu pourras te défendre en faisant des dégats.", {RightLabel = "~r~ 1250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('player:BuyBiche')
                end 
            end) 

            RageUI.Button("~r~Hache", "Avec ça tu pourras te défendre en faisant des dégats.", {RightLabel = "~r~ 2000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('player:BuyHache')
                end 
            end) 
        end, function()
        end)

----------------------------- Jetables -----------------------------

            RageUI.IsVisible(RMenu:Get('illegal', 'jetables'), true, true, true, function()

            RageUI.Button("~r~Lacrymogenes", "Avec ça tu pourras intoxiquez les gens", {RightLabel = "~y~ 3500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('player:BuyLacry')
                end 
            end) 
        end, function()
        end)
 
----------------------------- Drogues -----------------------------

RageUI.IsVisible(RMenu:Get('illegal', 'drogues'), true, true, true, function()
                 
    RageUI.Button("~r~Weed", "Avec ça tu seras en pleine forme !", {RightLabel = "~y~ 95$"}, true, function(Hovered, Active, Selected)
        if (Selected) then
            TriggerServerEvent('player:BuyWeed')
        end 
    end)
    
    RageUI.Button("~r~Coke", "Avec ça tu seras en pleine forme !", {RightLabel = "~y~ 150$"}, true, function(Hovered, Active, Selected)
        if (Selected) then
            TriggerServerEvent('player:BuyCoke')
        end 
    end) 

    RageUI.Button("~r~Opium", "Avec ça tu seras en pleine forme !", {RightLabel = "~y~ 250$"}, true, function(Hovered, Active, Selected)
        if (Selected) then
            TriggerServerEvent('player:BuyOpium')
        end 
    end) 

    RageUI.Button("~r~Meth", "Avec ça tu seras en pleine forme !", {RightLabel = "~y~ 350$"}, true, function(Hovered, Active, Selected)
        if (Selected) then
            TriggerServerEvent('player:BuyMeth')
        end 
    end)
    
            end, function()
                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)










    local position = {
        {x = 993.0751 , y = -1555.5017, z = 30.7548, } 
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 2.0 then

                   RageUI.Text({
                        message = "Appuye sur [~r~E~w~] pour parler à ~r~Nelson",
                        time_display = 1
                    })

                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('illegal', 'main'), not RageUI.Visible(RMenu:Get('illegal', 'main')))
                    end
                end
            end
        end
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("s_m_y_dealer_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)    
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "s_m_y_dealer_01", 992.04, -1555.5, 29.75, 279.38, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)