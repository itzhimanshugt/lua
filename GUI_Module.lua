-- ============================================================
-- Simple GUI Module for Untitled Slayer Hack
-- Designed to work with Delta Executor and other exploit libraries
-- ============================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "UntitledSlayerGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Configuration
local Config = {
    Size = UDim2.new(0, 350, 0, 450),
    Position = UDim2.new(0.5, -175, 0.5, -225),
    Color = Color3.fromRGB(30, 30, 30),
    TitleColor = Color3.fromRGB(255, 100, 50),
    ButtonColor = Color3.fromRGB(60, 60, 60),
    ButtonHoverColor = Color3.fromRGB(80, 80, 80),
    TextColor = Color3.fromRGB(255, 255, 255),
    AccentColor = Color3.fromRGB(255, 150, 100),
}

-- Create main frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = Config.Size
MainFrame.Position = Config.Position
MainFrame.BackgroundColor3 = Config.Color
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Create title bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Config.TitleColor
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Size = UDim2.new(1, -40, 1, 0)
TitleText.Position = UDim2.new(0, 10, 0, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "Untitled Slayer - Hack GUI"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 16
TitleText.Font = Enum.Font.SourceSansBold
TitleText.Parent = TitleBar

-- Close button
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0.5, -15)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Parent = TitleBar

-- Content frame (scrollable)
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(1, -10, 1, -50)
ContentFrame.Position = UDim2.new(0, 5, 0, 45)
ContentFrame.BackgroundTransparency = 1
ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 400)
ContentFrame.ScrollBarThickness = 4
ContentFrame.Parent = MainFrame

-- Create sections
local function createSection(title)
    local SectionHeader = Instance.new("Frame")
    SectionHeader.Name = title .. "Section"
    SectionHeader.Size = UDim2.new(1, 0, 0, 30)
    SectionHeader.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    SectionHeader.BorderSizePixel = 0
    SectionHeader.Parent = ContentFrame
    
    local SectionTitle = Instance.new("TextLabel")
    SectionTitle.Name = "SectionTitle"
    SectionTitle.Size = UDim2.new(1, -10, 1, 0)
    SectionTitle.Position = UDim2.new(0, 5, 0, 0)
    SectionTitle.BackgroundTransparency = 1
    SectionTitle.Text = title
    SectionTitle.TextColor3 = Config.AccentColor
    SectionTitle.TextSize = 14
    SectionTitle.Font = Enum.Font.SourceSansBold
    SectionTitle.Parent = SectionHeader
    
    return SectionHeader
end

-- Create toggle button
local function createToggle(parent, name, initialState)
    local ToggleContainer = Instance.new("Frame")
    ToggleContainer.Name = name .. "Toggle"
    ToggleContainer.Size = UDim2.new(1, -10, 0, 35)
    ToggleContainer.BackgroundTransparency = 1
    ToggleContainer.Parent = parent
    
    local Label = Instance.new("TextLabel")
    Label.Name = "Label"
    Label.Size = UDim2.new(0.6, 0, 1, 0)
    Label.Position = UDim2.new(0, 5, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Config.TextColor
    Label.TextSize = 14
    Label.Font = Enum.Font.SourceSans
    Label.Parent = ToggleContainer
    
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = "ToggleButton"
    ToggleButton.Size = UDim2.new(0, 50, 1, 0)
    ToggleButton.Position = UDim2.new(1, -55, 0, 0)
    ToggleButton.BackgroundColor3 = initialState and Config.AccentColor or Color3.fromRGB(80, 80, 80)
    ToggleButton.Text = ""
    ToggleButton.TextTransparency = 1
    ToggleButton.Parent = ToggleContainer
    
    local ToggleText = Instance.new("TextLabel")
    ToggleText.Name = "ToggleText"
    ToggleText.Size = UDim2.new(1, 0, 1, 0)
    ToggleText.Position = UDim2.new(0, 0, 0, 0)
    ToggleText.BackgroundTransparency = 1
    ToggleText.Text = initialState and "ON" or "OFF"
    ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleText.TextSize = 12
    ToggleText.Font = Enum.Font.SourceSansBold
    ToggleText.Parent = ToggleButton
    
    -- Click handler
    local isOn = initialState
    ToggleButton.MouseButton1Click:Connect(function()
        isOn = not isOn
        ToggleButton.BackgroundColor3 = isOn and Config.AccentColor or Color3.fromRGB(80, 80, 80)
        ToggleText.Text = isOn and "ON" or "OFF"
        
        -- Update global config
        if _G.Hack and _G.Hack.SetConfig then
            _G.Hack.SetConfig(name, isOn)
        end
    end)
    
    return ToggleContainer, function()
        return isOn
    end
end

-- Create action button
local function createActionButton(parent, name, action)
    local ActionButton = Instance.new("TextButton")
    ActionButton.Name = name .. "Button"
    ActionButton.Size = UDim2.new(1, -10, 0, 35)
    ActionButton.BackgroundColor3 = Config.ButtonColor
    ActionButton.Text = name
    ActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ActionButton.TextSize = 14
    ActionButton.Font = Enum.Font.SourceSansBold
    ActionButton.Parent = parent
    
    ActionButton.MouseEnter:Connect(function()
        ActionButton.BackgroundColor3 = Config.ButtonHoverColor
    end)
    
    ActionButton.MouseLeave:Connect(function()
        ActionButton.BackgroundColor3 = Config.ButtonColor
    end)
    
    ActionButton.MouseButton1Click:Connect(function()
        action()
    end)
    
    return ActionButton
end

-- Create info label
local function createInfoLabel(parent, text)
    local InfoLabel = Instance.new("TextLabel")
    InfoLabel.Name = text:gsub("%s", "") .. "Label"
    InfoLabel.Size = UDim2.new(1, -10, 0, 35)
    InfoLabel.BackgroundTransparency = 1
    InfoLabel.Text = text
    InfoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    InfoLabel.TextSize = 12
    InfoLabel.Font = Enum.Font.SourceSans
    InfoLabel.Parent = parent
    
    return InfoLabel
end

-- Build GUI sections
local FeaturesSection = createSection("Features")
local CombatSection = createSection("Combat")
local SettingsSection = createSection("Settings")
local ActionsSection = createSection("Actions")

-- Add toggle buttons to Features section
local ToggleAutoFarm, GetAutoFarm
local ToggleAutoLevel, GetAutoLevel
local ToggleDamageBoost, GetDamageBoost
local ToggleInstantKill, GetInstantKill
local ToggleAutoCollect, GetAutoCollect

ToggleAutoFarm, GetAutoFarm = createToggle(FeaturesSection, "Auto-Farm", true)
ToggleAutoLevel, GetAutoLevel = createToggle(CombatSection, "Auto-Level", true)
ToggleDamageBoost, GetDamageBoost = createToggle(CombatSection, "Damage Boost", false)
ToggleInstantKill, GetInstantKill = createToggle(CombatSection, "Instant Kill", false)
ToggleAutoCollect, GetAutoCollect = createToggle(SettingsSection, "Auto-Collect", true)

-- Add info labels
local InfoLevel = createInfoLabel(SettingsSection, "Current Level: Loading...")
local InfoEnemies = createInfoLabel(SettingsSection, "Enemies Nearby: 0")

-- Add action buttons to Actions section
createActionButton(ActionsSection, "Start All", function()
    if _G.StartHack then _G.StartHack() end
end)

createActionButton(ActionsSection, "Stop All", function()
    if _G.StopHack then _G.StopHack() end
end)

createActionButton(ActionsSection, "Check Status", function()
    if _G.HackStatus then _G.HackStatus() end
end)

createActionButton(ActionsSection, "Boost Damage", function()
    if _G.Hack and _G.Hack.BoostDamage then _G.Hack.BoostDamage(2.5) end
end)

createActionButton(ActionsSection, "Instant Kill", function()
    if _G.Hack and _G.Hack.InstantKill then _G.Hack.InstantKill() end
end)

-- Update info labels periodically
spawn(function()
    while true do
        task.wait(2)
        
        -- Update level
        if _G.Hack and _G.Hack.GetLevel then
            local level = _G.Hack.GetLevel()
            InfoLevel.Text = "Current Level: " .. (level or "Loading...")
        end
        
        -- Update enemies nearby
        local enemies = getEnemiesInRange and getEnemiesInRange(50) or {}
        InfoEnemies.Text = "Enemies Nearby: " .. (#enemies or 0)
    end
end)

-- Make GUI accessible
_G.GUI = {
    MainFrame = MainFrame,
    ToggleAutoFarm = function()
        local isOn = GetAutoFarm()
        ToggleAutoFarm.MouseButton1Click:Fire()
        return not isOn
    end,
    ToggleAutoLevel = function()
        local isOn = GetAutoLevel()
        ToggleAutoLevel.MouseButton1Click:Fire()
        return not isOn
    end,
    ToggleDamageBoost = function()
        local isOn = GetDamageBoost()
        ToggleDamageBoost.MouseButton1Click:Fire()
        return not isOn
    end,
    ToggleInstantKill = function()
        local isOn = GetInstantKill()
        ToggleInstantKill.MouseButton1Click:Fire()
        return not isOn
    end,
    ToggleAutoCollect = function()
        local isOn = GetAutoCollect()
        ToggleAutoCollect.MouseButton1Click:Fire()
        return not isOn
    end,
    Show = function()
        MainFrame.Visible = true
    end,
    Hide = function()
        MainFrame.Visible = false
    end,
    Close = function()
        MainFrame:Destroy()
        ScreenGui:Destroy()
    end,
}

-- Close button connection
CloseButton.MouseButton1Click:Connect(function()
    _G.GUI.Close()
end)

-- Make sure content frame canvas is sized correctly
spawn(function()
    task.wait(0.5)
    ContentFrame.CanvasSize = UDim2.new(0, 0, 0, math.max(400, FeaturesSection.AbsolutePosition.Y + FeaturesSection.AbsoluteSize.Y - ContentFrame.AbsolutePosition.Y))
end)

-- Print confirmation
print("[GUI] Untitled Slayer GUI loaded!")
print("[GUI] Use _G.GUI.Show() to display")
print("[GUI] Use _G.GUI.Hide() to hide")
print("[GUI] Use _G.GUI.Close() to close")

return _G.GUI
