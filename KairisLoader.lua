-- KAIRIS LOADER – BARE METAL (Smooth Edges)
local SCRIPTS = {
    {Name = "🔥 Kairis Hub", Code = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Kairis-Scripts/MM2/refs/heads/main/KairisHub"))()'};
    {Name = "✨ Kairis Spawner", Code = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Kairis-Scripts/MM2/refs/heads/main/KairisSpawner"))()'};
    {Name = "💼 Trade Controller", Code = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Kairis-Scripts/MM2/refs/heads/main/TradeController"))()'};
}

-- Force GUI to appear
local gui = Instance.new("ScreenGui")
gui.Name = "KairisLoader"
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 380, 0, 260)
frame.Position = UDim2.new(0.5, -190, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(22, 24, 28)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 0
frame.Parent = gui

-- SMOOTH EDGES – Main frame
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = frame

-- Title Container (icon + text)
local titleContainer = Instance.new("Frame")
titleContainer.Size = UDim2.new(1, 0, 0, 40)
titleContainer.BackgroundTransparency = 1
titleContainer.Parent = frame

-- Menu Icon (SVG-style via TextLabel with Unicode/Lucide approximation)
local icon = Instance.new("TextLabel")
icon.Size = UDim2.new(0, 30, 0, 30)
icon.Position = UDim2.new(0.02, 0, 0.05, 0)
icon.BackgroundTransparency = 1
icon.Text = "☰"  -- Hamburger menu icon
icon.TextColor3 = Color3.fromRGB(255, 255, 255)
icon.TextSize = 24
icon.Font = Enum.Font.Gotham
icon.TextXAlignment = Enum.TextXAlignment.Center
icon.TextYAlignment = Enum.TextYAlignment.Center
icon.Parent = titleContainer

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0.08, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "KAIRIS LOADER"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 24
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = titleContainer

-- Simple buttons
local yPos = 50
for _, data in ipairs(SCRIPTS) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.9, 0, 0, 40)
    btn.Position = UDim2.new(0.05, 0, 0, yPos)
    btn.BackgroundColor3 = Color3.fromRGB(40, 42, 46)
    btn.BorderSizePixel = 0
    btn.Text = data.Name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 16
    btn.Font = Enum.Font.Gotham
    btn.Parent = frame
    
    -- SMOOTH EDGES – Each button
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 8)
    btnCorner.Parent = btn
    
    btn.MouseButton1Click:Connect(function()
        local fn, err = loadstring(data.Code)
        if fn then pcall(fn) end
        gui:Destroy()
        script:Destroy()
    end)
    
    yPos = yPos + 48
end

-- Footer
local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1, 0, 0, 30)
footer.Position = UDim2.new(0, 0, 1, -30)
footer.BackgroundTransparency = 1
footer.Text = "Self-destruct gui! Click once"
footer.TextColor3 = Color3.fromRGB(150, 150, 150)
footer.TextSize = 14
footer.Font = Enum.Font.Gotham
footer.Parent = frame
