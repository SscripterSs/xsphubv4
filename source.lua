--xsphub


--ui
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "XSPhub - V4.0(revrmp)", HidePremium = false, SaveConfig = true, ConfigFolder = "xspLLC"})


_G.AutoTap = true
_G.AutoRebirth = true
_G.AutoHatch = true
_G.SelectEgg = "Basic Egg"

function AutoTap()
while _G.AutoTap == true do
game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
wait(00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
end
end


function AutoRebirth()
while _G.AutoRebirth == true do
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(5)
end
end

function AutoHatch()
    while _G.AutoHatch == true do
game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.SelectEgg,1)
end
end

--tabs
local AFTab = Window:MakeTab({
	Name = "AutoFarms",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local crdTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


--sections
local AFSection = AFTab:AddSection({
	Name = "AutoFarms"
})

local EggsSection = EggsTab:AddSection({
	Name = "Egg Opener"
})

local crdSection = crdTab:AddSection({
	Name = "Credits"
})


--others
AFSection:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.AutoTap = Value
AutoTap()
	end    
})

AFSection:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
           AutoRebirth()
	end    
})

EggsSection:AddToggle({
	Name = "Auto hatch eggs",
	Default = false,
	Callback = function(Value)
	    _G.AutoHatch = Value
	    AutoHatch()
	end    
})

EggsTab:AddDropdown({
	Name = "Egg Select",
	Default = "Basic Egg",
	Options = {"Basic Egg", "Rare Egg", "Forest Egg", "Desert Egg", "Winter Egg", "Lava Egg", "Aqua Egg", "Sakura Egg", "Mine Egg", "Galaxy Egg"},
	Callback = function(Value)
		_G.SelectEgg = Value
 print(_G.SelectEgg)
	end    
})



OrionLib:Init()
