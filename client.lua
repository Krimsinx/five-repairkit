local result = nil

exports('Minigame', function(interval)
    result = nil -- reset
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'start',
        interval = interval or 50
    })
    while result == nil do
        Wait(100)
    end
    SetNuiFocus(false, false)
    return result
end)

RegisterNUICallback('GetResult', function(data, cb)
    result = data
    cb()
end)
