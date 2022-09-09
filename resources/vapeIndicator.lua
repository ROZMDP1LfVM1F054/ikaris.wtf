-- MADE BY AUON GIVE CREDIT IF YOUR USING IT --

local lib = {}

function lib:newIndicator(title)
    local arsenicStatGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local mainCorner = Instance.new("UICorner")
    local elementsListing = Instance.new("UIListLayout")
    local elementsPadding = Instance.new("UIPadding")
    local StatColorGui = Instance.new("Frame")
    local StateTitle = Instance.new("TextLabel")

    arsenicStatGui.Name = "arsenicStatGui"
    arsenicStatGui.Parent = game:GetService("CoreGui")
    arsenicStatGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    arsenicStatGui.ResetOnSpawn = false

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = arsenicStatGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.Position = UDim2.new(0, 10, 0.402743131, 0)
    MainFrame.Size = UDim2.new(0, 150, 0, 141)

    mainCorner.CornerRadius = UDim.new(0, 3)
    mainCorner.Name = "mainCorner"
    mainCorner.Parent = MainFrame

    elementsListing.Name = "elementsListing"
    elementsListing.Parent = MainFrame
    elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
    elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
    elementsListing.Padding = UDim.new(0, 5)

    elementsPadding.Name = "elementsPadding"
    elementsPadding.Parent = MainFrame
    elementsPadding.PaddingLeft = UDim.new(0, 3)
    elementsPadding.PaddingRight = UDim.new(0, 5)
    elementsPadding.PaddingTop = UDim.new(0, 23)

    StatColorGui.Name = "StatColorGui"
    StatColorGui.Parent = MainFrame
    StatColorGui.BackgroundColor3 = Color3.fromRGB(44, 120, 224)
    StatColorGui.BorderSizePixel = 0
    StatColorGui.Position = UDim2.new(0, 4, 0, 0)
    StatColorGui.Size = UDim2.new(0, 136, 0, 2)

    StateTitle.Name = "StateTitle"
    StateTitle.Parent = StatColorGui
    StateTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    StateTitle.BackgroundTransparency = 1.000
    StateTitle.BorderSizePixel = 0
    StateTitle.Position = UDim2.new(-0.0147058824, -4, -11.5, 0)
    StateTitle.Size = UDim2.new(0, 150, 0, 23)
    StateTitle.Font = Enum.Font.Gotham
    StateTitle.Text = title
    StateTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    StateTitle.TextSize = 14.000
    StateTitle.TextWrapped = true
    coroutine.wrap(
        function()
            while wait() do
                StatColorGui.BackgroundColor3 = game:GetService("CoreGui").arsenicui.Main.TabHold.TabBtn.TabBtnIndicator.BackgroundColor3
            end
        end
    )()

    local libaray = {}
    
    function libaray:createIndicator(value)
        local StatGui = Instance.new("Frame")
        local StatsTitle = Instance.new("TextLabel")

        StatGui.Name = "StatGui"
        StatGui.Parent = MainFrame
        StatGui.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        StatGui.BorderSizePixel = 0
        StatGui.Position = UDim2.new(-0.0316901393, 6, 0.0514705889, 0)
        StatGui.Size = UDim2.new(0, 137, 0, 31)

        StatsTitle.Name = "StatsTitle"
        StatsTitle.Parent = StatGui
        StatsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        StatsTitle.BackgroundTransparency = 1.000
        StatsTitle.Position = UDim2.new(0.0149253728, 4, 0, 0)
        StatsTitle.Size = UDim2.new(0, 68, 0, 31)
        StatsTitle.Font = Enum.Font.Gotham
        StatsTitle.Text = value
        StatsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        StatsTitle.TextSize = 14.000
        StatsTitle.TextWrapped = true
        StatsTitle.TextXAlignment = Enum.TextXAlignment.Left
        return lib
    end
    return libaray
end
