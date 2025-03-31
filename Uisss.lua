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
    local ThemeToggle = Instance.new("TextButton")
    local ResizeHandle = Instance.new("TextButton")
    local ExtraToggle = Instance.new("TextButton")
    local NewButton = Instance.new("TextButton")
    local AnimationFrame = Instance.new("Frame")
    local ButtonContainer = Instance.new("Frame")
    local AnimEffect = Instance.new("ImageLabel")
    local CloseButton = Instance.new("TextButton")
    
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
    MainFrame.Visible = false
    
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
    
    CloseButton.Parent = MainFrame
    CloseButton.Text = "✖"
    CloseButton.Size = UDim2.new(0, 50, 0, 50)
    CloseButton.Position = UDim2.new(1, -60, 0, 60)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 55, 55)
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.TextSize = 20
    CloseButton.MouseButton1Click:Connect(function()
        MainFrame.Visible = false
    end)
    
    AnimationFrame.Parent = MainFrame
    AnimationFrame.Size = UDim2.new(1, 0, 1, 0)
    AnimationFrame.BackgroundTransparency = 1
    
    AnimEffect.Parent = AnimationFrame
    AnimEffect.Size = UDim2.new(1, 0, 1, 0)
    AnimEffect.BackgroundTransparency = 1
    AnimEffect.Image = "rbxassetid://694123456"
    AnimEffect.ImageTransparency = 1
    
    local function animateUI()
        MainFrame.Position = UDim2.new(0.5, -310, -0.5, -240)
        MainFrame.Visible = true
        AnimEffect.ImageTransparency = 0.5
        MainFrame:TweenPosition(UDim2.new(0.5, -310, 0.5, -240), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1, true, function()
            AnimEffect.ImageTransparency = 1
        end)
    end
    
    animateUI()
    
    return {Main = MainFrame, Sidebar = Sidebar}
end

return ZeldHub
