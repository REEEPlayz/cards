writefile("cosmocard.png", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/cosmocard.png", true))
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


---------------------------------------------------------
-- APPLY YOUR UI POSITION EDITS
---------------------------------------------------------

local holder = clone.Holder

holder.ItemDescrption.Position = UDim2.new(0.100000001, 0, 0.479999989, 0)
holder.ItemDescrption.Size     = UDim2.new(0.5, 0, 0.300000012, 0)
holder.ItemDescrption.TextStrokeTransparency = 0

holder.ItemName.Position = UDim2.new(0.100000001, 0, 0.0700000003, 0)
holder.ItemName.Size     = UDim2.new(0.400000006, 0, 0.120507024, 0)

holder.ItemImage.Position = UDim2.new(0.100000001, 0, 0.103485569, 0)
holder.ItemImage.Size     = UDim2.new(0.449999988, 0, 0.464376688, 0)


---------------------------------------------------------
-- YOUR GRADIENT EDITS
---------------------------------------------------------

local gradient = holder.Gradient.ImageLabel
gradient.ImageColor3 = Color3.fromRGB(88,88,88)
gradient.Position = UDim2.new(1,0,1,0)
gradient.Size = UDim2.new(1,0,1,0)
gradient.Image = getcustomasset("cosmocard.png")
gradient.ImageColor3 = Color3.fromRGB(255,255,255)

clone.Holder.FrameBG.BackgroundColor3 = Color3.fromRGB(255,255,255)
clone.Parent = voteFrame

local playerholder = holder.PlayerHolder
for _, obj in ipairs(playerholder:GetDescendants()) do
    if obj:IsA("UIGradient") then
        obj:Destroy()
    end
end
--[[
playerholder.Position = UDim2.new(0.0399999991, 0, 0.699999988, 0)
playerholder.UIGridLayout.CellSize = UDim2.new(0.159999996, 0, 0.300000012, 0)
playerholder.UIGridLayout.FillDirectionMaxCells = 4
playerholder.UIGridLayout.FillDirection = "Horizontal"
playerholder.UIGridLayout.HorizontalAlignment = "Left"
]]

local halaa = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(134, 255, 139)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 255, 255)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(233, 121, 255))
}
local hadeel = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 88, 60)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 138, 94))
}

local idg = Instance.new("UIGradient")
idg.Parent = holder.FrameBG
idg.Color = hadeel
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
local nora = Instance.new("UIGradient")
nora.Parent = playerholder.Template.Holder.FrameBG
nora.Color = halaa
nora.Rotation = 90
local hanouf = Instance.new("UIGradient")
hanouf.Parent = playerholder.Template.Holder.Frame
hanouf.Color = halaa
hanouf.Rotation = 90
playerholder.Template.Holder.FrameBG.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
playerholder.Template.Holder.Frame.BackgroundColor3 = Color3.fromRGB(101, 101, 101)
