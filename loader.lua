local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "vizhubgui"
screenGui.Parent = playerGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "Heads Up! Only click this button after ensuring you're on an alt. This will execute the script."
button.Parent = screenGui

local function executeCode()
    local url = "https://raw.githubusercontent.com/vizzyx/bug-free-umbrella/main/source.lua"
    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    
    if not success then
        warn("Error executing script: "..err)
    end
end

button.MouseButton1Click:Connect(executeCode)
