writefile("s.png", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/s.png", true))
writefile("sproutflip.mp3", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/sproutflip.mp3", true))
writefile("sproutchoose.mp3", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/sproutchoose.mp3", true))
writefile("sd.png", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/sd.png", true))
writefile("sd1.png", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/sd1.png", true))
writefile("sd2.png", game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/fuzzyengine/refs/heads/main/cards/sd2.png", true))

local p = game:GetService("Players").LocalPlayer
local voteFrame = p.PlayerGui.ScreenGui.VoteFrame


local fancy = voteFrame:WaitForChild("FancyTemplate")
local old = voteFrame:WaitForChild("Template")
if old then
old:Destroy()
end

local clone = fancy:Clone()


for _, obj in ipairs(clone:GetDescendants()) do
    if obj:IsA("Script") or obj:IsA("LocalScript") then
        obj:Destroy()
    end
end


clone.Name = "Template"

local holder = clone.Holder


holder.ItemDescrption.Position = UDim2.new(0.449999988, 0, 0.449999988, 0)
holder.ItemDescrption.Size     = UDim2.new(0.5, 0, 0.300000012, 0)
holder.ItemDescrption.TextStrokeTransparency = 0


holder.ItemName.Position = UDim2.new(0.449999988, 0, -0.00999999978, 0)
holder.ItemName.Size     = UDim2.new(0.400000006, 0, 0.120507024, 0)


holder.ItemImage.Position = UDim2.new(0.400000006, 0, 0.0500000007, 0)
holder.ItemImage.Size     = UDim2.new(0.5, 0, 0.464376688, 0)

local gradient = holder.Gradient.ImageLabel
gradient.ImageColor3 = Color3.fromRGB(88,88,88)
gradient.Position = UDim2.new(1,0,1,0)
gradient.Size = UDim2.new(1,0,1,0)
gradient.Image = getcustomasset("s.png")
gradient.ImageColor3 = Color3.fromRGB(255,255,255)


clone.Holder.FrameBG.BackgroundColor3 = Color3.fromRGB(255,255,255)
clone.Parent = voteFrame


local playerholder = holder.PlayerHolder
playerholder.Position = UDim2.new(0.0399999991, 0, 0.4699999988079071, 0)
playerholder.UIGridLayout.CellSize = UDim2.new(0.10999999940395355, 0, 0.300000012, 0)
playerholder.UIGridLayout.FillDirectionMaxCells = 3
playerholder.UIGridLayout.FillDirection = "Horizontal"
playerholder.UIGridLayout.HorizontalAlignment = "Left"
playerholder.UIGridLayout.StartCorner = "TopLeft"


playerholder.Template.Holder.Frame:Destroy()
playerholder.Template.Holder.FrameBG:Destroy()
playerholder.ZIndex = 100


local halaa = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 58, 58)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 215, 77))
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


local canvasgroup = Instance.new("CanvasGroup")
canvasgroup.Size = UDim2.new(1, 0, 0.100000001, 0)
canvasgroup.Position = UDim2.new(0, 0, -0.140000001, 0)
canvasgroup.BackgroundTransparency = 1
canvasgroup.Parent = holder
local divider = Instance.new("ImageLabel")
divider.Image = getcustomasset("sd.png")
divider.Size = UDim2.new(2, 0, 1, 0)
divider.BackgroundTransparency = 1
divider.Parent = canvasgroup
clone.Choose.SoundId = getcustomasset("sproutchoose.mp3")
clone.Flip.SoundId = getcustomasset("sproutflip.mp3")
local decorationzone = Instance.new("CanvasGroup")
decorationzone.Position = UDim2.new(-0.0399999991, 0, -0.0399999991, 0)
decorationzone.Size = UDim2.new(1.10000002, 0, 1.10000002, 0)
decorationzone.BackgroundTransparency = 1
decorationzone.Parent = holder
decorationzone.ZIndex = 10
local strawberrycake = Instance.new("ImageLabel")
strawberrycake.Parent = decorationzone
strawberrycake.Image = getcustomasset("sd2.png")
strawberrycake.Position = UDim2.new(-0.0599999987, 0, -0.0500000007, 0)
strawberrycake.Size = UDim2.new(0.449999988, 0, 0.300000012, 0)
strawberrycake.BackgroundTransparency = 1
strawberrycake.Name = "strawberrycake"
local strawberries = Instance.new("ImageLabel")
strawberries.Parent = decorationzone
strawberries.Position = UDim2.new(0.5, 0, 0.730000019, 0)
strawberries.Size = UDim2.new(0.5, 0, 0.300000012, 0)
strawberries.Image = getcustomasset("sd1.png")
strawberries.BackgroundTransparency = 1
