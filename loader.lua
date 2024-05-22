local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "vizhubgui"
screenGui.Parent = playerGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "main."
button.Parent = screenGui

local beta = Instance.new("TextButton")
beta.Size = UDim2.new(0, 200, 0, 250)
beta.Position = UDim2.new(0.5, -100, 0.5, -25)
beta.Text = "beta."
beta.Parent = screenGui

local function executeCode()
    local url = "https://raw.githubusercontent.com/vizzyx/bug-free-umbrella/main/source.lua"
    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    screenGui:Destroy()
    
    if not success then
        warn("Error executing script: "..err)
    end
end

button.MouseButton1Click:Connect(executeCode)
beta.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vizzyx/bug-free-umbrella/main/internal/testing.lua"))()
        screenGui:Destroy()
        warn("WARNING: VIZ UI LIB BETA VERSION LOADED. UNSTABLE. EXPECT BUGS.")
end)
