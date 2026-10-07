# 🎨 Untitled Slayer - GUI Module

A simple, customizable GUI for the Untitled Slayer hack script.

## 📦 Files Included

- `GUI_Module.lua` - Main GUI module
- `GUI_README.md` - This file

## 🚀 Quick Start

### **Load the GUI:**

```lua
-- Load the GUI module
loadfile("/sdcard/Download/Hacks/GUI_Module.lua")()

-- Or with loadstring:
loadstring(game:HttpGet("file:///sdcard/Download/Hacks/GUI_Module.lua", true))()
```

### **Show the GUI:**

```lua
_G.GUI.Show()
```

### **Hide or Close the GUI:**

```lua
_G.GUI.Hide()      -- Hide the GUI
_G.GUI.Close()     -- Destroy the GUI
```

## 🎮 GUI Controls

### **Toggle Buttons:**
- **Features Section**
  - Auto-Farm (toggle on/off)
- **Combat Section**
  - Auto-Level
  - Damage Boost
  - Instant Kill
- **Settings Section**
  - Auto-Collect

### **Action Buttons:**
- Start All
- Stop All
- Check Status
- Boost Damage
- Instant Kill

## 📊 Live Information

The GUI displays real-time information:
- Current Level
- Enemies Nearby count

## 🎨 Customization

You can customize the GUI by modifying the `Config` table in `GUI_Module.lua`:

```lua
local Config = {
    Size = UDim2.new(0, 350, 0, 450),
    Position = UDim2.new(0.5, -175, 0.5, -225),
    Color = Color3.fromRGB(30, 30, 30),
    TitleColor = Color3.fromRGB(255, 100, 50),
    ButtonColor = Color3.fromRGB(60, 60, 60),
    TextColor = Color3.fromRGB(255, 255, 255),
    AccentColor = Color3.fromRGB(255, 150, 100),
}
```

## 🔧 API Reference

```lua
-- Show the GUI
_G.GUI.Show()

-- Hide the GUI
_G.GUI.Hide()

-- Close and destroy the GUI
_G.GUI.Close()

-- Toggle features programmatically
_G.GUI.ToggleAutoFarm()
_G.GUI.ToggleAutoLevel()
_G.GUI.ToggleDamageBoost()
_G.GUI.ToggleInstantKill()
_G.GUI.ToggleAutoCollect()
```

## 📝 Notes

- The GUI is designed to work with the `UntitledSlayer_AllInOne.lua` script
- It updates automatically when you use the hack functions
- The canvas size adjusts automatically based on content

---

**Enjoy your enhanced hacking experience!** 🎮✨
