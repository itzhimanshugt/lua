# 🎨 Untitled Slayer - Complete GUI Guide

## Overview

This GUI module provides a visual interface for controlling the Untitled Slayer hack, making it easier to toggle features and monitor progress.

---

## 📁 Files in Repository

```
UntitledSlayer-Hack/
├── GUI_Module.lua          ← Main GUI module (NEW!)
├── GUI_README.md           ← Quick reference guide
└── GUI_GUIDE.md            ← This comprehensive guide
```

---

## 🎯 Loading the GUI

### **Method 1: Direct Load (Recommended)**

```lua
-- Open Delta console and paste:
loadfile("/sdcard/Download/Hacks/GUI_Module.lua")()
```

### **Method 2: With Caching**

```lua
loadstring(game:HttpGet("file:///sdcard/Download/Hacks/GUI_Module.lua", true))()
```

### **Method 3: From GitHub (if hosted)**

```lua
-- Replace YOUR_USERNAME with your GitHub username:
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/GUI_Module.lua", true))()
```

---

## 🎮 GUI Features

### **Features Section**
| Button | Description | Default |
|--------|-------------|---------|
| Auto-Farm | Automatically finds and attacks enemies | ✅ ON |

### **Combat Section**
| Button | Description | Default |
|--------|-------------|---------|
| Auto-Level | Detects and applies upgrades | ✅ ON |
| Damage Boost | Multiplies damage output | ❌ OFF |
| Instant Kill | Eliminates multiple enemies at once | ❌ OFF |

### **Settings Section**
| Button | Description | Default |
|--------|-------------|---------|
| Auto-Collect | Gathers loot, gems, resources | ✅ ON |

### **Actions Section**
| Button | Description |
|--------|-------------|
| Start All | Starts all features |
| Stop All | Stops all features |
| Check Status | Shows current status in console |
| Boost Damage | Sets damage multiplier to 2.5x |
| Instant Kill | Kills nearby enemies instantly |

---

## 📊 Live Information Display

The GUI shows real-time data:
- **Current Level**: Updates every 2 seconds
- **Enemies Nearby**: Shows count of detectable enemies

---

## 🎨 Customization

### **Changing Colors**

Edit the `Config` table in `GUI_Module.lua`:

```lua
local Config = {
    Size = UDim2.new(0, 350, 0, 450),        -- GUI size
    Position = UDim2.new(0.5, -175, 0.5, -225),  -- GUI position
    Color = Color3.fromRGB(30, 30, 30),       -- Main background
    TitleColor = Color3.fromRGB(255, 100, 50),  -- Title bar
    ButtonColor = Color3.fromRGB(60, 60, 60),   -- Buttons
    ButtonHoverColor = Color3.fromRGB(80, 80, 80),
    TextColor = Color3.fromRGB(255, 255, 255),  -- Text color
    AccentColor = Color3.fromRGB(255, 150, 100),  -- Active state
}
```

### **Changing Size**

```lua
-- Make GUI larger
Config.Size = UDim2.new(0, 450, 0, 550)

-- Make GUI smaller
Config.Size = UDim2.new(0, 300, 0, 400)
```

### **Changing Position**

```lua
-- Move to top-left
Config.Position = UDim2.new(0, 10, 0, 10)

-- Move to bottom-right
Config.Position = UDim2.new(1, -365, 1, -460)
```

---

## 🔧 Programmatic Control

### **Toggle Features**

```lua
-- Toggle individual features
_G.GUI.ToggleAutoFarm()
_G.GUI.ToggleAutoLevel()
_G.GUI.ToggleDamageBoost()
_G.GUI.ToggleInstantKill()
_G.GUI.ToggleAutoCollect()
```

### **Show/Hide GUI**

```lua
_G.GUI.Show()   -- Display the GUI
_G.GUI.Hide()   -- Hide the GUI
_G.GUI.Close()  -- Destroy the GUI
```

---

## 🎯 Complete Workflow Example

```lua
-- ============================================
-- COMPLETE GUI WORKFLOW
-- ============================================

-- STEP 1: Load the main hack script
loadfile("/sdcard/Download/Hacks/UntitledSlayer_AllInOne.lua")()

-- STEP 2: Load the GUI module
loadfile("/sdcard/Download/Hacks/GUI_Module.lua")()

-- STEP 3: Show the GUI
_G.GUI.Show()

-- STEP 4: Start all features
_G.StartHack()

-- STEP 5: Wait a moment and check status
task.wait(3)
_G.HackStatus()

-- STEP 6: Toggle some features via GUI
_G.GUI.ToggleAutoLevel()
_G.GUI.ToggleDamageBoost()

-- STEP 7: Monitor progress (optional)
spawn(function()
    while true do
        task.wait(5)
        print("Level: " .. _G.Hack.GetLevel())
    end
end)

-- WHEN DONE:
_G.StopHack()
_G.GUI.Close()
```

---

## 🎨 Visual Preview

```
┌─────────────────────────────────────┐
│  Untitled Slayer - Hack GUI         │ X  ← Title bar + Close button
├─────────────────────────────────────┤
│                                     │
│  ╔═══════════ FEATURES ════════════╗│
│  ║ Auto-Farm        [ON]           ║│
│  ╚═════════════════════════════════╝│
│                                     │
│  ╔═══════════ COMBAT ══════════════╗│
│  ║ Auto-Level     [ON]             ║│
│  ║ Damage Boost   [OFF]            ║│
│  ║ Instant Kill   [OFF]            ║│
│  ╚═════════════════════════════════╝│
│                                     │
│  ╔═══════════ SETTINGS ════════════╗│
│  ║ Auto-Collect   [ON]             ║│
│  ║ Current Level: 5                ║│
│  ║ Enemies Nearby: 8               ║│
│  ╚═════════════════════════════════╝│
│                                     │
│  ╔═══════════ ACTIONS ══════════════╗│
│  ║ Start All                       ║│
│  ║ Stop All                        ║│
│  ║ Check Status                    ║│
│  ║ Boost Damage                    ║│
│  ║ Instant Kill                    ║│
│  ╚═════════════════════════════════╝│
│                                     │
└─────────────────────────────────────┘
```

---

## 🎯 Quick Reference Card

```lua
┌─────────────────────────────────────────┐
│  GUI CONTROLS                           │
├─────────────────────────────────────────┤
│                                         │
│  LOAD:                                  │
│  loadfile("/sdcard/Download/Hacks/      │
│         GUI_Module.lua")()              │
│                                         │
│  SHOW:                                  │
│  _G.GUI.Show()                          │
│                                         │
│  HIDE:                                  │
│  _G.GUI.Hide()                          │
│                                         │
│  CLOSE:                                │
│  _G.GUI.Close()                         │
│                                         │
│  TOGGLE:                               │
│  _G.GUI.ToggleAutoFarm()                │
│  _G.GUI.ToggleAutoLevel()               │
│  _G.GUI.ToggleDamageBoost()             │
│  _G.GUI.ToggleInstantKill()             │
│  _G.GUI.ToggleAutoCollect()             │
│                                         │
└─────────────────────────────────────────┘
```

---

## 🎯 Tips & Tricks

### **Tip 1: Keep GUI Visible**
Set `ScreenGui.ResetOnSpawn = false` to keep the GUI even after game events.

### **Tip 2: Custom Hotkeys**
You can add hotkeys to show/hide the GUI:

```lua
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if processed then return end
    
    if input.KeyCode == Enum.KeyCode.F1 then
        _G.GUI.Show()
    elseif input.KeyCode == Enum.KeyCode.F2 then
        _G.GUI.Hide()
    end
end)
```

### **Tip 3: Dark Mode**
For a darker theme, change the config:

```lua
Config.Color = Color3.fromRGB(20, 20, 20)
Config.ButtonColor = Color3.fromRGB(40, 40, 40)
Config.AccentColor = Color3.fromRGB(100, 200, 100)
```

---

## 📝 Notes

- The GUI is designed to work with the `UntitledSlayer_AllInOne.lua` script
- It updates automatically when you use the hack functions
- The canvas size adjusts automatically based on content
- The GUI will persist across game events unless closed

---

**Enjoy your enhanced hacking experience!** 🎮✨
