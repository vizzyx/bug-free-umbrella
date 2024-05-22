-- Create the ScreenGui
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Styling
local windowColor = Color3.fromRGB(50, 50, 50)
local borderColor = Color3.fromRGB(100, 100, 100)
local buttonColor = Color3.fromRGB(52, 152, 219)
local buttonHoverColor = Color3.fromRGB(41, 128, 185)

-- Create the main window frame
local mainWindow = Instance.new("Frame")
mainWindow.Size = UDim2.new(0.4, 0, 0.6, 0)
mainWindow.Position = UDim2.new(0.3, 0, 0.2, 0)
mainWindow.BackgroundColor3 = windowColor
mainWindow.BorderSizePixel = 1
mainWindow.BorderColor3 = borderColor
mainWindow.Parent = gui

-- Create the title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = borderColor
titleBar.Parent = mainWindow

-- Create the title text
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 1, 0)
titleText.BackgroundTransparency = 1
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.Text = "Executor-inside-an-executor - by viz"
titleText.Font = Enum.Font.SourceSans
titleText.TextSize = 14
titleText.Parent = titleBar

-- Create the minimize button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -60, 0, 0)
minimizeButton.BackgroundColor3 = buttonColor
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.Text = "_"
minimizeButton.Font = Enum.Font.SourceSans
minimizeButton.TextSize = 14
minimizeButton.Parent = titleBar

-- Function to minimize the window
minimizeButton.MouseButton1Click:Connect(function()
    mainWindow.Visible = false
end)

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = buttonColor
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSans
closeButton.TextSize = 14
closeButton.Parent = titleBar

-- Function to close the window
closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Create the TextBox for entering Lua code
local luaCodeTextBox = Instance.new("TextBox")
luaCodeTextBox.Size = UDim2.new(1, -20, 1, -80)
luaCodeTextBox.Position = UDim2.new(0, 10, 0, 40)
luaCodeTextBox.BackgroundTransparency = 1
luaCodeTextBox.Text = "-- Enter Lua code here"
luaCodeTextBox.TextWrapped = true
luaCodeTextBox.TextScaled = true
luaCodeTextBox.MultiLine = true
luaCodeTextBox.Parent = mainWindow

-- Create the Button to execute the Lua code
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, 0, 0, 30)
executeButton.Position = UDim2.new(0.25, 0, 1, -40)
executeButton.BackgroundColor3 = buttonColor
executeButton.TextColor3 = Color3.new(1, 1, 1)
executeButton.Text = "Execute"
executeButton.Font = Enum.Font.SourceSans
executeButton.TextSize = 14
executeButton.Parent = mainWindow

-- Function to execute the Lua code
local function executeLuaCode()
    local luaCode = luaCodeTextBox.Text
    -- Attempt to execute the Lua code
    local success, errorMessage = pcall(function()
        loadstring(luaCode)()
    end)
    -- If there was an error, print it
    if not success then
        warn("Error executing Lua code: " .. errorMessage)
    end
end

-- Connect the button to the function
executeButton.MouseButton1Click:Connect(executeLuaCode)

-- Hover effect for the buttons
local function buttonHover(button)
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = buttonHoverColor
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = buttonColor
    end)
end

buttonHover(minimizeButton)
buttonHover(closeButton)
buttonHover(executeButton)
