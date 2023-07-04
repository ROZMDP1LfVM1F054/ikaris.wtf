function SendEffects(instance, properties, duration, easingStyle, easingDirection)
	local TweenService = game:GetService("TweenService")
	local TweenInfo = TweenInfo.new(duration or 1, easingStyle or Enum.EasingStyle.Sine, easingDirection or Enum.EasingDirection.InOut)
	local Tween = TweenService:Create(instance, TweenInfo, properties)
	Tween:Play()
end

function MakeUiLoader()
	local ScreenGUI = Instance.new("ScreenGui")
	ScreenGUI.Name = "Holder"
	ScreenGUI.Parent = game.CoreGui

	local Camera = game.Workspace.CurrentCamera

	local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = ScreenGUI
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1
	Logo.Position = UDim2.new(0, math.floor(Camera.ViewportSize.X * 0.5), 0, math.floor(Camera.ViewportSize.Y * 0.5))
	Logo.Size = UDim2.new(0, 436, 0, 288)
	Logo.Image = "http://www.roblox.com/asset/?id=13869594717"
	Logo.ImageTransparency = 1
	Logo.AnchorPoint = Vector2.new(0.5, 0.5)

	local Blur = Instance.new("BlurEffect")
	Blur.Parent = game.Lighting
	Blur.Size = 0
	Blur.Name = "LogoBlur"

	-- Load
	SendEffects(Logo, {ImageTransparency = 0}, 0.3)
	SendEffects(Blur, {Size = 20}, 0.3)
	wait(3)
	SendEffects(Logo, {ImageTransparency = 1}, 0.3)
	SendEffects(Blur, {Size = 0}, 0.3)
	wait(0.3)

	wait(5.2)

	ScreenGUI:Destroy()
end

-- Load the loader
MakeUiLoader()
