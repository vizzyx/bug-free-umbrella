local Ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/Abyss%20Lib/Abyss%20Lib%20Source.lua"))()
local Library = Ui

local LoadTime = tick()

local Loader = Library.CreateLoader(
    "viz's ui library", 
    Vector2.new(300, 300)
)

local Window = Library.Window(
    "viz ui lib - beta", 
    Vector2.new(500, 620)
)

Window.SendNotification(
    "Normal", -- Normal, Warning, Error 
    "Press RightShift to open menu and close menu!", 
    10
)

Window.Watermark(
    "Text Here"
)
-- Window:Visible = true

-- // UI Main \\ --
local Tab1 = Window:Tab("Scripts")
local Section1 = Tab1:Section(
    "Admin", 
    "Left"
)  -- Added missing parenthesis here

Section1:Button({
    Title = "Infinite Yield",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)
        if not success then
            warn("Error loading Infinite Yield: "..err)
        end
    end
})

Section1:Button({
    Title = "Nameless Admin",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
        end)
        if not success then
            warn("Error loading Nameless Admin: "..err)
        end
    end
})

Section1:Button({
    Title = "Dex Explorer",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
        end)
        if not success then
            warn("Error loading Dex Explorer: "..err)
        end
    end
})

Section1:Button({
    Title = "Executionist (lightweight script executor)",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vizzyx/bug-free-umbrella/main/internal/wsjp.lua"))()
        end)
        if not success then
            warn("Error loading Executionist: "..err)
        end
    end
})
  
--Tab1:AddPlayerlist()
Window:AddSettingsTab()
Window:SwitchTab(Tab1)
Window.ToggleAnime(false)
LoadTime = math.floor((tick() - LoadTime) * 1000)
