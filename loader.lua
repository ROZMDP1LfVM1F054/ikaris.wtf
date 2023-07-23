local IMAGE_URL = "http://www.roblox.com/asset/?id=13869594717"

local DURATION = 5
local END_POSITION = Vector3.new(10, 20, 8)

local RunService = game:GetService("RunService")
local Lighting = game.Lighting
local Workspace = game.Workspace
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

local Camera = Workspace.CurrentCamera
local cameraUpdate
local blurEffect
local imageLabel

function SendEffects(instance, properties, duration, easingStyle, easingDirection)
	local TweenService = game:GetService("TweenService")
	local TweenInfo = TweenInfo.new(duration or 1, easingStyle or Enum.EasingStyle.Sine, easingDirection or Enum.EasingDirection.InOut)
	local Tween = TweenService:Create(instance, TweenInfo, properties)
	Tween:Play()
end

local function enableBlur(enabled)
    if enabled then
        blurEffect = Instance.new("BlurEffect", Lighting)
        blurEffect.Size = 5
    else
        if blurEffect and blurEffect.Parent == Lighting then
            blurEffect:Destroy()
        end
    end
end

local function createImage()
	local ScreenGUI = Instance.new("ScreenGui")
	ScreenGUI.Name = "Holder"
	ScreenGUI.Parent = game.CoreGui

    local imageId = HttpService:GenerateGUID(false)
    local image = Instance.new("ImageLabel")
    image.Name = "IntroImage"
    image.Image = IMAGE_URL
    image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    image.BackgroundTransparency = 1
    image.Size = UDim2.new(0, 436, 0, 288)
    image.Position = UDim2.new(0.5, -218, 0.5, -144)
    image.ImageTransparency = 1
    image.Parent = ScreenGUI

    SendEffects(image, {ImageTransparency = 0}, 0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    task.delay(0.8, function()
        SendEffects(image, {ImageTransparency = 1}, 0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    end)

    imageLabel = image
end

local function moveCamera()
    local startTime = tick()
    local startPos = Camera.CFrame
    local endPos = CFrame.new(END_POSITION)

    local function updateCamera()
        local currentTime = tick() - startTime
        local t = math.clamp(currentTime / DURATION, 0, 1)
        local newPos = startPos:Lerp(endPos, t)

        Camera.CFrame = newPos

        if t == 1 then
            enableBlur(false)
            cameraUpdate:Disconnect()

            if imageLabel then
                imageLabel:Destroy()
            end
        end
    end

    cameraUpdate = RunService.RenderStepped:Connect(updateCamera)
end

enableBlur(true)
createImage()
moveCamera()
