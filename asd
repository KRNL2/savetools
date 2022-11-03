-- Detection

if game.CoreGui:FindFirstChild("Hax") then
game.CoreGui.Hax:Destroy()
end

-- Objects

local Hax = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Overused = Instance.new("Frame")
local Header = Instance.new("Frame")
local Buttons = Instance.new("Frame")
local Save = Instance.new("TextButton")
local Receive = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Text = Instance.new("TextButton")

-- Properties

Hax.Name = "Hax"
Hax.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = Hax
Main.Draggable = true
Main.Selectable = true
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.184314, 0.635294, 0.827451)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.302982718, 0, 0.271111101, 0)
Main.Size = UDim2.new(0, 503, 0, 386)


Overused.Name = "Overused"
Overused.Parent = Main
Overused.BackgroundColor3 = Color3.new(0.188235, 0.654902, 0.85098)
Overused.BorderSizePixel = 0
Overused.Size = UDim2.new(0, 503, 0, 23)

Header.Name = "Header"
Header.Parent = Overused
Header.BackgroundColor3 = Color3.new(0.223529, 0.768628, 1)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(-0.000994035741, 0, 1.19487429, 0)
Header.Size = UDim2.new(0, 503, 0, 68)

Buttons.Name = "Buttons"
Buttons.Parent = Header
Buttons.BackgroundColor3 = Color3.new(0.203922, 0.729412, 0.933333)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0.0198807158, 0, 1.15793204, 0)
Buttons.Size = UDim2.new(0, 483, 0, 269)

Save.Name = "Save"
Save.Parent = Buttons
Save.BackgroundColor3 = Color3.new(0.184314, 0.635294, 0.827451)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.292960674, 0, 0.128252804, 0)
Save.Size = UDim2.new(0, 200, 0, 50)
Save.Font = Enum.Font.SourceSansBold
Save.Text = "Save Tool"
Save.TextColor3 = Color3.new(1, 1, 1)
Save.TextSize = 20
Save.MouseButton1Click:Connect(function()
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v:IsA("Tool")) then do v.Parent = game.Players.LocalPlayer.Character wait(0) v.Parent = game.Workspace wait(0)
v.Parent = game.Players.LocalPlayer 
end
end
end
end)

Receive.Name = "Receive"
Receive.Parent = Buttons
Receive.BackgroundColor3 = Color3.new(0.184314, 0.635294, 0.827451)
Receive.BorderSizePixel = 0
Receive.Position = UDim2.new(0.293995917, 0, 0.617100358, 0)
Receive.Size = UDim2.new(0, 200, 0, 50)
Receive.Font = Enum.Font.SourceSansBold
Receive.Text = "Receive Tool"
Receive.TextColor3 = Color3.new(1, 1, 1)
Receive.TextSize = 20
Receive.MouseButton1Click:Connect(function()
for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then  
v.Parent = game.Players.LocalPlayer.Backpack wait(0) v.Parent = game.Players.LocalPlayer.Character wait(0) v.Parent = game.Workspace wait(0) do for i, b in pairs(v:GetDescendants()) do
if b:FindFirstChild("TouchInterest") then
firetouchinterest(b, game.Players.LocalPlayer.Character.HumanoidRootPart, 0) end wait(0)
v.Parent = game.Players.LocalPlayer.Backpack 

Noclip.Name = "Noclip"
Noclip.Parent = Buttons
Noclip.BackgroundColor3 = Color3.new(0.184314, 0.635294, 0.827451)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.29192549, 0, 0.371747196, 0)
Noclip.Size = UDim2.new(0, 200, 0, 50)
Noclip.Font = Enum.Font.SourceSansBold
Noclip.Text = "Noclip (E)"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 20
Noclip.MouseButton1Click:Connect(function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script')
end)

Minimize.Name = "Minimize"
Minimize.Parent = Main
Minimize.BackgroundColor3 = Color3.new(1, 1, 1)
Minimize.BackgroundTransparency = 1
Minimize.Position = UDim2.new(0.886679947, 0, 0.000303239562, 0)
Minimize.Size = UDim2.new(0, 41, 0, 23)
Minimize.Font = Enum.Font.SourceSansSemibold
Minimize.Text = "_"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 20
Minimize.MouseButton1Click:Connect(function()
Main:TweenPosition(UDim2.new(0.74, 0, 0.973, 0), 'Out', 'Quart', 2)
end)

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.942345917, 0, 0, 0)
Close.Size = UDim2.new(0, 29, 0, 27)
Close.Font = Enum.Font.Arcade
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 15
Close.MouseButton1Click:Connect(function()
Main:TweenPosition(UDim2.new(0.74, 0, 0.999, 0), 'Out', 'Quart', 2)
wait(1.5)
game.CoreGui.Hax:Destroy()
end)

Text.Name = "Text"
Text.Parent = Main
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0.17693837, 0, 0.0933268741, 0)
Text.Size = UDim2.new(0, 310, 0, 51)
Text.Font = Enum.Font.SourceSansBold
Text.Text = "Save Tool/Receive Tool GUI"
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextSize = 30
Text.MouseButton1Click:Connect(function()
Text.Text = "Made by BaconExploitz (BaconExploitz#0001)"
Text.TextSize = 27
wait(1)
Text.Text = "Save Tool/Receive Tool GUI"
Text.TextSize = 30
end)
end
end
end
end
end)
