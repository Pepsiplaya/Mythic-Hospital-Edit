local playerInjury = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetCharsInjuries(source)
return playerInjury[source]
end

RegisterServerEvent('mythic_hospital:server:SyncInjuries')
AddEventHandler('mythic_hospital:server:SyncInjuries', function(data)
local src = source
playerInjury[src] = data
end)