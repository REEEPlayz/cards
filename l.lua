local ResearchView = Instance.new("TextButton")
ResearchView.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ResearchView.TextColor3 = Color3.fromRGB(0, 0, 0)
ResearchView.BorderColor3 = Color3.fromRGB(0, 0, 0)
ResearchView.Text = ""
ResearchView.AnchorPoint = Vector2.new(0.5, 0.5)
ResearchView.Name = "ResearchView"
ResearchView.BackgroundTransparency = 1
ResearchView.Position = UDim2.new(0.6800000071525574, 0, 0.8199999928474426, 0)
ResearchView.Size = UDim2.new(0.057999998331069946, 0, 0.11400000005960464, 0)
ResearchView.BorderSizePixel = 0
ResearchView.TextSize = 14
ResearchView.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ResearchView.Parent = game.Players.LocalPlayer.PlayerGui.ResearchViewer
ResearchView.MouseButton1Click:Connect(function()
if game.Players.LocalPlayer.PlayerGui.ResearchViewer.MainHolder.Visible == true then
game.Players.LocalPlayer.PlayerGui.ResearchViewer.MainHolder.Visible = false
else
game.Players.LocalPlayer.PlayerGui.ResearchViewer.MainHolder.Visible = true
end
end)

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = ResearchView

local Icon = Instance.new("ImageLabel")
Icon.ScaleType = Enum.ScaleType.Fit
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.Name = "Icon"
Icon.Size = UDim2.new(0.800000011920929, 0, 0.800000011920929, 0)
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.Image = "rbxassetid://98244493286060"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.ZIndex = 14
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = ResearchView

local CooldownText = Instance.new("TextLabel")
CooldownText.Visible = false
CooldownText.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CooldownText.TextStrokeTransparency = 0
CooldownText.ZIndex = 21
CooldownText.TextSize = 14
CooldownText.Size = UDim2.new(1, 0, 0.5177583694458008, 0)
CooldownText.TextColor3 = Color3.fromRGB(255, 255, 255)
CooldownText.BorderColor3 = Color3.fromRGB(0, 0, 0)
CooldownText.Text = "10"
CooldownText.TextWrapped = true
CooldownText.BackgroundTransparency = 1
CooldownText.Position = UDim2.new(0, 0, 0.2145194560289383, 0)
CooldownText.Name = "CooldownText"
CooldownText.BorderSizePixel = 0
CooldownText.TextScaled = true
CooldownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CooldownText.Parent = ResearchView

local CooldownFrame = Instance.new("Frame")
CooldownFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CooldownFrame.AnchorPoint = Vector2.new(0, 1)
CooldownFrame.Name = "CooldownFrame"
CooldownFrame.BackgroundTransparency = 0.5
CooldownFrame.Position = UDim2.new(0, 0, 1, 0)
CooldownFrame.Size = UDim2.new(1, 0, 0, 0)
CooldownFrame.ZIndex = 15
CooldownFrame.BorderSizePixel = 0
CooldownFrame.BackgroundColor3 = Color3.fromRGB(121, 121, 121)
CooldownFrame.Parent = ResearchView

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.10000000149011612, 0)
UICorner.Parent = CooldownFrame

local GamePadIcons = Instance.new("Folder")
GamePadIcons.Name = "GamePadIcons"
GamePadIcons.Parent = ResearchView

local FrameIcon = Instance.new("Frame")
FrameIcon.Visible = false
FrameIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
FrameIcon.Name = "FrameIcon"
FrameIcon.Position = UDim2.new(-0.16137772798538208, 0, -0.15584877133369446, 0)
FrameIcon.Size = UDim2.new(0.4853033423423767, 0, 0.4678579270839691, 0)
FrameIcon.ZIndex = 26
FrameIcon.BorderSizePixel = 0
FrameIcon.BackgroundColor3 = Color3.fromRGB(121, 121, 121)
FrameIcon.Parent = GamePadIcons

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 140, 140)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(81, 81, 81))
}
UIGradient.Parent = FrameIcon

local UICorner_1 = Instance.new("UICorner")
UICorner_1.CornerRadius = UDim.new(1, 1)
UICorner_1.Parent = FrameIcon

local FrameBGIcon = Instance.new("Frame")
FrameBGIcon.Visible = false
FrameBGIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
FrameBGIcon.Name = "FrameBGIcon"
FrameBGIcon.Position = UDim2.new(-0.1833367645740509, 0, -0.17875471711158752, 0)
FrameBGIcon.Size = UDim2.new(0.5264595746994019, 0, 0.5194509625434875, 0)
FrameBGIcon.ZIndex = 25
FrameBGIcon.BorderSizePixel = 0
FrameBGIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameBGIcon.Parent = GamePadIcons

local UICorner_2 = Instance.new("UICorner")
UICorner_2.CornerRadius = UDim.new(1, 1)
UICorner_2.Parent = FrameBGIcon

local ConsoleButton = Instance.new("ImageLabel")
ConsoleButton.Visible = false
ConsoleButton.ScaleType = Enum.ScaleType.Fit
ConsoleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleButton.Name = "ConsoleButton"
ConsoleButton.Size = UDim2.new(0.43845993280410767, 0, 0.3935557007789612, 0)
ConsoleButton.Image = "rbxassetid://110444979482185"
ConsoleButton.BackgroundTransparency = 1
ConsoleButton.Position = UDim2.new(-0.1428450644016266, 0, -0.1228032261133194, 0)
ConsoleButton.ZIndex = 27
ConsoleButton.BorderSizePixel = 0
ConsoleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleButton.Parent = GamePadIcons

local Xbox = Instance.new("StringValue")
Xbox.Value = "rbxassetid://110444979482185"
Xbox.Name = "Xbox"
Xbox.Parent = ConsoleButton

local Playstation = Instance.new("StringValue")
Playstation.Value = "rbxassetid://110444979482185"
Playstation.Name = "Playstation"
Playstation.Parent = ConsoleButton

local TextLabel = Instance.new("TextLabel")
TextLabel.Visible = false
TextLabel.TextWrapped = true
TextLabel.TextStrokeTransparency = 0
TextLabel.ZIndex = 17
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0.44873878359794617, 0, 0.4492911994457245, 0)
TextLabel.RichText = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "P"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5852785110473633, 0, -0.05395028367638588, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ResearchView

local UIGradient_1 = Instance.new("UIGradient")
UIGradient_1.Rotation = 90
UIGradient_1.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.097, Color3.fromRGB(235, 235, 235)),
	ColorSequenceKeypoint.new(0.416, Color3.fromRGB(240, 240, 240)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(53, 53, 53))
}
UIGradient_1.Parent = TextLabel

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 4
UIStroke.Parent = TextLabel

local FrameBG = Instance.new("Frame")
FrameBG.Name = "FrameBG"
FrameBG.Position = UDim2.new(-0.04524914175271988, 0, -0.048958949744701385, 0)
FrameBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
FrameBG.Size = UDim2.new(1.0848054885864258, 0, 1.1102749109268188, 0)
FrameBG.BorderSizePixel = 0
FrameBG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameBG.Parent = ResearchView

local UICorner_3 = Instance.new("UICorner")
UICorner_3.CornerRadius = UDim.new(0.10000000149011612, 0)
UICorner_3.Parent = FrameBG

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.ZIndex = 2
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(121, 121, 121)
Frame.Parent = ResearchView

local UIGradient_2 = Instance.new("UIGradient")
UIGradient_2.Rotation = 90
UIGradient_2.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 140, 140)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(81, 81, 81))
}
UIGradient_2.Parent = Frame

local UICorner_4 = Instance.new("UICorner")
UICorner_4.CornerRadius = UDim.new(0.10000000149011612, 0)
UICorner_4.Parent = Frame
