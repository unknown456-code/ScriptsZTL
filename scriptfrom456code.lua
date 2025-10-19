-- LocalScript. Safe GUI, with guards.
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
if not plr then return end
local pg = plr:WaitForChild("PlayerGui")

-- remove previous
local existing = pg:FindFirstChild("PanelForModModeration")
if existing then existing:Destroy() end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PanelForModModeration"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = pg

local bg = Instance.new("Frame")
bg.Name = "ModeratorFrame"
bg.Parent = screenGui
bg.AnchorPoint = Vector2.new(0.5,0.5)
bg.Position = UDim2.new(0.5,0,0.5,0)
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(255,255,255)
bg.BorderSizePixel = 0

local title = Instance.new("TextLabel")
title.Parent = bg
title.AnchorPoint = Vector2.new(0.5,0.5)
title.Position = UDim2.new(0.5,0,0.5,0)
title.Size = UDim2.new(0.9,0,0.3,0)
title.BackgroundTransparency = 1
title.Text = "CRY ABOUT EXPLOIT USER"
title.TextColor3 = Color3.new(0,0,0)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack

-- dismiss on click / Esc
bg.Active = true
bg.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton1 then
        screenGui:Destroy()
    end
end)
