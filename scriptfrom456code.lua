local plr = game.Players.LocalPlayer
if not plr then return end
local pg = plr:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "PanelForModModeration"
gui.Parent = pg
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local bg = Instance.new("Frame", gui)
bg.Name = "ModeratorFrame"
bg.AnchorPoint = Vector2.new(0.5, 0.5)
bg.Position = UDim2.new(0.5, 0, 0.5, 0)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(255,255,255)
bg.BorderSizePixel = 0

local btn = Instance.new("TextButton", bg)
btn.Name = "GiveSecretRandom"
btn.Size = UDim2.new(1, 0, 1, 0)
btn.BackgroundTransparency = 1
btn.Font = Enum.Font.SourceSansBold
btn.Text = "CRY ABOUT EXPLOIT USER"
btn.TextScaled = true
btn.TextWrapped = true
btn.TextColor3 = Color3.fromRGB(0,0,0)

btn.MouseButton1Click:Connect(function()
    gui:Destroy()
end
