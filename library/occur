
local Occur = {}

do
    if game:GetService("CoreGui"):FindFirstChild("Ocur") then
        game:GetService("CoreGui"):FindFirstChild("Ocur"):Destroy()
    end
end

function Occur:Load(theme, top)
    local ThemeColor = theme.Theme
    local Ocur = Instance.new("ScreenGui")
    Ocur.Name = "Ocur"
    Ocur.Parent = game:GetService("CoreGui")
    Ocur.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Ocur.ResetOnSpawn = false
    
    local OcurShadow = Instance.new("ImageLabel")
    OcurShadow.Name = "OcurShadow"
    OcurShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    OcurShadow.Size = UDim2.new(0, 712, 0, 530)
    OcurShadow.BackgroundTransparency = 1
    OcurShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    OcurShadow.BorderSizePixel = 0
    OcurShadow.ScaleType = Enum.ScaleType.Slice
    OcurShadow.ImageTransparency = 0.2
    OcurShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    OcurShadow.Image = "rbxassetid://1316045217"
    OcurShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    OcurShadow.Parent = Ocur
    
    local Window = Instance.new("Frame")
    Window.Name = "Window"
    Window.ZIndex = 2
    Window.Size = UDim2.new(0, 700, 0, 518)
    Window.BackgroundTransparency = 0.6
    Window.Position = UDim2.new(0, 6, 0, 6)
    Window.BorderSizePixel = 0
    Window.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Window.Parent = OcurShadow
    
    local WindowUIStroke = Instance.new("UIStroke")
    WindowUIStroke.Name = "WindowUIStroke"
    WindowUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    WindowUIStroke.Transparency = 0.8
    WindowUIStroke.Color = ThemeColor or Color3.fromRGB(255, 255, 255)
    WindowUIStroke.Parent = Window
    
    local WindowUICorner = Instance.new("UICorner")
    WindowUICorner.Name = "WindowUICorner"
    WindowUICorner.CornerRadius = UDim.new(0, 2)
    WindowUICorner.Parent = Window
    
    local TabContainer = Instance.new("ScrollingFrame")
    TabContainer.Name = "TabContainer"
    TabContainer.ZIndex = 3
    TabContainer.Size = UDim2.new(0, 166, 0, 468)
    TabContainer.BackgroundTransparency = 1
    TabContainer.Position = UDim2.new(0, 0, 0, 42)
    TabContainer.Active = true
    TabContainer.BorderSizePixel = 0
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.ScrollingDirection = Enum.ScrollingDirection.Y
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabContainer.ScrollBarImageColor3 = Color3.fromRGB(255, 208, 172)
    TabContainer.ScrollBarImageTransparency = 0.5
    TabContainer.ScrollBarThickness = 0
    TabContainer.Parent = Window
    
    local TabContainerInner = Instance.new("Frame")
    TabContainerInner.Name = "TabContainerInner"
    TabContainerInner.ZIndex = 4
    TabContainerInner.Size = UDim2.new(0, 100, 0, 100)
    TabContainerInner.BackgroundTransparency = 1
    TabContainerInner.Position = UDim2.new(0, 0, 0, 2)
    TabContainerInner.BorderSizePixel = 0
    TabContainerInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainerInner.Parent = TabContainer

    local TabContainerInnerUIListLayout = Instance.new("UIListLayout")
    TabContainerInnerUIListLayout.Name = "TabContainerInnerUIListLayout"
    TabContainerInnerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabContainerInnerUIListLayout.Padding = UDim.new(0, 6)
    TabContainerInnerUIListLayout.Parent = TabContainerInner

    function ResizeTab()
        TabContainer.CanvasSize = UDim2.new(0, 0, 0, 2 + TabContainerInnerUIListLayout.AbsoluteContentSize.Y + TabContainerInnerUIListLayout.Padding.Offset)
    end
    ResizeTab()
    TabContainerInnerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ResizeTab)
    
    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.ZIndex = 3
    Top.Size = UDim2.new(0, 700, 0, 42)
    Top.BackgroundTransparency = 1
    Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Top.Parent = Window
    
    local TopTitle = Instance.new("TextLabel")
    TopTitle.Name = "TopTitle"
    TopTitle.ZIndex = 4
    TopTitle.Size = UDim2.new(0, 690, 0, 14)
    TopTitle.BackgroundTransparency = 1
    TopTitle.Position = UDim2.new(0, 10, 0, 8)
    TopTitle.BorderSizePixel = 0
    TopTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopTitle.FontSize = Enum.FontSize.Size14
    TopTitle.TextSize = 14
    TopTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
    TopTitle.Text = top.Title or "Occur (Make your own script now), \u{1f383} Halloween Celebration Gui \u{1f383} (Support Custom Theme) and more"
    TopTitle.Font = Enum.Font.GothamMedium
    TopTitle.TextXAlignment = Enum.TextXAlignment.Left
    TopTitle.Parent = Top
    
    local TopDescription = Instance.new("TextLabel")
    TopDescription.Name = "TopDescription"
    TopDescription.ZIndex = 5
    TopDescription.Size = UDim2.new(0, 690, 0, 14)
    TopDescription.BackgroundTransparency = 1
    TopDescription.Position = UDim2.new(0, 10, 0, 22)
    TopDescription.BorderSizePixel = 0
    TopDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDescription.FontSize = Enum.FontSize.Size12
    TopDescription.TextSize = 12
    TopDescription.TextColor3 = Color3.fromRGB(200, 200, 200)
    TopDescription.Text = top.Description or "Made By Peaxe"
    TopDescription.Font = Enum.Font.Gotham
    TopDescription.TextXAlignment = Enum.TextXAlignment.Left
    TopDescription.Parent = Top
    
    local TopUICorner = Instance.new("UICorner")
    TopUICorner.Name = "TopUICorner"
    TopUICorner.CornerRadius = UDim.new(0, 2)
    TopUICorner.Parent = Top
    
    local ContainerHolder = Instance.new("Frame")
    ContainerHolder.Name = "ContainerHolder"
    ContainerHolder.ZIndex = 3
    ContainerHolder.Size = UDim2.new(0, 526, 0, 468)
    ContainerHolder.BackgroundTransparency = 1
    ContainerHolder.Position = UDim2.new(0, 168, 0, 42)
    ContainerHolder.BorderSizePixel = 0
    ContainerHolder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ContainerHolder.Parent = Window

    function DragPart(guip)
        local UserInputService = game:GetService("UserInputService")
        local runService = (game:GetService("RunService"));

        local gui = guip

        local dragging
        local dragInput
        local dragStart
        local startPos

        function Lerp(a, b, m)
            return a + (b - a) * m
        end;

        local lastMousePos
        local lastGoalPos
        local DRAG_SPEED = (18); -- // The speed of the UI darg.
        function Update(dt)
            if not (startPos) then return end;
            if not (dragging) and (lastGoalPos) then
                gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
                return 
            end;

            local delta = (lastMousePos - UserInputService:GetMouseLocation())
            local xGoal = (startPos.X.Offset - delta.X);
            local yGoal = (startPos.Y.Offset - delta.Y);
            lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
            gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
        end;

        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
                lastMousePos = UserInputService:GetMouseLocation()

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        runService.Heartbeat:Connect(Update)
    end
    DragPart(OcurShadow)

    local Window = {}

    function Window:Toggle()
        Ocur.Enabled = not Ocur.Enabled
    end

    function Window:New(newtable)
        local Container = Instance.new("ScrollingFrame")
        Container.Name = newtable.Text or "Container"
        Container.ZIndex = 4
        Container.Size = UDim2.new(0, 540, 0, 482)
        Container.BackgroundTransparency = 1
        Container.Position = UDim2.new(-0.0152091, 0, -0.0128205, 0)
        Container.Active = true
        Container.BorderSizePixel = 0
        Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Container.ScrollingDirection = Enum.ScrollingDirection.Y
        Container.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
        Container.ScrollBarThickness = 0
        Container.Parent = ContainerHolder
        Container.Visible = false

        local ContainerInner = Instance.new("Frame")
        ContainerInner.Name = "ContainerInner"
        ContainerInner.Size = UDim2.new(0, 540, 0, 100)
        ContainerInner.BackgroundTransparency = 1
        ContainerInner.Position = UDim2.new(0, 0, 0, 8)
        ContainerInner.BorderSizePixel = 0
        ContainerInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerInner.Parent = Container

        local ContainerInnerUIListLayout = Instance.new("UIListLayout")
        ContainerInnerUIListLayout.Name = "ContainerInnerUIListLayout"
        ContainerInnerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ContainerInnerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerInnerUIListLayout.Padding = UDim.new(0, 10)
        ContainerInnerUIListLayout.Parent = ContainerInner

        function ResizeContainer()
            Container.CanvasSize = UDim2.new(0, 0, 0, 8 + ContainerInnerUIListLayout.AbsoluteContentSize.Y + ContainerInnerUIListLayout.Padding.Offset)
        end
        ResizeTab()
        ContainerInnerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ResizeContainer)

        local Tab = Instance.new("TextButton")
        Tab.Name = newtable.Text or "Tab"
        Tab.ZIndex = 4
        Tab.Size = UDim2.new(0, 160, 0, 30)
        Tab.BackgroundTransparency = 1
        Tab.BorderSizePixel = 0
        Tab.BackgroundColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
        Tab.AutoButtonColor = false
        Tab.FontSize = Enum.FontSize.Size14
        Tab.TextSize = 14
        Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
        Tab.Text = ""
        Tab.Font = Enum.Font.SourceSans
        Tab.Parent = TabContainerInner

        local TabTextLabel = Instance.new("TextLabel")
        TabTextLabel.Name = "TabTextLabel"
        TabTextLabel.ZIndex = 5
        TabTextLabel.Size = UDim2.new(0, 148, 0, 30)
        TabTextLabel.BackgroundTransparency = 1
        TabTextLabel.Position = UDim2.new(0, 12, 0, 0)
        TabTextLabel.BorderSizePixel = 0
        TabTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabTextLabel.FontSize = Enum.FontSize.Size14
        TabTextLabel.TextSize = 14
        TabTextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
        TabTextLabel.TextTransparency = 0.2
        TabTextLabel.Text = newtable.Text or "Features"
        TabTextLabel.Font = Enum.Font.Gotham
        TabTextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TabTextLabel.Parent = Tab

        local TabUICorner = Instance.new("UICorner")
        TabUICorner.Name = "TabUICorner"
        TabUICorner.CornerRadius = UDim.new(0, 2)
        TabUICorner.Parent = Tab

        local TabFrame = Instance.new("Frame")
        TabFrame.Name = "TabFrame"
        TabFrame.ZIndex = 5
        TabFrame.AnchorPoint = Vector2.new(0, 0.5)
        TabFrame.Size = UDim2.new(0, 6, 0, 10)
        TabFrame.BackgroundTransparency = 0.5
        TabFrame.Position = UDim2.new(0, -2, 0, 15)
        TabFrame.BorderSizePixel = 0
        TabFrame.BackgroundColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
        TabFrame.Parent = Tab

        local TabFrameUICorner = Instance.new("UICorner")
        TabFrameUICorner.Name = "TabFrameUICorner"
        TabFrameUICorner.Parent = TabFrame

        local TabUIStroke = Instance.new("UIStroke")
        TabUIStroke.Name = "TabUIStroke"
        TabUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        TabUIStroke.Transparency = 1
        TabUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
        TabUIStroke.Parent = Tab

        if newtable.Open then
            game:GetService("TweenService"):Create(Tab, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.96}):Play()
            game:GetService("TweenService"):Create(TabUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
            game:GetService("TweenService"):Create(TabFrame, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 6, 0, 30)}):Play()
            game:GetService("TweenService"):Create(TabTextLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextTransparency = 0}):Play()
            Container.Visible = true
        end

        Tab.MouseButton1Click:Connect(function()
            for i, v in pairs(TabContainerInner:GetChildren()) do
                if v:IsA("TextButton") then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 1}):Play()
                end
            end
            for i, v in pairs(TabContainerInner:GetDescendants()) do
                if v:IsA("UIStroke") then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 1}):Play()
                end
            end
            for i, v in pairs(TabContainerInner:GetDescendants()) do
                if v:IsA("Frame") then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 6, 0, 10)}):Play()
                end
            end
            for i, v in pairs(TabContainerInner:GetDescendants()) do
                if v:IsA("TextLabel") then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextTransparency = 0.2}):Play()
                end
            end
            for i, v in pairs(ContainerHolder:GetDescendants()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            game:GetService("TweenService"):Create(Tab, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.96}):Play()
            game:GetService("TweenService"):Create(TabUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
            game:GetService("TweenService"):Create(TabFrame, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 6, 0, 30)}):Play()
            game:GetService("TweenService"):Create(TabTextLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextTransparency = 0}):Play()
            Container.Visible = true
        end)

        local Holder = {}

        function Holder:Section(sectiontable)
            local Section = Instance.new("TextButton")
            Section.Name = sectiontable.Text or "Section"
            Section.ZIndex = 4
            Section.Size = UDim2.new(0, 524, 0, 30)
            Section.BackgroundTransparency = 1
            Section.Position = UDim2.new(0.0148148, 0, 4.6599998, 0)
            Section.BorderSizePixel = 0
            Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section.FontSize = Enum.FontSize.Size14
            Section.TextSize = 14
            Section.TextColor3 = Color3.fromRGB(0, 0, 0)
            Section.Text = ""
            Section.Font = Enum.Font.SourceSans
            Section.Parent = ContainerInner
            Section.ClipsDescendants = true

            local SectionB = Instance.new("TextButton")
            SectionB.Name = "SectionButton"
            SectionB.ZIndex = 8
            SectionB.Size = UDim2.new(0, 524, 0, 30)
            SectionB.BackgroundTransparency = 1
            SectionB.Position = UDim2.new(0, 0, 0, 0)
            SectionB.BorderSizePixel = 0
            SectionB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionB.FontSize = Enum.FontSize.Size14
            SectionB.TextSize = 14
            SectionB.TextColor3 = Color3.fromRGB(0, 0, 0)
            SectionB.TextTransparency = 1
            SectionB.Text = ""
            SectionB.Font = Enum.Font.SourceSans
            SectionB.Parent = Section

            local SectionUIStroke = Instance.new("UIStroke")
            SectionUIStroke.Name = "SectionUIStroke"
            SectionUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            SectionUIStroke.Transparency = 0.8
            SectionUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
            SectionUIStroke.Parent = Section

            local SectionUICorner = Instance.new("UICorner")
            SectionUICorner.Name = "SectionUICorner"
            SectionUICorner.CornerRadius = UDim.new(0, 2)
            SectionUICorner.Parent = Section

            local SectionInner = Instance.new("Frame")
            SectionInner.Name = "SectionInner"
            SectionInner.ZIndex = 5
            SectionInner.Size = UDim2.new(0, 100, 0, 1)
            SectionInner.BackgroundTransparency = 1
            SectionInner.Position = UDim2.new(0, 10, 0, 30)
            SectionInner.BorderSizePixel = 0
            SectionInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionInner.Parent = Section

            local SectionInnerUIListLayout = Instance.new("UIListLayout")
            SectionInnerUIListLayout.Name = "SectionInnerUIListLayout"
            SectionInnerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            SectionInnerUIListLayout.Padding = UDim.new(0, 10)
            SectionInnerUIListLayout.Parent = SectionInner

            local SectionImageLabel = Instance.new("ImageLabel")
            SectionImageLabel.Name = "SectionImageLabel"
            SectionImageLabel.ZIndex = 5
            SectionImageLabel.Size = UDim2.new(0, 18, 0, 18)
            SectionImageLabel.Rotation = 0
            SectionImageLabel.BackgroundTransparency = 1
            SectionImageLabel.Position = UDim2.new(0, 500, 0, 6)
            SectionImageLabel.BorderSizePixel = 0
            SectionImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionImageLabel.ImageColor3 = Color3.fromRGB(220, 220, 220)
            SectionImageLabel.Image = "http://www.roblox.com/asset/?id=6034818379"
            SectionImageLabel.Parent = Section

            local SectionTextLabel = Instance.new("TextLabel")
            SectionTextLabel.Name = "SectionTextLabel"
            SectionTextLabel.ZIndex = 5
            SectionTextLabel.Size = UDim2.new(0, 200, 0, 14)
            SectionTextLabel.BackgroundTransparency = 1
            SectionTextLabel.Position = UDim2.new(0, 10, 0, 8)
            SectionTextLabel.BorderSizePixel = 0
            SectionTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionTextLabel.FontSize = Enum.FontSize.Size14
            SectionTextLabel.TextSize = 14
            SectionTextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            SectionTextLabel.Text = sectiontable.Text or "Unkwown"
            SectionTextLabel.Font = Enum.Font.GothamMedium
            SectionTextLabel.TextXAlignment = Enum.TextXAlignment.Left
            SectionTextLabel.Parent = Section

            SectionInnerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                game:GetService("TweenService"):Create(Section, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 524, 0, 30 + SectionInnerUIListLayout.AbsoluteContentSize.Y + SectionInnerUIListLayout.Padding.Offset)}):Play()
            end)

            SectionB.MouseButton1Click:Connect(function()
                if Section.Size.Y.Offset == 30 then
                    game:GetService("TweenService"):Create(SectionUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
                    game:GetService("TweenService"):Create(SectionImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Rotation = 0}):Play()
                    game:GetService("TweenService"):Create(Section, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 524, 0, 30 + SectionInnerUIListLayout.AbsoluteContentSize.Y + SectionInnerUIListLayout.Padding.Offset)}):Play()
                else
                    game:GetService("TweenService"):Create(SectionUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.8}):Play()
                    game:GetService("TweenService"):Create(SectionImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Rotation = 180}):Play()
                    game:GetService("TweenService"):Create(Section, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 524, 0, 30)}):Play()
                end
            end)

            local Section = {}

            function Section:Button(buttontable)
                buttontable.Callback = buttontable.Callback or function() end
                local Button = Instance.new("TextButton")
                Button.Name = buttontable.Text or "Button"
                Button.ZIndex = 6
                Button.Size = UDim2.new(0, 504, 0, 28)
                Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Button.BackgroundTransparency = 0.92
                Button.BorderSizePixel = 0
                Button.BackgroundColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
                Button.AutoButtonColor = false
                Button.FontSize = Enum.FontSize.Size14
                Button.TextSize = 14
                Button.TextColor3 = Color3.fromRGB(200, 200, 200)
                Button.Text = buttontable.Text or "Unkwown"
                Button.Font = Enum.Font.Gotham
                Button.Parent = SectionInner

                local ButtonUICorner = Instance.new("UICorner")
                ButtonUICorner.Name = "ButtonUICorner"
                ButtonUICorner.CornerRadius = UDim.new(0, 2)
                ButtonUICorner.Parent = Button

                local ButtonUIStroke = Instance.new("UIStroke")
                ButtonUIStroke.Name = "ButtonUIStroke"
                ButtonUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ButtonUIStroke.Transparency = 0.65
                ButtonUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
                ButtonUIStroke.Parent = Button

                Button.MouseButton1Click:Connect(function()
                    pcall(function()
                        buttontable.Callback()
                    end)
                end)
                Button.MouseEnter:Connect(function()
                    pcall(function()
                        game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.8}):Play()
                    end)
                end)
                Button.MouseLeave:Connect(function()
                    pcall(function()
                        game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.92}):Play()
                    end)
                end)
                Button.MouseButton1Down:Connect(function()
                    pcall(function()
                        game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.7}):Play()
                    end)
                end)
                Button.MouseButton1Up:Connect(function()
                    pcall(function()
                        game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.8}):Play()
                    end)
                end)
            end

            function Section:Toggle(toggletable)
                toggletable.Callback = toggletable.Callback or function() end
                local Toggle = Instance.new("TextButton")
                Toggle.Name = toggletable.Text or "Toggle"
                Toggle.ZIndex = 6
                Toggle.Size = UDim2.new(0, 504, 0, 28)
                Toggle.ClipsDescendants = true
                Toggle.BackgroundTransparency = 1
                Toggle.BorderSizePixel = 0
                Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Toggle.AutoButtonColor = false
                Toggle.FontSize = Enum.FontSize.Size14
                Toggle.TextSize = 14
                Toggle.TextColor3 = Color3.fromRGB(220, 220, 220)
                Toggle.Text = ""
                Toggle.Font = Enum.Font.Gotham
                Toggle.Parent = SectionInner

                local ToggleUICorner = Instance.new("UICorner")
                ToggleUICorner.Name = "ToggleUICorner"
                ToggleUICorner.CornerRadius = UDim.new(0, 2)
                ToggleUICorner.Parent = Toggle

                local ToggleUIStroke = Instance.new("UIStroke")
                ToggleUIStroke.Name = "ToggleUIStroke"
                ToggleUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ToggleUIStroke.Transparency = 0.8
                ToggleUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
                ToggleUIStroke.Parent = Toggle

                local ToggleTextLabel = Instance.new("TextLabel")
                ToggleTextLabel.Name = "ToggleTextLabel"
                ToggleTextLabel.ZIndex = 7
                ToggleTextLabel.Size = UDim2.new(0, 148, 0, 28)
                ToggleTextLabel.BackgroundTransparency = 1
                ToggleTextLabel.Position = UDim2.new(0, 10, 0, 0)
                ToggleTextLabel.BorderSizePixel = 0
                ToggleTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTextLabel.FontSize = Enum.FontSize.Size14
                ToggleTextLabel.TextTransparency = 0.2
                ToggleTextLabel.TextSize = 14
                ToggleTextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
                ToggleTextLabel.Text = toggletable.Text or "Unkwown"
                ToggleTextLabel.Font = Enum.Font.Gotham
                ToggleTextLabel.TextXAlignment = Enum.TextXAlignment.Left
                ToggleTextLabel.Parent = Toggle

                local ToggleFrame = Instance.new("Frame")
                ToggleFrame.Name = "ToggleFrame"
                ToggleFrame.ZIndex = 7
                ToggleFrame.Size = UDim2.new(0, 18, 0, 18)
                ToggleFrame.ClipsDescendants = true
                ToggleFrame.BackgroundTransparency = 0.8
                ToggleFrame.Position = UDim2.new(0, 482, 0, 5)
                ToggleFrame.BackgroundColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
                ToggleFrame.Parent = Toggle

                local ToggleFrameUICorner = Instance.new("UICorner")
                ToggleFrameUICorner.Name = "ToggleFrameUICorner"
                ToggleFrameUICorner.CornerRadius = UDim.new(0, 3)
                ToggleFrameUICorner.Parent = ToggleFrame

                local ToggleImageLabel = Instance.new("ImageLabel")
                ToggleImageLabel.Name = "ToggleImageLabel"
                ToggleImageLabel.ZIndex = 8
                ToggleImageLabel.Size = UDim2.new(0, 14, 0, 14)
                ToggleImageLabel.BackgroundTransparency = 1
                ToggleImageLabel.Position = UDim2.new(0, 2, 0, 2)
                ToggleImageLabel.BorderSizePixel = 0
                ToggleImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                ToggleImageLabel.ImageTransparency = 1
                ToggleImageLabel.ImageColor3 = Color3.fromRGB(20, 20, 20)
                ToggleImageLabel.Image = "http://www.roblox.com/asset/?id=6031094667"
                ToggleImageLabel.Parent = ToggleFrame

                local ToggleImageUICorner = Instance.new("UICorner")
                ToggleImageUICorner.Name = "ToggleImageUICorner"
                ToggleImageUICorner.CornerRadius = UDim.new(0, 1000)
                ToggleImageUICorner.Parent = ToggleImageLabel
                local toggle = toggletable.Enabled or false

                if toggle then
                    toggle = true
                    game:GetService("TweenService"):Create(ToggleFrame, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.5}):Play()
                    game:GetService("TweenService"):Create(ToggleImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
                    game:GetService("TweenService"):Create(ToggleUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
                    game:GetService("TweenService"):Create(ToggleTextLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextTransparency = 0}):Play()
                    pcall(function()
                        toggletable.Callback(toggle)
                    end)
                end
                Toggle.MouseButton1Click:Connect(function()
                    if toggle then
                        toggle = false
                        game:GetService("TweenService"):Create(ToggleFrame, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.8}):Play()
                        game:GetService("TweenService"):Create(ToggleImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
                        game:GetService("TweenService"):Create(ToggleUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.8}):Play()
                        game:GetService("TweenService"):Create(ToggleTextLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextTransparency = 0.2}):Play()
                        pcall(function()
                            toggletable.Callback(toggle)
                        end)
                    else
                        toggle = true
                        game:GetService("TweenService"):Create(ToggleFrame, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0.5}):Play()
                        game:GetService("TweenService"):Create(ToggleImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
                        game:GetService("TweenService"):Create(ToggleUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
                        game:GetService("TweenService"):Create(ToggleTextLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextTransparency = 0}):Play()
                        pcall(function()
                            toggletable.Callback(toggle)
                        end)
                    end
                end)
            end

            function Section:Slider(slidertable)
                slidertable.Callback = slidertable.Callback or function() end
                local minvalue = slidertable.minvalue or 0
                local maxvalue = slidertable.maxvalue or 100

                local Slider = Instance.new("TextButton")
                Slider.Name = "Slider"
                Slider.ZIndex = 6
                Slider.Size = UDim2.new(0, 504, 0, 28)
                Slider.ClipsDescendants = true
                Slider.BackgroundTransparency = 1
                Slider.BorderSizePixel = 0
                Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Slider.AutoButtonColor = false
                Slider.FontSize = Enum.FontSize.Size14
                Slider.TextSize = 14
                Slider.TextColor3 = Color3.fromRGB(220, 220, 220)
                Slider.Text = ""
                Slider.Font = Enum.Font.Gotham
                Slider.Parent = SectionInner

                local SliderUICorner = Instance.new("UICorner")
                SliderUICorner.Name = "SliderUICorner"
                SliderUICorner.CornerRadius = UDim.new(0, 2)
                SliderUICorner.Parent = Slider

                local SliderUIStroke = Instance.new("UIStroke")
                SliderUIStroke.Name = "SliderUIStroke"
                SliderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                SliderUIStroke.Transparency = 0.65
                SliderUIStroke.Color = ThemeColor or  Color3.fromRGB(117, 255, 133)
                SliderUIStroke.Parent = Slider

                local SliderFrame = Instance.new("Frame")
                SliderFrame.Name = "SliderFrame"
                SliderFrame.ZIndex = 7
                SliderFrame.Size = UDim2.new(0, 0, 0, 28)
                SliderFrame.ClipsDescendants = true
                SliderFrame.BackgroundTransparency = 0.8
                SliderFrame.BackgroundColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
                SliderFrame.Parent = Slider

                local SliderFrameUICorner = Instance.new("UICorner")
                SliderFrameUICorner.Name = "SliderFrameUICorner"
                SliderFrameUICorner.CornerRadius = UDim.new(0, 2)
                SliderFrameUICorner.Parent = SliderFrame

                local SliderTextLabelTitle = Instance.new("TextLabel")
                SliderTextLabelTitle.Name = "SliderTextLabelTitle"
                SliderTextLabelTitle.ZIndex = 8
                SliderTextLabelTitle.Size = UDim2.new(0, 250, 0, 28)
                SliderTextLabelTitle.BackgroundTransparency = 1
                SliderTextLabelTitle.Position = UDim2.new(0, 10, 0, 0)
                SliderTextLabelTitle.BorderSizePixel = 0
                SliderTextLabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderTextLabelTitle.FontSize = Enum.FontSize.Size14
                SliderTextLabelTitle.TextTransparency = 0.2
                SliderTextLabelTitle.TextSize = 14
                SliderTextLabelTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
                SliderTextLabelTitle.Text = "Slider"
                SliderTextLabelTitle.Font = Enum.Font.Gotham
                SliderTextLabelTitle.TextXAlignment = Enum.TextXAlignment.Left
                SliderTextLabelTitle.Parent = Slider

                local SliderTextLabel = Instance.new("TextLabel")
                SliderTextLabel.Name = "SliderTextLabel"
                SliderTextLabel.ZIndex = 8
                SliderTextLabel.Size = UDim2.new(0, 160, 0, 28)
                SliderTextLabel.BackgroundTransparency = 1
                SliderTextLabel.Position = UDim2.new(0, 338, 0, 0)
                SliderTextLabel.BorderSizePixel = 0
                SliderTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderTextLabel.FontSize = Enum.FontSize.Size12
                SliderTextLabel.TextTransparency = 0.2
                SliderTextLabel.TextSize = 12
                SliderTextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
                SliderTextLabel.Text = minvalue or "pro"
                SliderTextLabel.Font = Enum.Font.Gotham
                SliderTextLabel.TextXAlignment = Enum.TextXAlignment.Right
                SliderTextLabel.Parent = Slider
                
                
                -----Variables-----
                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
                local Value = minvalue
                
                
                
                
                -----Main Code-----
                
                Slider.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 504) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
                    task.spawn(function()
                        pcall(function()
                            slidertable.Callback(Value)
                        end)
                    end)
                    SliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 504), 0, 28), "Out", "Quad", 0.2, true)
                    moveconnection = mouse.Move:Connect(function()
                        SliderTextLabel.Text = Value
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 504) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
                        task.spawn(function()
                            pcall(function()
                                slidertable.Callback(Value)
                            end)
                        end)
                        SliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 504), 0, 28), "Out", "Quad", 0.2, true)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 504) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
                            task.spawn(function()
                                pcall(function()
                                    slidertable.Callback(Value)
                                end)
                            end)
                            SliderTextLabel.Text = Value
                            SliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 504), 0, 28), "Out", "Quad", 0.2, true)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
            end

            function Section:Dropdown(dropdowntable)
                local list = dropdowntable.List or {}
                dropdowntable.Callback = dropdowntable.Callback or function() end
                local Dropdown = Instance.new("TextButton")
                Dropdown.Name = dropdowntable.Text or "Dropdown"
                Dropdown.ZIndex = 6
                Dropdown.Size = UDim2.new(0, 504, 0, 28)
                Dropdown.ClipsDescendants = true
                Dropdown.BackgroundTransparency = 1
                Dropdown.Position = UDim2.new(0, 0, 76, 0)
                Dropdown.BorderSizePixel = 0
                Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Dropdown.AutoButtonColor = false
                Dropdown.FontSize = Enum.FontSize.Size14
                Dropdown.TextSize = 14
                Dropdown.TextColor3 = Color3.fromRGB(220, 220, 220)
                Dropdown.Text = ""
                Dropdown.Font = Enum.Font.Gotham
                Dropdown.Parent = SectionInner

                local DropdownUICorner = Instance.new("UICorner")
                DropdownUICorner.Name = "DropdownUICorner"
                DropdownUICorner.CornerRadius = UDim.new(0, 2)
                DropdownUICorner.Parent = Dropdown

                local DropdownUIStroke = Instance.new("UIStroke")
                DropdownUIStroke.Name = "DropdownUIStroke"
                DropdownUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropdownUIStroke.Transparency = 0.65
                DropdownUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
                DropdownUIStroke.Parent = Dropdown

                local DropdownTitle = Instance.new("TextLabel")
                DropdownTitle.Name = "DropdownTitle"
                DropdownTitle.ZIndex = 7
                DropdownTitle.Size = UDim2.new(0, 148, 0, 28)
                DropdownTitle.BackgroundTransparency = 1
                DropdownTitle.Position = UDim2.new(0, 10, 0, 0)
                DropdownTitle.BorderSizePixel = 0
                DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownTitle.FontSize = Enum.FontSize.Size14
                DropdownTitle.TextTransparency = 0.2
                DropdownTitle.TextSize = 14
                DropdownTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
                DropdownTitle.Text = dropdowntable.Text or "Unkwown"
                DropdownTitle.Font = Enum.Font.Gotham
                DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
                DropdownTitle.Parent = Dropdown

                local DropdownFrame = Instance.new("Frame")
                DropdownFrame.Name = "DropdownFrame"
                DropdownFrame.ZIndex = 7
                DropdownFrame.Size = UDim2.new(0, 18, 0, 18)
                DropdownFrame.ClipsDescendants = true
                DropdownFrame.BackgroundTransparency = 1
                DropdownFrame.Position = UDim2.new(0, 482, 0, 5)
                DropdownFrame.BackgroundColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
                DropdownFrame.Parent = Dropdown

                local DropdownFrameUICorner = Instance.new("UICorner")
                DropdownFrameUICorner.Name = "DropdownFrameUICorner"
                DropdownFrameUICorner.CornerRadius = UDim.new(0, 1000)
                DropdownFrameUICorner.Parent = DropdownFrame

                local DropdownFrameImageLabel = Instance.new("ImageLabel")
                DropdownFrameImageLabel.Name = "DropdownFrameImageLabel"
                DropdownFrameImageLabel.ZIndex = 8
                DropdownFrameImageLabel.Size = UDim2.new(0, 14, 0, 14)
                DropdownFrameImageLabel.BackgroundTransparency = 0.2
                DropdownFrameImageLabel.Position = UDim2.new(0, 2, 0, 2)
                DropdownFrameImageLabel.BorderSizePixel = 0
                DropdownFrameImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                DropdownFrameImageLabel.ImageTransparency = 0.3
                DropdownFrameImageLabel.ImageColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
                DropdownFrameImageLabel.Image = "http://www.roblox.com/asset/?id=6031090991"
                DropdownFrameImageLabel.Parent = DropdownFrame

                local DropdownList = Instance.new("TextLabel")
                DropdownList.Name = "DropdownList"
                DropdownList.ZIndex = 7
                DropdownList.Size = UDim2.new(0, 148, 0, 28)
                DropdownList.BackgroundTransparency = 1
                DropdownList.Position = UDim2.new(0, 332, 0, 0)
                DropdownList.BorderSizePixel = 0
                DropdownList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownList.FontSize = Enum.FontSize.Size14
                DropdownList.TextTransparency = 0.2
                DropdownList.TextSize = 14
                DropdownList.TextColor3 = Color3.fromRGB(220, 220, 220)
                DropdownList.Text = "None"
                DropdownList.Font = Enum.Font.Gotham
                DropdownList.TextXAlignment = Enum.TextXAlignment.Right
                DropdownList.Parent = Dropdown

                if dropdowntable.Current == nil then
                    DropdownList.Text = "None"
                else
                    DropdownList.Text = dropdowntable.Current
                    task.spawn(function()
                        pcall(function()
                            dropdowntable.Callback(dropdowntable.Current)
                        end)
                    end)
                end

                local DropdownScroll = Instance.new("ScrollingFrame")
                DropdownScroll.Name = "DropdownScroll"
                DropdownScroll.ZIndex = 7
                DropdownScroll.Size = UDim2.new(0, 488, 0, 206)
                DropdownScroll.BackgroundTransparency = 1
                DropdownScroll.Position = UDim2.new(0, 10, 0, 28)
                DropdownScroll.Active = true
                DropdownScroll.BorderSizePixel = 0
                DropdownScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownScroll.ScrollingDirection = Enum.ScrollingDirection.Y
                DropdownScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
                DropdownScroll.ScrollBarThickness = 0
                DropdownScroll.Parent = Dropdown

                local DropdownScrollFrame = Instance.new("Frame")
                DropdownScrollFrame.Name = "DropdownScrollFrame"
                DropdownScrollFrame.ZIndex = 8
                DropdownScrollFrame.Size = UDim2.new(0, 100, 0, 1)
                DropdownScrollFrame.BackgroundTransparency = 1
                DropdownScrollFrame.Position = UDim2.new(0, 2, 0, 2)
                DropdownScrollFrame.BorderSizePixel = 0
                DropdownScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownScrollFrame.Parent = DropdownScroll

                local DropdownScrollUIListLayout = Instance.new("UIListLayout")
                DropdownScrollUIListLayout.Name = "DropdownScrollUIListLayout"
                DropdownScrollUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                DropdownScrollUIListLayout.Padding = UDim.new(0, 10)
                DropdownScrollUIListLayout.Parent = DropdownScrollFrame

                DropdownScrollUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    game:GetService("TweenService"):Create(DropdownScroll, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{CanvasSize = UDim2.new(0, 524, 0, 2 + DropdownScrollUIListLayout.AbsoluteContentSize.Y + DropdownScrollUIListLayout.Padding.Offset)}):Play()
                end)

                game:GetService("TweenService"):Create(DropdownScroll, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{CanvasSize = UDim2.new(0, 524, 0, 2 + DropdownScrollUIListLayout.AbsoluteContentSize.Y + DropdownScrollUIListLayout.Padding.Offset)}):Play()

                Dropdown.MouseButton1Click:Connect(function()
                    if Dropdown.Size.Y.Offset == 28 then
                        game:GetService("TweenService"):Create(DropdownFrameImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Rotation = -180}):Play()
                        game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 504, 0, 28 + DropdownScroll.Size.Y.Offset)}):Play()
                    else
                        game:GetService("TweenService"):Create(DropdownFrameImageLabel, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Rotation = 0}):Play()
                        game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 504, 0, 28)}):Play()
                    end
                end)

                for i, v in next, list do
                    local List = Instance.new("TextButton")
                    List.Name = v or "List"
                    List.ZIndex = 9
                    List.Size = UDim2.new(0, 480, 0, 28)
                    List.ClipsDescendants = true
                    List.BackgroundTransparency = 1
                    List.BorderSizePixel = 0
                    List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    List.AutoButtonColor = false
                    List.FontSize = Enum.FontSize.Size14
                    List.TextSize = 14
                    List.TextColor3 = Color3.fromRGB(220, 220, 220)
                    List.Text = ""
                    List.Font = Enum.Font.Gotham
                    List.Parent = DropdownScrollFrame

                    local ListUICorner = Instance.new("UICorner")
                    ListUICorner.Name = "ListUICorner"
                    ListUICorner.CornerRadius = UDim.new(0, 2)
                    ListUICorner.Parent = List

                    local ListUIStroke = Instance.new("UIStroke")
                    ListUIStroke.Name = "ListUIStroke"
                    ListUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    ListUIStroke.Transparency = 0.8
                    ListUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
                    ListUIStroke.Parent = List

                    local ListTextLabel = Instance.new("TextLabel")
                    ListTextLabel.Name = "ListTextLabel"
                    ListTextLabel.ZIndex = 10
                    ListTextLabel.Size = UDim2.new(0, 148, 0, 28)
                    ListTextLabel.BackgroundTransparency = 1
                    ListTextLabel.Position = UDim2.new(0, 10, 0, 0)
                    ListTextLabel.BorderSizePixel = 0
                    ListTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ListTextLabel.FontSize = Enum.FontSize.Size14
                    ListTextLabel.TextTransparency = 0.2
                    ListTextLabel.TextSize = 14
                    ListTextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
                    ListTextLabel.Text = v or "List 1"
                    ListTextLabel.Font = Enum.Font.Gotham
                    ListTextLabel.TextXAlignment = Enum.TextXAlignment.Left
                    ListTextLabel.Parent = List

                    List.MouseButton1Click:Connect(function()
                        DropdownList.Text = tostring(v)
                        task.spawn(function()
                            pcall(function()
                                dropdowntable.Callback(v)
                            end)
                        end)
                    end)
                    List.MouseEnter:Connect(function()
                        pcall(function()
                            game:GetService("TweenService"):Create(ListUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
                        end)
                    end)
                    List.MouseLeave:Connect(function()
                        pcall(function()
                            game:GetService("TweenService"):Create(ListUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.8}):Play()
                        end)
                    end)
                end

                local Dropdown = {}

                function Dropdown:Refresh(new)
                    for i, v in pairs(DropdownScrollFrame:GetDescendants()) do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                    wait()
                    new = new or {}
                    for i, v in next, new do
                        local List = Instance.new("TextButton")
                        List.Name = v or "List"
                        List.ZIndex = 9
                        List.Size = UDim2.new(0, 480, 0, 28)
                        List.ClipsDescendants = true
                        List.BackgroundTransparency = 1
                        List.BorderSizePixel = 0
                        List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        List.AutoButtonColor = false
                        List.FontSize = Enum.FontSize.Size14
                        List.TextSize = 14
                        List.TextColor3 = Color3.fromRGB(220, 220, 220)
                        List.Text = ""
                        List.Font = Enum.Font.Gotham
                        List.Parent = DropdownScrollFrame

                        local ListUICorner = Instance.new("UICorner")
                        ListUICorner.Name = "ListUICorner"
                        ListUICorner.CornerRadius = UDim.new(0, 2)
                        ListUICorner.Parent = List

                        local ListUIStroke = Instance.new("UIStroke")
                        ListUIStroke.Name = "ListUIStroke"
                        ListUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                        ListUIStroke.Transparency = 0.8
                        ListUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
                        ListUIStroke.Parent = List

                        local ListTextLabel = Instance.new("TextLabel")
                        ListTextLabel.Name = "ListTextLabel"
                        ListTextLabel.ZIndex = 10
                        ListTextLabel.Size = UDim2.new(0, 148, 0, 28)
                        ListTextLabel.BackgroundTransparency = 1
                        ListTextLabel.Position = UDim2.new(0, 10, 0, 0)
                        ListTextLabel.BorderSizePixel = 0
                        ListTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        ListTextLabel.FontSize = Enum.FontSize.Size14
                        ListTextLabel.TextTransparency = 0.2
                        ListTextLabel.TextSize = 14
                        ListTextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
                        ListTextLabel.Text = v or "List 1"
                        ListTextLabel.Font = Enum.Font.Gotham
                        ListTextLabel.TextXAlignment = Enum.TextXAlignment.Left
                        ListTextLabel.Parent = List

                        List.MouseButton1Click:Connect(function()
                            DropdownList.Text = tostring(v)
                            task.spawn(function()
                                pcall(function()
                                    dropdowntable.Callback(v)
                                end)
                            end)
                        end)
                        List.MouseEnter:Connect(function()
                            pcall(function()
                                game:GetService("TweenService"):Create(ListUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
                            end)
                        end)
                        List.MouseLeave:Connect(function()
                            pcall(function()
                                game:GetService("TweenService"):Create(ListUIStroke, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.8}):Play()
                            end)
                        end)
                    end
                end

                return Dropdown
            end

            function Section:Keybind(keybindtable)
                keybindtable.Callback = keybindtable.Callback or function() end
                local Keybind = Instance.new("TextButton")
                Keybind.Name = keybindtable.Text or "Keybind"
                Keybind.ZIndex = 6
                Keybind.Size = UDim2.new(0, 504, 0, 28)
                Keybind.ClipsDescendants = true
                Keybind.BackgroundTransparency = 1
                Keybind.Position = UDim2.new(0, 0, 76, 0)
                Keybind.BorderSizePixel = 0
                Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Keybind.AutoButtonColor = false
                Keybind.FontSize = Enum.FontSize.Size14
                Keybind.TextSize = 14
                Keybind.TextColor3 = Color3.fromRGB(220, 220, 220)
                Keybind.Text = ""
                Keybind.Font = Enum.Font.Gotham
                Keybind.Parent = SectionInner

                local KeybindUICorner = Instance.new("UICorner")
                KeybindUICorner.Name = "KeybindUICorner"
                KeybindUICorner.CornerRadius = UDim.new(0, 2)
                KeybindUICorner.Parent = Keybind

                local KeybindUIStroke = Instance.new("UIStroke")
                KeybindUIStroke.Name = "KeybindUIStroke"
                KeybindUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                KeybindUIStroke.Transparency = 0.8
                KeybindUIStroke.Color = ThemeColor or Color3.fromRGB(117, 255, 133)
                KeybindUIStroke.Parent = Keybind

                local KeybindTitle = Instance.new("TextLabel")
                KeybindTitle.Name = "KeybindTitle"
                KeybindTitle.ZIndex = 7
                KeybindTitle.Size = UDim2.new(0, 148, 0, 28)
                KeybindTitle.BackgroundTransparency = 1
                KeybindTitle.Position = UDim2.new(0, 10, 0, 0)
                KeybindTitle.BorderSizePixel = 0
                KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                KeybindTitle.FontSize = Enum.FontSize.Size14
                KeybindTitle.TextTransparency = 0.2
                KeybindTitle.TextSize = 14
                KeybindTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
                KeybindTitle.Text = keybindtable.Text or "Unkwown"
                KeybindTitle.Font = Enum.Font.Gotham
                KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left
                KeybindTitle.Parent = Keybind

                local KeybindKey = Instance.new("TextLabel")
                KeybindKey.Name = "KeybindKey"
                KeybindKey.ZIndex = 7
                KeybindKey.Size = UDim2.new(0, 148, 0, 28)
                KeybindKey.BackgroundTransparency = 1
                KeybindKey.Position = UDim2.new(0, 330, 0, 0)
                KeybindKey.BorderSizePixel = 0
                KeybindKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                KeybindKey.FontSize = Enum.FontSize.Size14
                KeybindKey.TextTransparency = 0.2
                KeybindKey.TextSize = 14
                KeybindKey.TextColor3 = Color3.fromRGB(220, 220, 220)
                KeybindKey.Text = "nil"
                KeybindKey.Font = Enum.Font.Gotham
                KeybindKey.TextXAlignment = Enum.TextXAlignment.Right
                KeybindKey.Parent = Keybind

                local DropdownFrameImageLabel = Instance.new("ImageLabel")
                DropdownFrameImageLabel.Name = "DropdownFrameImageLabel"
                DropdownFrameImageLabel.ZIndex = 8
                DropdownFrameImageLabel.Size = UDim2.new(0, 14, 0, 14)
                DropdownFrameImageLabel.BackgroundTransparency = 0.2
                DropdownFrameImageLabel.Position = UDim2.new(0, 482, 0, 7)
                DropdownFrameImageLabel.BorderSizePixel = 0
                DropdownFrameImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                DropdownFrameImageLabel.ImageTransparency = 0.3
                DropdownFrameImageLabel.ImageColor3 = ThemeColor or Color3.fromRGB(117, 255, 133)
                DropdownFrameImageLabel.Image = "http://www.roblox.com/asset/?id=6034818398"
                DropdownFrameImageLabel.Parent = Keybind

                local nilkeybind = false

                if keybindtable.Key == nil then
                    local Key = nil
                    KeybindKey.Text = "None"
                    local nilkeybind = true
                else
                    local Key = keybindtable.Key.Name
                    KeybindKey.Text = Key
                    local nilkeybind = false
                end
                local changingkeybind = false
                Keybind.MouseButton1Click:connect(
                    function(e)
                        changingkeybind = true
                        game:GetService("TweenService"):Create(KeybindUIStroke, TweenInfo.new(0.08,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.65}):Play()
                        KeybindKey.Text = "..."
                        local a, b = game:GetService("UserInputService").InputBegan:wait()
                        if a.KeyCode.Name ~= "Unknown" then
                            KeybindKey.Text = a.KeyCode.Name
                            Key = a.KeyCode.Name
                        end
                    end
                )
                
                
                task.spawn(function()
                    game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
                        if not pressed then
                                if current.KeyCode.Name == KeybindKey.Text then
                                    if changingkeybind == false then
                                        game:GetService("TweenService"):Create(KeybindUIStroke, TweenInfo.new(0.08,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.8}):Play()
                                        pcall(function()
                                            keybindtable.Callback()
                                        end)
                                    elseif changingkeybind == true then
                                        game:GetService("TweenService"):Create(KeybindUIStroke, TweenInfo.new(0.08,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Transparency = 0.8}):Play()
                                        changingkeybind = false
                                    end
                                end
                        end
                    end)
                end)
            end

            return Section
        end

        return Holder
    end
    return Window
end
return Occur
