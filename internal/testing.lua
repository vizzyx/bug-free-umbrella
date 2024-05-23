local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

local watermark = library:Watermark("watermark | 60 fps | v4.20 | dev")
-- watermark:Set("Watermark Set")
watermark:Hide() -- toggles watermark

local main = library:Load{
    Name = "viz scripts or something",
    SizeX = 600,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json", -- config file extension
    Folder = "viz scripts or something" -- config folder name
}

-- library.Extension = "txt" (config file extension)
-- library.Folder = "config folder name"

local tab = main:Tab("Tab")

local section = tab:Section{
    Name = "Admin",
    Side = "Left"
}

local label = section:Label("Label")

--label:Set("Label Set")

section:Button{
    Name = "Destroy UI",
    Callback  = function()
        library:Unload()
    end
}

section:Button{
    Name = "Infinite Yield",
    Callback  = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
}
