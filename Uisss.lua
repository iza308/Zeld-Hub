local ZeldHub = {}

function ZeldHub:CreateWindow(title, language)
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local Sidebar = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local ToggleButton = Instance.new("TextButton")
    local UserProfile = Instance.new("ImageLabel")
    local BackgroundBlur = Instance.new("BlurEffect")
    local Icon = Instance.new("ImageLabel")
    local ThemeToggle = Instance.new("TextButton")
    local ResizeHandle = Instance.new("TextButton")
    
    local themes = {
        Light = {bg = Color3.fromRGB(240, 240, 240), text = Color3.fromRGB(30, 30, 30)},
        Dark = {bg = Color3.fromRGB(20, 20, 20), text = Color3.fromRGB(255, 255, 255)}
    }
    
    local currentTheme = "Dark"
    
    ScreenGui.Parent = game:GetService("CoreGui")
    
    BackgroundBlur.Parent = game:GetService("Lighting")
    BackgroundBlur.Size = 20 
    
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = themes[currentTheme].bg
    MainFrame.BackgroundTransparency = 0.2 
    MainFrame.Size = UDim2.new(0, 620, 0, 480)
    MainFrame.Position = UDim2.new(0.5, -310, 0.5, -240)
    MainFrame.ClipsDescendants = true
    MainFrame.Draggable = true 
    MainFrame.Active = true
    
    UICorner.CornerRadius = UDim.new(0.5, 0) 
    UICorner.Parent = MainFrame
    
    Title.Parent = MainFrame
    Title.Text = title
    Title.TextColor3 = themes[currentTheme].text
    Title.Size = UDim2.new(1, 0, 0, 55)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 22
    Title.BackgroundTransparency = 1
    
    Sidebar.Parent = MainFrame
    Sidebar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Sidebar.Size = UDim2.new(0, 190, 1, 0)
    Sidebar.ClipsDescendants = true
    
    UIListLayout.Parent = Sidebar
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    
    ToggleButton.Parent = ScreenGui
    ToggleButton.Text = "☰"
    ToggleButton.Size = UDim2.new(0, 60, 0, 50)
    ToggleButton.Position = UDim2.new(0, 25, 0, 25)
    ToggleButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.Font = Enum.Font.GothamBold
    ToggleButton.TextSize = 24
    ToggleButton.MouseButton1Click:Connect(function()
        MainFrame.Visible = not MainFrame.Visible
    end)
    
    UserProfile.Parent = MainFrame
    UserProfile.Size = UDim2.new(0, 75, 0, 75)
    UserProfile.Position = UDim2.new(1, -90, 1, -90)
    UserProfile.Image = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=150&h=150"
    UserProfile.BackgroundTransparency = 1
    
    ThemeToggle.Parent = MainFrame
    ThemeToggle.Text = "🌗"
    ThemeToggle.Size = UDim2.new(0, 50, 0, 50)
    ThemeToggle.Position = UDim2.new(1, -60, 0, 10)
    ThemeToggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    ThemeToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    ThemeToggle.Font = Enum.Font.GothamBold
    ThemeToggle.TextSize = 20
    ThemeToggle.MouseButton1Click:Connect(function()
        currentTheme = currentTheme == "Dark" and "Light" or "Dark"
        MainFrame.BackgroundColor3 = themes[currentTheme].bg
        Title.TextColor3 = themes[currentTheme].text
    end)
    
    ResizeHandle.Parent = MainFrame
    ResizeHandle.Size = UDim2.new(0, 20, 0, 20)
    ResizeHandle.Position = UDim2.new(1, -25, 1, -25)
    ResizeHandle.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    ResizeHandle.Text = "🔧"
    ResizeHandle.TextSize = 14
    ResizeHandle.Font = Enum.Font.GothamBold
    ResizeHandle.MouseButton1Down:Connect(function()
        local inputService = game:GetService("UserInputService")
        local resizing = true
        
        local function updateSize(input)
            if resizing then
                local delta = input.Position - MainFrame.Position
                MainFrame.Size = UDim2.new(0, math.clamp(delta.X, 300, 800), 0, math.clamp(delta.Y, 200, 600))
            end
        end
        
        local inputChanged;
        inputChanged = inputService.InputChanged:Connect(updateSize)
        inputService.InputEnded:Connect(function()
            resizing = false
            inputChanged:Disconnect()
        end)
    end)
    
    return {Main = MainFrame, Sidebar = Sidebar}
end

return ZeldHub
