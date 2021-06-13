ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

----------------------------- Armes -----------------------------

RegisterNetEvent('player:BuyLacry')
AddEventHandler('player:BuyLacry', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 3500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_smokegrenade', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

----------------------------- Armes Blanches -----------------------------

RegisterNetEvent('player:BuyCouteau')
AddEventHandler('player:BuyCouteau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1200
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_knife', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('player:BuyMachete')
AddEventHandler('player:BuyMachete', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_machete', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('player:BuyBiche')
AddEventHandler('player:BuyBiche', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_crowbar', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('player:BuyHache')
AddEventHandler('player:BuyHache', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_hatchet', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)