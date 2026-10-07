# 🎮 Untitled Slayer - Lua Hacking Script

> **Optimized for Delta Executor** | **loadstring ready** | **Auto-updating via GitHub** | **GUI Support** ✨ NEW!

---

## 📦 Quick Start (Delta Executor)

### **One-Liner Load Commands**

```lua
-- METHOD 1: Load main script directly (recommended)
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/UntitledSlayer_Hack.lua", true))()

-- METHOD 2: Load with custom config
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/UntitledSlayer_Config.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/UntitledSlayer_Hack.lua", true))()

-- METHOD 3: Load everything at once (all-in-one)
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/UntitledSlayer_AllInOne.lua", true))()
```

**Note:** The `true` parameter enables caching, so the script doesn't reload every time.

---

## 🎯 After Loading - Run These Commands

```lua
-- 1. Start all features
_G.StartHack()

-- 2. Check status after a few seconds
task.wait(3)
_G.HackStatus()

-- 3. Test individual features
_G.HackCommand("/farm")      -- Toggle auto-farm
_G.HackCommand("/damage")     -- Toggle damage boost
_G.HackCommand("/instant")    -- Toggle instant kill

-- 4. Check your level
print("Current Level: " .. _G.Hack.GetLevel())

-- 5. When done, stop everything
_G.StopHack()
```

---

## 📁 Repository Structure

```
UNTITLED-SLAYER-HACK/
├── GUI_Module.lua                   # NEW! Visual interface for controlling the hack
├── GUI_README.md                    # Quick reference guide for GUI
├── GUI_GUIDE.md                     # Comprehensive GUI documentation
├── GUI_PUSH_INSTRUCTIONS.md         # Instructions for uploading to GitHub
│
├── UntitledSlayer_Hack.lua          # Main hack script (load this!)
├── UntitledSlayer_Config.lua        # Custom configuration file
├── UntitledSlayer_AllInOne.lua      # Combined version (advanced)
└── README.md                        # This file
```

---

## 🎨 GUI Module (NEW!)

The GUI module provides a visual interface for controlling the Untitled Slayer hack, making it easier to toggle features and monitor progress.

### **Loading the GUI:**

```lua
-- Load the GUI module
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/GUI_Module.lua", true))()

-- Show the GUI
_G.GUI.Show()
```

### **GUI Features:**

| Section | Buttons |
|---------|----------|
| **Features** | Auto-Farm, Auto-Level |
| **Combat** | Damage Boost, Instant Kill |
| **Settings** | Auto-Collect, Level Info |
| **Actions** | Start/Stop All, Check Status, Boost Damage, Instant Kill |

### **GUI Controls:**

```lua
-- Show/hide GUI
_G.GUI.Show()     -- Display the GUI
_G.GUI.Hide()     -- Hide the GUI
_G.GUI.Close()    -- Destroy the GUI

-- Toggle features programmatically
_G.GUI.ToggleAutoFarm()
_G.GUI.ToggleAutoLevel()
_G.GUI.ToggleDamageBoost()
_G.GUI.ToggleInstantKill()
_G.GUI.ToggleAutoCollect()
```

---

## 🎮 Feature Overview

| Feature | Description | Default |
|---------|-------------|--------|
| **Auto-Farm** | Automatically finds and attacks enemies | ✅ Enabled |
| **Auto-Level** | Detects and applies upgrades | ✅ Enabled |
| **Damage Boost** | Multiply damage output (2x by default) | ❌ Disabled |
| **Instant Kill** | Eliminate multiple enemies at once | ❌ Disabled |
| **Auto-Collect** | Gathers loot, gems, resources | ✅ Enabled |

---

## ⚙️ Configuration Examples

### **Change Farm Range (for faster movement)**
```lua
_G.Hack.SetConfig("FarmRange", 60)
```

### **Boost Damage More**
```lua
_G.Hack.BoostDamage(3.0)  -- 3x damage
```

### **Target Specific Enemies**
```lua
_G.Hack.SetConfig("TargetType", "Dragons")  -- Only farm dragons
```

---

## 🔧 Troubleshooting

### **Script not starting?**
```lua
-- Force reload the script
loadstring(game:HttpGet("URL_TO_SCRIPT.lua", false))()  -- false = no cache
```

### **Features not working?**
```lua
-- Check what's enabled
_G.HackStatus()
```

### **Want fresh script every time?**
```lua
-- Remove the 'true' parameter from getHttp
loadstring(game:HttpGet("URL_TO_SCRIPT.lua", false))()
```

---

## 📊 URL Examples for Different Methods

### **Direct Raw GitHub URL (Recommended)**
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/UNTITLED-SLAYER-HACK/main/UntitledSlayer_Hack.lua", true))()
```

### **Using GitHub Pages (if set up)**
```lua
loadstring(game:HttpGet("https://YOUR_USERNAME.github.io/UNTITLED-SLAYER-HACK/UntitledSlayer_Hack.lua", true))()
```

### **Using jsDelivr CDN (faster loading)**
```lua
loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/YOUR_USERNAME/UNTITLED-SLAYER-HACK@main/UntitledSlayer_Hack.lua", true))()
```

---

## 🚀 Quick Reference Card

```lua
┌─────────────────────────────────────────┐
│  DELTA CONSOLE COMMANDS                 │
├─────────────────────────────────────────┤
│  loadstring(game:HttpGet("URL"))()      │ → Load script
│  _G.StartHack()                         │ → Start all features
│  _G.StopHack()                          │ → Stop all features
│  _G.HackStatus()                        │ → Show status
│  _G.HackCommand("/farm")                │ → Toggle farm
│  _G.Hack.BoostDamage(2.5)               │ → Set damage multiplier
│  _G.Hack.GetLevel()                     │ → Get current level
└─────────────────────────────────────────┘
```

---

## 🎯 Recommended Settings

### **For Fast Farming**
```lua
_G.Hack.SetConfig("FarmRange", 60)
_G.Hack.SetConfig("DamageMultiplier", 2.5)
_G.HackCommand("/farm")
```

### **For Boss Hunting**
```lua
_G.Hack.SetConfig("TargetType", "Dragons")
_G.Hack.SetConfig("skipBossFight", false)
_G.Hack.BoostDamage(3.0)
```

---

## 📝 Notes

- ✅ Compatible with all Delta Executor versions
- ✅ Works with Fluxus, Synapse, Krnl, and other exploit libraries
- ✅ The `true` parameter in `HttpGet` enables caching for faster loading
- ✅ Scripts auto-update when you change the version parameter

---

## 🙏 Credits

Created for the Untitled Slayer community. Feel free to fork and modify!

**Version**: 1.0.0
**License**: MIT
