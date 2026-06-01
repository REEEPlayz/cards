writefile("glistencard.png", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/glistencard.png", true))
writefile("chooseglisten.mp3", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/chooseglisten.mp3", true))
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

holder.ItemDescrption.Position = UDim2.new(0.25, 0, 0.349999994, 0)
holder.ItemDescrption.Size     = UDim2.new(0.5, 0, 0.300000012, 0)
holder.ItemDescrption.TextStrokeTransparency = 0

holder.ItemName.Position = UDim2.new(0.400000006, 0, 0.100000001, 0)
holder.ItemName.Size     = UDim2.new(0.5, 0, 0.120507024, 0)

holder.ItemImage.Position = UDim2.new(0, 0, -0.0500000007, 0)
holder.ItemImage.Size     = UDim2.new(0.449999988, 0, 0.464376688, 0)

local gradient = holder.Gradient.ImageLabel
gradient.ImageColor3 = Color3.fromRGB(88,88,88)
gradient.Position = UDim2.new(1,0,1,0)
gradient.Size = UDim2.new(1,0,1,0)
gradient.Image = getcustomasset("glistencard.png")
gradient.ImageColor3 = Color3.fromRGB(255,255,255)

clone.Holder.FrameBG.BackgroundColor3 = Color3.fromRGB(255,255,255)
clone.Parent = voteFrame

local playerholder = holder.PlayerHolder
for _, obj in ipairs(clone:GetDescendants()) do
    if obj:IsA("UIGradient") then
        obj:Destroy()
    end
end

local halaa = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 227, 171)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(86, 76, 57))
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
local framegradient = Instance.new("UIGradient")
framegradient.Parent = playerholder.Template.Holder.Frame
framegradient.Color = halaa
framegradient.Rotation = 90
local joyride = Instance.new("UIGradient")
joyride.Parent = playerholder.Template.Holder.FrameBG
joyride.Color = halaa
joyride.Rotation = 90
playerholder.Template.Holder.FrameBG.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
playerholder.Template.Holder.Frame.BackgroundColor3 = Color3.fromRGB(101, 101, 101)
clone.Choose.SoundId = getcustomasset("chooseglisten.mp3")
clone.Choose.PlaybackSpeed = 1.5
