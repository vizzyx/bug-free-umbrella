local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "viz's script hub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "viz's script hub"})

OrionLib:MakeNotification({
	Name = "viz scripts",
	Content = "Loaded script hub.",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local function notif()
    OrionLib:MakeNotification({
	Name = "viz scripts",
	Content = "Loaded script.",
	Image = "rbxassetid://4483345998",
	Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Administrator"
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        notif()
  	end
})

Tab:AddButton({
	Name = "Nameless Admin",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
        notif()
  	end
})

Tab:AddButton({
    Name = "Executor-in-Executor",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vizzyx/bug-free-umbrella/main/internal/wsjp.lua"))()
        notif()
    end
})

Tab:AddBind({
	Name = "Destroy GUI",
	Default = Enum.KeyCode.J,
	Hold = true,
	Callback = function()
		OrionLib:Destroy()
	end    
})

OrionLib:Init()
