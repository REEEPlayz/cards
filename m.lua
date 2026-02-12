local MainGui = Instance.new("ScreenGui")
MainGui.Name = "ResearchViewer"
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainGui.Parent = game.Players.LocalPlayer.PlayerGui

local MainHolder = Instance.new("Frame")
MainHolder.Name = "MainHolder"
MainHolder.BackgroundTransparency = 1
MainHolder.Position = UDim2.new(0.20707964897155762, 0, 0.224609375, 0)
MainHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainHolder.Size = UDim2.new(0, 494, 0, 327)
MainHolder.BorderSizePixel = 0
MainHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainHolder.Parent = MainGui
MainHolder.Active = true
MainHolder.Draggable = true

local MainBackground = Instance.new("Frame")
MainBackground.Name = "MainBackground"
MainBackground.Position = UDim2.new(-0.0016874861903488636, 0, -0.0007645260193385184, 0)
MainBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainBackground.Size = UDim2.new(0, 471, 0, 308)
MainBackground.BorderSizePixel = 0
MainBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainBackground.Parent = MainHolder

local MainBackgroundCorner = Instance.new("UICorner")
MainBackgroundCorner.Parent = MainBackground

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollFrame.Active = true
ScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Position = UDim2.new(0, 4, 0, 4)
ScrollFrame.Size = UDim2.new(0, 461, 0, 298)
ScrollFrame.BorderSizePixel = 0
ScrollFrame.BackgroundColor3 = Color3.fromRGB(193, 193, 193)
ScrollFrame.Parent = MainHolder

local ScrollFrameCorner = Instance.new("UICorner")
ScrollFrameCorner.Parent = ScrollFrame

local ScrollFrameGradient = Instance.new("UIGradient")
ScrollFrameGradient.Rotation = 90
ScrollFrameGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(131, 131, 131))
}
ScrollFrameGradient.Parent = ScrollFrame

local ListLayout = Instance.new("UIListLayout")
ListLayout.Padding = UDim.new(0, 2)
ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ListLayout.SortOrder = Enum.SortOrder.Name
ListLayout.Parent = ScrollFrame

-- ENTRY HOLDER  
local EntryHolder = Instance.new("Frame")
EntryHolder.Name = "EntryHolder"
EntryHolder.Position = UDim2.new(-0.23969630897045135, 0, 0, 0)
EntryHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
EntryHolder.Size = UDim2.new(0, 391, 0, 115)
EntryHolder.BorderSizePixel = 0
EntryHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EntryHolder.Parent = ScrollFrame
EntryHolder.Visible = false

local EntryInner = Instance.new("Frame")
EntryInner.Name = "EntryInner"
EntryInner.Position = UDim2.new(0, 5, 0, 4)
EntryInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
EntryInner.Size = UDim2.new(0, 381, 0, 105)
EntryInner.BorderSizePixel = 0
EntryInner.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
EntryInner.Parent = EntryHolder

local EntryInnerCorner = Instance.new("UICorner")
EntryInnerCorner.Parent = EntryInner

local EntryInnerGradient = Instance.new("UIGradient")
EntryInnerGradient.Rotation = 90
EntryInnerGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(131, 131, 131))
}
EntryInnerGradient.Parent = EntryInner

local ItemImage = Instance.new("ImageLabel")
ItemImage.Position = UDim2.new(0.018, 0, 0.053, 0)
ItemImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
ItemImage.Size = UDim2.new(0, 95, 0, 95)
ItemImage.BorderSizePixel = 0
ItemImage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ItemImage.Name = "TwistedRender"
ItemImage.Parent = EntryInner

local ItemImageCorner = Instance.new("UICorner")
ItemImageCorner.CornerRadius = UDim.new(1, 8)
ItemImageCorner.Parent = ItemImage

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.TextWrapped = true
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.Size = UDim2.new(0, 232, 0, 29)
TitleLabel.TextStrokeTransparency = 0
TitleLabel.Position = UDim2.new(0.291, 0, 0.115, 0)
TitleLabel.BorderSizePixel = 0
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.TextSize = 14
TitleLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json")
TitleLabel.TextScaled = true
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Parent = EntryInner

local TitleGradient = Instance.new("UIGradient")
TitleGradient.Rotation = 90
TitleGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(131, 131, 131))
}
TitleGradient.Parent = TitleLabel

local RewardLabel = Instance.new("TextLabel")
RewardLabel.Name = "RewardLabel"
RewardLabel.TextWrapped = true
RewardLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
RewardLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
RewardLabel.Text = "Reward: "
RewardLabel.Size = UDim2.new(0, 206, 0, 23)
RewardLabel.TextStrokeTransparency = 0
RewardLabel.Position = UDim2.new(0.291, 0, 0.686, 0)
RewardLabel.BorderSizePixel = 0
RewardLabel.BackgroundTransparency = 1
RewardLabel.TextXAlignment = Enum.TextXAlignment.Left
RewardLabel.TextSize = 14
RewardLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json")
RewardLabel.TextScaled = true
RewardLabel.Parent = EntryInner

local RewardGradient = Instance.new("UIGradient")
RewardGradient.Rotation = 90
RewardGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(131, 131, 131))
}
RewardGradient.Parent = RewardLabel

local RewardIcon = Instance.new("ImageLabel")
RewardIcon.Name = "RewardIcon"
RewardIcon.BackgroundTransparency = 1
RewardIcon.Position = UDim2.new(0.5, 0, 0.675, 0)
RewardIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
RewardIcon.Size = UDim2.new(0, 25, 0, 25)
RewardIcon.BorderSizePixel = 0
RewardIcon.Parent = EntryInner

local ResearchLabel = Instance.new("TextLabel")
ResearchLabel.Name = "ResearchLabel"
ResearchLabel.TextWrapped = true
ResearchLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ResearchLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ResearchLabel.Text = "Research: 000"
ResearchLabel.Size = UDim2.new(0, 206, 0, 23)
ResearchLabel.TextStrokeTransparency = 0
ResearchLabel.Position = UDim2.new(0.291, 0, 0.463, 0)
ResearchLabel.BorderSizePixel = 0
ResearchLabel.BackgroundTransparency = 1
ResearchLabel.TextXAlignment = Enum.TextXAlignment.Left
ResearchLabel.TextSize = 14
ResearchLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json")
ResearchLabel.TextScaled = true
ResearchLabel.Parent = EntryInner

local ResearchGradient = Instance.new("UIGradient")
ResearchGradient.Rotation = 90
ResearchGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(131, 131, 131))
}
ResearchGradient.Parent = ResearchLabel

local EntryHolderCorner = Instance.new("UICorner")
EntryHolderCorner.Parent = EntryHolder

--[[
trinkets:
BlueBandana, Bone, BoneNeedleAndThread, Brick, ClownHorn, Coal, CrayonSet, DandyPlush, Diary, DogPlush, FancyPurse, FeatherDuster, FestiveLights, FishingRod, FriendshipBracelet, GhostSnakes, LuckyCoin, MagnifyingGlass, MemoryLocket, MimeMakeup, MoonPackHeirloom, NightCap, PaintBucket, ParticipationAward, PartyPopper, PeppermintIcing, PinkBow, PullToy, RibbonSpool, SavoryCharm, SoulSword, SpareBulb, SweetCharm, ToyKit, TrainWhistle, VanityMirror, VeeRemote
twisteds:
AstroMonster, BlottMonster, BobetteMonster, BoxtenMonster, BrightneyMonster, BrushaMonster, CoalMonster, ConnieMonster, CosmoMonster, DandyMonster, DyleMonster, EclipseMonster, FinnMonster, FlutterMonster, GigiMonster, GingerMonster, GlistenMonster, GoobMonster, GourdyMonster, LooeyMonster, PebbleMonster, PoppyMonster, RazzleDazzleMonster, RibeccaMonster, RodgerMonster, RudieMonster, ScrapsMonster, ShellyMonster, ShrimpoMonster, SoulvesterMonster, SproutMonster, TeaganMonster, TishaMonster, ToodlesMonster, VeeMonster, YattaMonster
]]

local player = game.Players.LocalPlayer
local trinketfromtwisteds = {
["AstroMonster"] = "NightCap",
["BlottMonster"] = "MimeMakeup",
["BobetteMonster"] = "ToyKit",
["BoxtenMonster"] = "BlueBandana",
["BrightneyMonster"] = "SpareBulb",
["BrushaMonster"] = "PaintBucket",
["CoalMonster"] = "Coal",
["ConnieMonster"] = "GhostSnakes",
["CosmoMonster"] = "SweetCharm",
["DandyMonster"] = "DandyPlush",
["DyleMonster"] = "TrainWhistle",
["EclipseMonster"] = "MoonPackHeirloom",
["FinnMonster"] = "FishingRod",
["FlutterMonster"] = "Diary",
["GigiMonster"] = "LuckyCoin",
["GingerMonster"] = "PeppermintIcing",
["GlistenMonster"] = "VanityMirror",
["GoobMonster"] = "FriendshipBracelet",
["GourdyMonster"] = "MemoryLocket",
["LooeyMonster"] = "ClownHorn",
["PebbleMonster"] = "Bone",
["PoppyMonster"] = "PinkBow",
["RazzleDazzleMonster"] = "RibbonSpool",
["RibeccaMonster"] = "BoneNeedleAndThread",
["RodgerMonster"] = "MagnifyingGlass",
["RudieMonster"] = "FestiveLights",
["ScrapsMonster"] = "CrayonSet",
["ShellyMonster"] = "ParticipationAward",
["ShrimpoMonster"] = "Brick",
["SoulvesterMonster"] = "SoulSword",
["SproutMonster"] = "SavoryCharm",
["TeaganMonster"] = "FancyPurse",
["TishaMonster"] = "FeatherDuster",
["ToodlesMonster"] = "DogPlush",
["VeeMonster"] = "VeeRemote",
["YattaMonster"] = "PartyPopper"
}
for _, g in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("PlayerData"):WaitForChild(player.UserId):WaitForChild("Research"):GetChildren()) do
    task.wait()
    local twistedName = g.Name:gsub("Monster", "")
    local holderClone = EntryHolder:Clone()
    holderClone.Visible = true
    holderClone.Name = twistedName .. "Holder"
    holderClone.Parent = ScrollFrame
    local e = ScrollFrame
    ScrollFrame.CanvasSize = UDim2.new(e.CanvasSize.X.Scale, e.CanvasSize.X.Offset, e.CanvasSize.Y.Scale + 1, e.CanvasSize.Y.Offset)
    holderClone.EntryInner.TitleLabel.Text = "Twisted " .. twistedName
    holderClone.EntryInner.ResearchLabel.Text = "Research: " .. g.Value
    local monsterModule = require(game:GetService("ReplicatedStorage").MonsterData[g.Name])
    holderClone.EntryInner.TwistedRender.Image = monsterModule.Icon
    local trinketName = trinketfromtwisteds[g.Name]
    if trinketName then
        local trinketModule = require(game:GetService("ReplicatedStorage").TrinketData[trinketName])
        holderClone.EntryInner.RewardIcon.Image = trinketModule.Icon
    else
        return "no trinket found im about to end it all"
    end
end

