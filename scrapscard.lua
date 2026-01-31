--[[
one the variable names is really old i made this before scraps got optimized
]]
local p = game:GetService("Players").LocalPlayer
local voteFrame = p.PlayerGui.ScreenGui.VoteFrame


local fancy = voteFrame:WaitForChild("FancyTemplate")
local old = voteFrame:WaitForChild("Template")
if old then
old:Destroy()
end


local clone = fancy:Clone()


-- remove scripts
for _, obj in ipairs(clone:GetDescendants()) do
if obj:IsA("Script") or obj:IsA("LocalScript") then
obj:Destroy()
end
end


clone.Name = "Template"
local holder = clone.Holder


holder.ItemDescrption.Position = UDim2.new(0.300000012, 0, 0.400000006, 0)
holder.ItemDescrption.Size = UDim2.new(0.5, 0, 0.300000012, 0)
holder.ItemDescrption.TextStrokeTransparency = 0


holder.ItemName.Position = UDim2.new(0.25, 0, 0.0299999993, 0)
holder.ItemName.Size = UDim2.new(0.600000024, 0, 0.120507024, 0)


holder.ItemImage.Position = UDim2.new(0.300000012, 0, 0.0500000007, 0)
holder.ItemImage.Size = UDim2.new(0.449999988, 0, 0.464376688, 0)


local gradient = holder.Gradient.ImageLabel
gradient.ImageColor3 = Color3.fromRGB(88,88,88)
gradient.Position = UDim2.new(1,0,1,0)
gradient.Size = UDim2.new(1,0,1,0)
gradient.Image = getcustomasset("scrapscard.png")
gradient.ImageColor3 = Color3.fromRGB(255,255,255)


clone.Holder.FrameBG.BackgroundColor3 = Color3.fromRGB(255,255,255)
clone.Parent = voteFrame


local playerholder = holder.PlayerHolder
for _, obj in ipairs(playerholder:GetDescendants()) do
if obj:IsA("UIGradient") then
obj:Destroy()
end
end
--[[playerholder.Position = UDim2.new(0.0399999991, 0, 0.699999988, 0)
playerholder.UIGridLayout.CellSize = UDim2.new(0.159999996, 0, 0.300000012, 0)
playerholder.UIGridLayout.FillDirectionMaxCells = 4
playerholder.UIGridLayout.FillDirection = "Horizontal"
playerholder.UIGridLayout.HorizontalAlignment = "Left"]]


local halaa = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(226, 70, 70)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(226, 196, 90))
}


local idg = Instance.new("UIGradient")
idg.Parent = holder.FrameBG
idg.Color = halaa
idg.Rotation = 90
local idge = Instance.new("UIGradient")
idge.Parent = holder.ItemDescrption
idge.Color = halaa
idge.Rotation = 90
local idag = Instance.new("UIGradient")
idag.Parent = holder.ItemName
idag.Color = halaa
idag.Rotation = 90
local idag = Instance.new("UIGradient")
idag.Parent = holder.ItemImage
idag.Color = halaa
idag.Rotation = 90
local tempholder = playerholder.Template.Holder
local fawzia = Instance.new("UIGradient")
fawzia.Parent = tempholder.FrameBG
fawzia.Color = halaa
fawzia.Rotation = 90
local scrapsisgettingoptimizedsoonomg = Instance.new("UIGradient")
scrapsisgettingoptimizedsoonomg.Parent = tempholder.Frame
scrapsisgettingoptimizedsoonomg.Color = halaa
scrapsisgettingoptimizedsoonomg.Rotation = 90
tempholder.FrameBG.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
tempholder.Frame.BackgroundColor3 = Color3.fromRGB(101, 101, 101)
local maybethiswillmakeitmorepretty = Instance.new("UIGradient")
maybethiswillmakeitmorepretty.Parent = tempholder.ItemImage
maybethiswillmakeitmorepretty.Color = halaa
maybethiswillmakeitmorepretty.Rotation = 90
