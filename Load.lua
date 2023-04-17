local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")

-- Wait for the game to load
if not game:IsLoaded() then 
    game.Loaded:Wait() 
end

-- Anti-idle script
Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new())
    wait()
    VirtualUser:Button2Up(Vector2.new())
end)

-- Load GUI script
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/F2B-HUB/C7D7A/main/GUI'))()

-- Window management functions
local Window

local function SetWindow(w) 
    Window = w 
end

local function GetWindow() 
    return Window 
end

-- Return variables
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

return LocalPlayer, Rayfield, GetWindow, SetWindow
