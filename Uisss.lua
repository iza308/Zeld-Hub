-- Library Ui screen gui cho mobile exploit (Loadstring compatible)
-- Có UIListLayout, kéo, button, toggle, slider, animation, nền trắng nhạt trong suốt, scrollframe cho tab, đổi tên tab, dropdown, checkbox, viền tròn, viền đậm trên, ảnh nền

local Library = {}

-- Cấu hình mặc định
local DEFAULT_BACKGROUND_COLOR = Color3.fromRGB(240, 240, 240)
local DEFAULT_BACKGROUND_TRANSPARENCY = 0.8
local ROBLOX_PLAYER_IMAGE_ID = "rbxassetid://261563789" -- Thay thế bằng ID ảnh bạn muốn

function Library.create(title)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "MobileExploitUI"
    ScreenGui.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame")
    MainFrame.Parent = ScreenGui
    MainFrame.Size = UDim2.new(0.8, 0, 0.6, 0)
    MainFrame.Position = UDim2.new(0.1, 0, 0.2, 0)
    MainFrame.BackgroundColor3 = DEFAULT_BACKGROUND_COLOR
    MainFrame.BackgroundTransparency = DEFAULT_BACKGROUND_TRANSPARENCY
    MainFrame.BorderSizePixel = 0 -- Loại bỏ viền mặc định của MainFrame
    MainFrame.Active = true
    MainFrame.Draggable = true

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0.1, 0)
    UICorner.Parent = MainFrame

    local TitleBar = Instance.new("Frame")
    TitleBar.Parent = MainFrame
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    TitleBar.Position = UDim2.new(0, 0, 0, 0)
    TitleBar.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    TitleBar.BorderSizePixel = 3 -- Viền đậm hơn ở trên
    TitleBar.BorderColor3 = Color3.fromRGB(0, 0, 0)

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = TitleBar
    TitleLabel.Size = UDim2.new(1, 0, 1, 0)
    TitleLabel.Text = title or "Exploit Menu"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Font = Enum.Font.SourceSansBold
    TitleLabel.TextSize = 20
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.TextYAlignment = Enum.VerticalAlignment.Center
    TitleLabel.Padding = new(0, 10, 0, 0)

    local TabBar = Instance.new("Frame")
    TabBar.Parent = MainFrame
    TabBar.Size = UDim2.new(1, 0, 0, 30)
    TabBar.Position = UDim2.new(0, 0, 0, 40)
    TabBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    TabBar.BorderSizePixel = 1
    TabBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabBar.LayoutOrder = 1

    local TabBarLayout = Instance.new("UIListLayout")
    TabBarLayout.Parent = TabBar
    TabBarLayout.Padding = UDim.new(0, 2)
    TabBarLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabBarLayout.FillDirection = Enum.FillDirection.Horizontal
    TabBarLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left

    local TabContentArea = Instance.new("Frame")
    TabContentArea.Parent = MainFrame
    TabContentArea.Size = UDim2.new(1, 0, 1, -70)
    TabContentArea.Position = UDim2.new(0, 0, 0, 70)
    TabContentArea.BackgroundColor3 = DEFAULT_BACKGROUND_COLOR
    TabContentArea.BackgroundTransparency = DEFAULT_BACKGROUND_TRANSPARENCY
    TabContentArea.LayoutOrder = 2

    local RobloxPlayerImage = Instance.new("ImageLabel")
    RobloxPlayerImage.Parent = MainFrame
    RobloxPlayerImage.Size = UDim2.new(0, 64, 0, 64)
    RobloxPlayerImage.Position = UDim2.new(1, -70, 1, -70) -- Góc dưới bên phải
    RobloxPlayerImage.BackgroundTransparency = 1
    RobloxPlayerImage.Image = ROBLOX_PLAYER_IMAGE_ID

    local elements = {
        ScreenGui = ScreenGui,
        MainFrame = MainFrame,
        TabBar = TabBar,
        TabBarLayout = TabBarLayout,
        TabContentArea = TabContentArea,
        Tabs = {}
    }

    return elements
end

function Library.addTab(ui, tabName)
    local tabButton = Instance.new("TextButton")
    tabButton.Parent = ui.TabBar
    tabButton.Size = UDim2.new(0, 100, 1, 0)
    tabButton.Text = tabName
    tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    tabButton.Font = Enum.Font.SourceSansBold
    tabButton.TextSize = 16
    tabButton.LayoutOrder = #ui.Tabs + 1

    local tabContent = Instance.new("ScrollingFrame")
    tabContent.Parent = ui.TabContentArea
    tabContent.Size = UDim2.new(1, 0, 1, 0)
    tabContent.BackgroundTransparency = 1
    tabContent.CanvasSize = UDim2.new(0, 0, 1, 0) -- Kích thước canvas ban đầu
    tabContent.ScrollBarThickness = 8
    tabContent.Visible = #ui.Tabs == 0 -- Tab đầu tiên hiển thị

    local contentLayout = Instance.new("UIListLayout")
    contentLayout.Parent = tabContent
    contentLayout.Padding = UDim.new(0, 5)
    contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    contentLayout.FillDirection = Enum.FillDirection.Vertical
    contentLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    contentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left

    local tabInfo = {
        Button = tabButton,
        Content = tabContent,
        Layout = contentLayout
    }
    ui.Tabs[tabName] = tabInfo

    tabButton.MouseButton1Click:Connect(function()
        for _, tab in pairs(ui.Tabs) do
            tab.Content.Visible = (tab.Button == tabButton)
        end
    end)

    if #ui.Tabs > 1 then -- Ẩn tab đầu tiên nếu có nhiều hơn 1 tab
        local firstTabName = next(ui.Tabs)
        if firstTabName then
            ui.Tabs[firstTabName].Content.Visible = false
        end
        tabInfo.Content.Visible = true -- Hiển thị tab vừa tạo
    end

    return tabInfo
end

function Library.renameTab(ui, oldName, newName)
    if ui.Tabs[oldName] then
        ui.Tabs[oldName].Button.Text = newName
        ui.Tabs[newName] = ui.Tabs[oldName]
        ui.Tabs[oldName] = nil
    end
end

function Library.addButton(tabInfo, text, callback)
    local button = Instance.new("TextButton")
    button.Parent = tabInfo.Content
    button.Size = UDim2.new(1, 0, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = text
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 16
    button.MouseButton1Click:Connect(callback)
    button.LayoutOrder = #tabInfo.Content:GetChildren()
    return button
end

function Library.addToggle(tabInfo, text, defaultValue, callback)
    local toggleState = defaultValue
    local toggleButton = Instance.new("TextButton")
    toggleButton.Parent = tabInfo.Content
    toggleButton.Size = UDim2.new(1, 0, 0, 40)
    toggleButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.Text = text .. ": " .. (toggleState and "On" or "Off")
    toggleButton.Font = Enum.Font.SourceSansBold
    toggleButton.TextSize = 16
    toggleButton.MouseButton1Click:Connect(function()
        toggleState = not toggleState
        toggleButton.Text = text .. ": " .. (toggleState and "On" or "Off")
        callback(toggleState)
    end)
    toggleButton.LayoutOrder = #tabInfo.Content:GetChildren()
    return toggleButton
end

function Library.addSlider(tabInfo, text, minValue, maxValue, currentValue, callback)
    local sliderFrame = Instance.new("Frame")
    sliderFrame.Parent = tabInfo.Content
    sliderFrame.Size = UDim2.new(1, 0, 0, 40)
    sliderFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    sliderFrame.LayoutOrder = #tabInfo.Content:GetChildren()

    local sliderLabel = Instance.new("TextLabel")
    sliderLabel.Parent = sliderFrame
    sliderLabel.Size = UDim2.new(0.4, 0, 1, 0)
    sliderLabel.Text = text .. ": " .. currentValue
    sliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    sliderLabel.BackgroundTransparency = 1
    sliderLabel.Font = Enum.Font.SourceSansBold
    sliderLabel.TextSize = 16
    sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
    sliderLabel.TextYAlignment = Enum.VerticalAlignment.Center
    sliderLabel.Padding = new(0, 10, 0, 0)

    local sliderBar = Instance.new("Frame")
    sliderBar.Parent = sliderFrame
    sliderBar.Size = UDim2.new(0.55, 0, 0.6, 0)
    sliderBar.Position = UDim2.new(0.45, 0, 0.2, 0)
    sliderBar.BackgroundColor3 = Color3.fromRGB(80, 80, 80)

    local sliderThumb = Instance.new("Frame")
    sliderThumb.Parent = sliderBar
    sliderThumb.Size = UDim2.new(0, 20, 1, 0)
    sliderThumb.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
    sliderThumb.Draggable = true
    sliderThumb.BorderSizePixel = 1
    sliderThumb.BorderColor3 = Color3.fromRGB(0, 0, 0)

    local function updateSliderText(value)
        sliderLabel.Text = text .. ": " .. math.floor(value * (maxValue - minValue) + minValue)
    end

    sliderThumb:GetPropertyChangedSignal("Position"):Connect(function()
        local thumbX = sliderThumb.Position.X.Scale
        updateSliderText(thumbX)
        callback(thumbX * (maxValue - minValue) + minValue)
    end)

    -- Đặt vị trí ban đầu cho thumb
    local initialScale = (currentValue - minValue) / (maxValue - minValue)
    sliderThumb.Position = UDim2.new(initialScale, 0, 0, 0)
    updateSliderText(initialScale)

    return sliderFrame
end

function Library.addDropdown(tabInfo, text, options, callback)
    local dropdownFrame = Instance.new("Frame")
    dropdownFrame.Parent = tabInfo.Content
    dropdownFrame.Size = UDim2.new(1, 0, 0, 40)
    dropdownFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    dropdownFrame.LayoutOrder = #tabInfo.Content:GetChildren()

    local dropdownLabel = Instance.new("TextLabel")
    dropdownLabel.Parent = dropdownFrame
    dropdownLabel.Size = UDim2.new(0.4, 0, 1, 0)
    dropdownLabel.Text = text .. ": " .. (options[1] or "Select")
    dropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownLabel.BackgroundTransparency = 1
    dropdownLabel.Font = Enum.Font.SourceSansBold
    dropdownLabel.TextSize = 16
    dropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
    dropdownLabel.TextYAlignment = Enum.VerticalAlignment.Center
    dropdownLabel.Padding = new(0, 10, 0, 0)

    local dropdownButton = Instance.new("TextButton")
    dropdownButton.Parent = dropdownFrame
    dropdownButton.Size = UDim2.new(0.55, 0, 1, 0)
    dropdownButton.Position = UDim2.new(0.45, 0, 0, 0)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    dropdownButton.Text = "▼"
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.Font = Enum.Font.SourceSansBold
    dropdownButton.TextSize = 20

    local optionsFrame = Instance.new("ScrollingFrame")
    optionsFrame.Parent = dropdownFrame
    optionsFrame.Size = UDim2.new(1, 0, 0, 0)
    optionsFrame.Position = UDim2.new(0, 0, 1, 0)
    optionsFrame.BackgroundTransparency = 1
    optionsFrame.ScrollBarThickness = 8
    optionsFrame.Visible = false
    optionsFrame.CanvasSize = UDim2.new(0, 0, #options * 40, 0)

    local optionsLayout = Instance.new("UIListLayout")
    optionsLayout.Parent = optionsFrame
    optionsLayout.Padding = UDim.new(0, 2)
    optionsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    optionsLayout.FillDirection = Enum.FillDirection.Vertical
    optionsLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    optionsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left

    for i, option in ipairs(options) do
        local optionButton = Instance.new("TextButton")
        optionButton.Parent = optionsFrame
        optionButton.Size = UDim2.new(1, 0, 0, 40)
        optionButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        optionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        optionButton.Text = option
        optionButton.Font = Enum.Font.SourceSansBold
        optionButton.TextSize = 16
        optionButton.LayoutOrder = i
        optionButton.MouseButton1Click:Connect(function()
            dropdownLabel.Text = text .. ": " .. option
            optionsFrame.Visible = false
            callback(option)
        end)
    end

    dropdownButton.MouseButton1Click:Connect(function()
        optionsFrame.Visible = not optionsFrame.Visible
        optionsFrame.Size = UDim2.new(1, 0, 0, optionsFrame.Visible and math.min(#options, 5) * 40 or 0) -- Giới hạn số lượng hiển thị
    end)

    return dropdownFrame
end

function Library.addCheckbox(tabInfo, text, defaultValue, callback)
    local checkState = defaultValue
    local checkboxButton = Instance.new("TextButton")
    checkboxButton.Parent = tabInfo.Content
    checkboxButton.Size = UDim2.new(1, 0, 0, 40)
    checkboxButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    checkboxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkboxButton.Text = text .. ": " .. (checkState and "[✓]" or "[ ]")
    checkboxButton.Font = Enum.Font.SourceSansBold
    checkboxButton.TextSize = 16
    checkboxButton.MouseButton1Click:Connect(function()
        checkState = not checkState
        checkboxButton.Text = text .. ": " .. (checkState and "[✓]" or "[ ]")
        callback(checkState)
    end)
    checkboxButton.LayoutOrder = #tabInfo.Content:GetChildren()
    return checkboxButton
end

function Library.animate(element, properties, duration, easingStyle, easingDirection, callback)
    local TweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(
        duration,
        easingStyle or Enum.EasingStyle.Linear,
        easingDirection or Enum.EasingDirection.Out,
        0,
        false,
        0
    )
    local tween = TweenService:Create(element, tweenInfo, properties)
    tween:Play()
    if callback then
        tween.Completed:Connect(callback)
    end
    return tween
end

return Library
