-- // Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/notzuv/cloasty/main/uilib"))()
-- // Window
local Window = Library:Window("Script Name", "Game Name", Enum.KeyCode.V)
-- // Tab
local Tab = Window:Tab("Tab Name")
-- // Button
Tab:Button("Button Text", function()
    
end)
-- // Toggle
Tab:Toggle("Toggle Text", function()
    
end)
-- // Slider
Tab:Slider("Slider Text", 0, 100, 50, function()
    
end)
-- // Dropdown
Tab:Dropdown("Dropdown Text", {"Food", "Water"}, function()
    
end)
-- // Colorpicker
Tab:Colorpicker("Colorpicker Text", Color3.fromRGB(255, 255, 255), function()
    
end)