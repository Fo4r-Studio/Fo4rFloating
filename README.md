# Fo4rFloating

Simple example for the use of this resource

exports['Fo4rFloating']:FloatingText(title,input,description)
```
CreateThread(function()
    while true do
        local sleep = 750
        local ped = PlayerPedId()
        local pedc = GetEntityCoords(ped)
        if #(pedc - vec3(5.5937, -1452.1647, 30.5350)) < 3 then
            sleep = 0
            exports['Fo4rFloating']:FloatingText('Test', 'W', 'Made for fo4rstudio',  vector3(5.5937, -1452.1647, 30.5350))
        end
        Wait(sleep)
    end
end)
```
