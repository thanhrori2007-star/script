local player = game.Players.LocalPlayer

local defaultSpeed = 16
local enabled = false

-- Tạo GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SpeedGui"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 160)
frame.Position = UDim2.new(0.5, -125, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,30)
title.BackgroundTransparency = 1
title.Text = "Speed Menu"
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0.8,0,0,30)
toggle.Position = UDim2.new(0.1,0,0.3,0)
toggle.Text = "OFF"
toggle.BackgroundColor3 = Color3.fromRGB(150,0,0)
toggle.TextColor3 = Color3.new(1,1,1)
toggle.Parent = frame

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8,0,0,30)
box.Position = UDim2.new(0.1,0,0.6,0)
box.PlaceholderText = "Nhập tốc độ..."
box.Text = ""
box.BackgroundColor3 = Color3.fromRGB(60,60,60)
box.TextColor3 = Color3.new(1,1,1)
box.ClearTextOnFocus = false
box.Parent = frame

local function getHumanoid()
    local char = player.Character or player.CharacterAdded:Wait()
    return char:WaitForChild("Humanoid")
end

toggle.MouseButton1Click:Connect(function()
    enabled = not enabled

    if enabled then
        toggle.Text = "ON"
        toggle.BackgroundColor3 = Color3.fromRGB(0,150,0)

        local value = tonumber(box.Text)
        if value then
            getHumanoid().WalkSpeed = value
        end
    else
        toggle.Text = "OFF"
        toggle.BackgroundColor3 = Color3.fromRGB(150,0,0)
        getHumanoid().WalkSpeed = defaultSpeed
    end
end)

box.FocusLost:Connect(function()
    if enabled then
        local value = tonumber(box.Text)
        if value then
            getHumanoid().WalkSpeed = value
        end
    end
end)
