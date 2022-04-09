local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zuvvymwa/zynixudev/main/library/blueui"))()

local Window = Library:Window("Script Name", "NAME HERE", Enum.KeyCode.V)

local Tab = Window:Tab("Tab Name")

Tab:Button("Button Text", function()
    
end)

Tab:Toggle("Toggle Text", function()
    
end)

Tab:Slider("Slider Text", 0, 100, 50, function()
    
end)

Tab:Dropdown("Dropdown Text", {"Food", "Water"}, function()
    
end)

Tab:Colorpicker("Colorpicker Text", Color3.fromRGB(255, 255, 255), function()
    
end)
