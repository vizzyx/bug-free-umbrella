-- Create the ScreenGui
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the TextBox for jump power
local jumpPowerTextBox = Instance.new("TextBox")
jumpPowerTextBox.Size = UDim2.new(0, 100, 0, 30)
jumpPowerTextBox.Position = UDim2.new(0.5, -50, 0.3, 0)
jumpPowerTextBox.PlaceholderText = "Jump Power"
jumpPowerTextBox.Parent = gui

-- Create the TextBox for walk speed
local walkSpeedTextBox = Instance.new("TextBox")
walkSpeedTextBox.Size = UDim2.new(0, 100, 0, 30)
walkSpeedTextBox.Position = UDim2.new(0.5, -50, 0.4, 0)
walkSpeedTextBox.PlaceholderText = "Walk Speed"
walkSpeedTextBox.Parent = gui

-- Create the Button
local changeButton = Instance.new("TextButton")
changeButton.Size = UDim2.new(0, 100, 0, 30)
changeButton.Position = UDim2.new(0.5, -50, 0.5, 0)
changeButton.Text = "Change"
changeButton.Parent = gui

-- Function to apply changes
local function applyChanges()
    local jumpPower = tonumber(jumpPowerTextBox.Text)
    local walkSpeed = tonumber(walkSpeedTextBox.Text)
    
    if jumpPower and walkSpeed then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
    else
        warn("Invalid input.")
    end
end

-- Connect the button to the function
changeButton.MouseButton1Click:Connect(applyChanges)
