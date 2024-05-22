local function createButton(name, position, callback)
    local TextButton = Instance.new("TextButton")
    TextButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    TextButton.Size = UDim2.new(0, 200, 0, 50)
    TextButton.Position = position
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = name
    TextButton.TextColor3 = Color3.new(1, 1, 1)
    TextButton.TextSize = 24
    TextButton.MouseButton1Click:Connect(callback)
    return TextButton
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui

Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.Size = UDim2.new(0, 250, 0, 300)
Frame.Position = UDim2.new(0.5, -125, 0.5, -150)
Frame.Active = true
Frame.Draggable = true

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

local infiniteYieldButton = createButton("Infinite Yield", UDim2.new(0, 0, 0, 0), function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
infiniteYieldButton.Parent = Frame

local namelessAdminButton = createButton("Nameless Admin", UDim2.new(0, 0, 0, 0), function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
end)
namelessAdminButton.Parent = Frame

local quirkyCmdButton = createButton("QuirkyCmd", UDim2.new(0, 0, 0, 0), function()
    loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
end)
quirkyCmdButton.Parent = Frame

local brickAdminButton = createButton("Brick Admin BETA", UDim2.new(0, 0, 0, 0), function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Brick-Admin-BETA-12105",true))()
end)
brickAdminButton.Parent = Frame
