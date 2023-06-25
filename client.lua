ESX = exports["es_extended"]:getSharedObject()


CreateThread(function()
    while true do
    Wait(0)
    local coords = GetEntityCoords(PlayerPedId())
    local Pos = Config.Berlokordi
    local distance = #(coords - Pos)


    if distance < 10 then
        DrawMarker(Config.Marker.type, Config.Berlokordi, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.0, Config.Marker.color.r,  Config.Marker.color.g, Config.Marker.color.b, 100, false, false, 2, true, nil, nil, false)
    end

    local wait = 1000
    local stabil = false
    local playerPed = PlayerPedId()
    local vehicle = adder

    if #(coords - Pos) < 1 then
        wait = 2
        if not stabil and not IsEntityDead(playerPed) then
            ESX.ShowHelpNotification('Nyomj ~INPUT_CONTEXT~ hogy bérelj egy biciklit!')
            if IsControlJustReleased(0, 38) and not stabil then
                --- ha más notify-t akarsz akkor ide rakd az exportot
                exports['okokNotify']:Alert('Bicikli bérlő!', 'Sikeresen béreltél egy biciklit!', 5000, 'success', playSound)
                --- ha más notify-t akarsz akkor ide rakd az exportot
                ESX.Game.SpawnVehicle(Config.Modell, Config.Spawnkordi, 219.6804, function(vehicle)
                    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                end)
        end
    end
    end

end
end)


