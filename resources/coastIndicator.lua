-- MADE BY AUON GIVE CREDIT IF YOUR USING IT --

-- MADE BY AUON GIVE CREDIT IF YOUR USING IT --

local lib = {}

function lib:newIndicator(title)
    local arsenicStatsGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainFrameCorner = Instance.new("UICorner")
    local StatsSection = Instance.new("Frame")
    local TitleLine = Instance.new("Frame")
    local MainFrameCorner_3 = Instance.new("UICorner")
    local StatsTitle = Instance.new("TextLabel")
    local MainFrameCorner_2 = Instance.new("UICorner")
    local elementsListing = Instance.new("UIListLayout")
    local elementsPadding = Instance.new("UIPadding")
    local MainFrameGlow3 = Instance.new("ImageLabel")
    local MainFrameGlow2 = Instance.new("ImageLabel")
    local MainFrameGlow1 = Instance.new("ImageLabel")

    arsenicStatsGui.Name = "arsenicStatsGui"
    arsenicStatsGui.Parent = game.CoreGui
    arsenicStatsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = arsenicStatsGui
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0, 90, 0.402999997, 0)
    MainFrame.Size = UDim2.new(0, 150, 0, 185)
    
    MainFrameCorner.CornerRadius = UDim.new(0, 3)
    MainFrameCorner.Name = "MainFrameCorner"
    MainFrameCorner.Parent = MainFrame
    
    StatsSection.Name = "StatsSection"
    StatsSection.Parent = MainFrame
    StatsSection.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    StatsSection.BorderSizePixel = 0
    StatsSection.Position = UDim2.new(0.0548918247, 0, 0.226087809, 0)
    StatsSection.Size = UDim2.new(0, 132, 0, 136)

    StatsTitle.Name = "StatsTitle"
    StatsTitle.Parent = MainFrame
    StatsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    StatsTitle.BackgroundTransparency = 1.000
    StatsTitle.Size = UDim2.new(0, 149, 0, 47)
    StatsTitle.Font = Enum.Font.Gotham
    StatsTitle.Text = title
    StatsTitle.TextColor3 = Color3.fromRGB(195, 195, 195)
    StatsTitle.TextSize = 14.000
    StatsTitle.TextWrapped = true

    TitleLine.Name = "TitleLine"
    TitleLine.Parent = MainFrame
    TitleLine.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    TitleLine.BackgroundTransparency = 0.100
    TitleLine.BorderSizePixel = 0
    TitleLine.Position = UDim2.new(0.106666669, 0, 0.172635287, 0)
    TitleLine.Size = UDim2.new(0, 117, 0, 2)
    
    MainFrameCorner_2.CornerRadius = UDim.new(0, 3)
    MainFrameCorner_2.Name = "MainFrameCorner"
    MainFrameCorner_2.Parent = StatsSection
    
    elementsListing.Name = "elementsListing"
    elementsListing.Parent = StatsSection
    elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
    elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
    elementsListing.Padding = UDim.new(0, 5)
    
    elementsPadding.Name = "elementsPadding"
    elementsPadding.Parent = StatsSection
    elementsPadding.PaddingTop = UDim.new(0, 6)
    
    MainFrameGlow3.Name = "MainFrameGlow3"
    MainFrameGlow3.Parent = MainFrame
    MainFrameGlow3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    MainFrameGlow3.BackgroundTransparency = 1.000
    MainFrameGlow3.Position = UDim2.new(-0.0973860696, 0, -0.0767357051, 0)
    MainFrameGlow3.Size = UDim2.new(0, 178, 0, 212)
    MainFrameGlow3.ZIndex = 0
    MainFrameGlow3.Image = "rbxassetid://5028857084"
    MainFrameGlow3.ImageColor3 = Color3.fromRGB(15, 15, 15)
    MainFrameGlow3.ScaleType = Enum.ScaleType.Slice
    MainFrameGlow3.SliceCenter = Rect.new(24, 24, 276, 276)
    
    MainFrameGlow2.Name = "MainFrameGlow2"
    MainFrameGlow2.Parent = MainFrame
    MainFrameGlow2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    MainFrameGlow2.BackgroundTransparency = 2.000
    MainFrameGlow2.Position = UDim2.new(-0.0973860696, 0, -0.0767357051, 0)
    MainFrameGlow2.Size = UDim2.new(0, 178, 0, 212)
    MainFrameGlow2.ZIndex = 0
    MainFrameGlow2.Image = "rbxassetid://5028857084"
    MainFrameGlow2.ImageColor3 = Color3.fromRGB(15, 15, 15)
    MainFrameGlow2.ScaleType = Enum.ScaleType.Slice
    MainFrameGlow2.SliceCenter = Rect.new(24, 24, 276, 276)

    MainFrameCorner_3.CornerRadius = UDim.new(0, 9)
    MainFrameCorner_3.Name = "MainFrameCorner"
    MainFrameCorner_3.Parent = TitleLine

    local libaray = {}
    
    function libaray:createIndicator(value)
        local StatFrame1 = Instance.new("Frame")
        local StatsTitle1 = Instance.new("TextLabel")

        StatFrame1.Name = "StatFrame1"
        StatFrame1.Parent = StatsSection
        StatFrame1.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
        StatFrame1.BackgroundTransparency = 0.100
        StatFrame1.BorderSizePixel = 0
        StatFrame1.Position = UDim2.new(0.0512593575, 0, 0.0817767903, 0)
        StatFrame1.Size = UDim2.new(0, 118, 0, 27)
        
        StatsTitle1.Name = "StatsTitle1"
        StatsTitle1.Parent = StatFrame1
        StatsTitle1.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
        StatsTitle1.BackgroundTransparency = 1.000
        StatsTitle1.Position = UDim2.new(0, 4, 0, 0)
        StatsTitle1.Size = UDim2.new(0, 117, 0, 27)
        StatsTitle1.Font = Enum.Font.Gotham
        StatsTitle1.Text = value
        StatsTitle1.TextColor3 = Color3.fromRGB(255, 255, 255)
        StatsTitle1.TextSize = 14.000
        StatsTitle1.TextWrapped = true
        StatsTitle1.TextXAlignment = Enum.TextXAlignment.Left
        return StatsTitle1
    end
    return libaray
end
return lib
