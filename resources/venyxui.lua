-- init
local library = loadstring(game:HttpGet("http://void-scripts.com/UI/VenyxUi2.lua"))();
local venyx = library.new("SCRIPT NAME HERE!", 5013109572)

-- first page
local page2 = venyx:addPage("Home")
local page = venyx:addPage("Main")
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")
local section10 = page2:addSection("Credits")
local section11 = page2:addSection("Discord Options")
local section12 = page2:addSection("Information")
    
section10:addButton("UI Library Creator - Denosaur")
section10:addButton("NAME HERE")
    
section11:addButton("TEXT HERE")

section11:addButton("TEXT HERE")
    
section12:addButton("TEXT HERE")
section12:addButton("TEXT HERE")
section12:addButton("TEXT HERE")

-- SPLIT --

section1:addToggle("TEXT HERE", nil, function(value)
print("Toggled", value)
end)

section1:addButton("TEXT HERE", function()
    print("touched")
end)

section1:addButton("TEXT HERE", function()
    print("touched")
end)

section1:addSlider("TEXT HER", 0, 100, 100, function(value)
    
end)

section1:addTextbox("TEXT HERE", "TEXT HERE", function(value, t)

end)

section1:addDropdown("TEXT HERE", function(e)

end)

section3:addKeybind("Toggle Keybind", Enum.KeyCode.Four, function()
    venyx:toggle()
    end, function()
end)

venyx:Notify("TEXT HERE", "TEXT HERE")


-- load
venyx:SelectPage(venyx.pages[1], true)