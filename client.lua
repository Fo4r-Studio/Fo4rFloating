local unavez = true

function FloatingText(title, input, description, coords, y, z)
    if y ~= nil and z ~= nil then
        coords = vector3(coords, y, z)
    end

    text = "<span class='title'>" ..title.. "</span><span class='input'>" ..input.. "</span><span class='description'>" ..description.. "</span>"

    local onScreen, Px, Py = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z + 0.16)

    if onScreen then
        SendNUIMessage({
            action = 'show',
            text = text,
            x = Px * 100,
            y = Py * 100,
            distance = distance
        })
    end
end

--Example
--[[CreateThread(function()
    while true do
        local sleep = 750
        local ped = PlayerPedId()
        local pedc = GetEntityCoords(ped)

        if #(pedc - vec3(482.5684, -998.3243, 30.6898)) < 3 then
            sleep = 0
            FloatingText('Test', 'W', 'Made for fo4r studio',  vector3(482.5684, -998.3243, 30.6898))
        end
        Wait(sleep)
    end
end)]]