-- Function to create a button
local function createButton(name, callback)
    local TextButton = Instance.new("TextButton")
    TextButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    TextButton.Size = UDim2.new(0, 200, 0, 50)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = name
    TextButton.TextColor3 = Color3.new(1, 1, 1)
    TextButton.TextSize = 24
    TextButton.MouseButton1Click:Connect(callback)
    return TextButton
end

-- Function to create the main GUI frame
local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    ScreenGui.Parent = game.CoreGui

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    Frame.Size = UDim2.new(0, 250, 0, 300)
    Frame.Position = UDim2.new(0.5, -125, 0.5, -150)
    Frame.Active = true
    Frame.Draggable = true

    UIListLayout.Parent = Frame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    return Frame
end

-- Function to add buttons to the frame
local function addButtonToFrame(frame, name, callback)
    local button = createButton(name, callback)
    button.Parent = frame
end

-- Main script execution
local function main()
    local frame = createGUI()

    addButtonToFrame(frame, "Infinite Yield", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    addButtonToFrame(frame, "Nameless Admin", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
    end)

    addButtonToFrame(frame, "QuirkyCmd", function()
        loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
    end)

    addButtonToFrame(frame, "Brick Admin BETA", function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Brick-Admin-BETA-12105",true))()
    end)
end

-- Execute the main function
main()
