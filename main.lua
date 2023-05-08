--[[



██╗██╗░░██╗░█████╗░██████╗░██╗░██████╗░░░░██████╗░█████╗░██╗░░░██╗██████╗░░█████╗░███████╗
██║██║░██╔╝██╔══██╗██╔══██╗██║██╔════╝░░░██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔══██╗██╔════╝
██║█████═╝░███████║██████╔╝██║╚█████╗░░░░╚█████╗░██║░░██║██║░░░██║██████╔╝██║░░╚═╝█████╗░░
██║██╔═██╗░██╔══██║██╔══██╗██║░╚═══██╗░░░░╚═══██╗██║░░██║██║░░░██║██╔══██╗██║░░██╗██╔══╝░░
██║██║░╚██╗██║░░██║██║░░██║██║██████╔╝██╗██████╔╝╚█████╔╝╚██████╔╝██║░░██║╚█████╔╝███████╗
╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═════╝░╚═╝╚═════╝░░╚════╝░░╚═════╝░╚═╝░░╚═╝░╚════╝░╚══════╝



--]]

repeat wait() until game:IsLoaded()

getgenv().user_settings = {
    script_enabled = true;
    joindiscordserver = false;
}

local library = loadstring(syn.request({Url = 'https://raw.githubusercontent.com/privatestand/ikarisbooth/main/config/uilibrary.lua'}))
local window = library:new({name = "ikaris", sub = ".booth", offset = 0, size = UDim2.new(0.2, 159, 0.33, 0)})

--------------------------------------------------------------- // cheat toggles // ---------------------------------------------------------------

local Workspace = game:GetService("Workspace")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")

local ScriptSettings = {
    Main = {
        Enabled = true;
    };
    Misc = {
        Enabled = true;
    };
}

library:set_open(true)

--------------------------------------------------------------- // cheat functions // ---------------------------------------------------------------

function InstanceAPI(class, properties)
    local instance = Instance.new(class)
    for prop, value in pairs(properties) do
        instance[prop] = value
    end
    return instance
end