_G.card = _G.card or "default"
local Players = game:GetService("Players")
local repstorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local function showDialogue(text, player)
    player = player or Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    local gui = repstorage.Parts.TextBox:Clone()
    gui.Enabled = true
    gui.Parent = hrp
    gui.StudsOffsetWorldSpace = Vector3.new(0, 4.555, 0)

    local tweenInfoY = TweenInfo.new(0.15, Enum.EasingStyle.Linear)
    TweenService:Create(gui, tweenInfoY, {StudsOffsetWorldSpace = Vector3.new(0, 5, 0)}):Play()

    local tweenInfoFade = TweenInfo.new(0.30, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local charInfo
    if game.PlaceId == 16552821455 then
    charInfo = require(ReplicatedStorage.StoryScripts.CharacterInfo)
    end
    local frame = gui:WaitForChild("Frame")
    frame.BackgroundTransparency = 1
    frame.DialogueBox.Text = text
    if game.PlaceId == 16552821455 and charInfo then
    frame.SpeechBubble.BackgroundColor3 = charInfo[player:GetAttribute("SelectedCharacter")]["Color"]
    local talkSound = Instance.new("Sound")
    talkSound.SoundId = charInfo[player:GetAttribute("SelectedCharacter")]["TalkSound"]
    talkSound.PlaybackSpeed = charInfo[player:GetAttribute("SelectedCharacter")]["PlaybackSpeed"]
    talkSound.Volume = charInfo[player:GetAttribute("SelectedCharacter")]["Volume"]
    talkSound.Parent = hrp
    talkSound:Play()
    talkSound.Ended:Connect(function()
        talkSound:Destroy()
    end)
    end

    local function fadeInChildren()
        for _, child in ipairs(frame:GetChildren()) do
            if child:IsA("Frame") then
                child.BackgroundTransparency = 0.4
                TweenService:Create(child, tweenInfoFade, {BackgroundTransparency = 0}):Play()
            elseif child:IsA("TextLabel") and child.Name == "DialogueBox" then
                child.BackgroundTransparency = 1
                child.TextTransparency = 0.4
                child.TextStrokeTransparency = 0.4
                TweenService:Create(child, tweenInfoFade, {
                    TextTransparency = 0,
                    TextStrokeTransparency = 0
                }):Play()
            end
        end
    end

    local function fadeOutChildren()
        for _, child in ipairs(frame:GetChildren()) do
            if child:IsA("Frame") then
                TweenService:Create(child, tweenInfoFade, {BackgroundTransparency = 1}):Play()
            elseif child:IsA("TextLabel") and child.Name == "DialogueBox" then
                TweenService:Create(child, tweenInfoFade, {
                    TextTransparency = 1,
                    TextStrokeTransparency = 1
                }):Play()
            end
        end
    end

    fadeInChildren()
    delay(2.5, function()
        fadeOutChildren()
        wait(tweenInfoFade.Time)
        gui:Destroy()
    end)
end
local Http = game:GetService("HttpService")
local jsonURL = "https://pastebin.com/raw/3xHYFifb"
local raw = game:HttpGet(jsonURL)
local cfg = Http:JSONDecode(raw)

for _, char in ipairs(cfg.characters) do
    task.spawn(function()
        writefile(char.id.."_render.png", game:HttpGet(char.render, true))
    end)
    task.spawn(function()
        writefile(char.id.."_preview.png", game:HttpGet(char.preview, true))
    end)
end
local CardForgeRecoded = Instance.new("ScreenGui")
CardForgeRecoded.Name = "CardForgeRecoded"
CardForgeRecoded.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CardForgeRecoded.Parent = game.CoreGui

local Holder = Instance.new("Frame")
Holder.Name = "Holder"
Holder.BackgroundTransparency = 1
Holder.AnchorPoint = Vector2.new(0.5, 0.5)
Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.Size = UDim2.new(0.5362831950187683, 0, 0.6640625, 0)
Holder.BorderSizePixel = 0
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.Parent = CardForgeRecoded

local Frame = Instance.new("Frame")
Frame.Position = UDim2.new(-0.011451796628534794, 0, 0.17265625298023224, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(1.047029733657837, 0, 0.7588235139846802, 0)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = Holder

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111, 111, 111)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 38, 38))
}
UIGradient.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(157, 157, 157)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke.Parent = Frame

local UIGradient_1 = Instance.new("UIGradient")
UIGradient_1.Rotation = 90
UIGradient_1.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(238, 238, 238)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 38, 38))
}
UIGradient_1.Parent = UIStroke

local UIStroke_1 = Instance.new("UIStroke")
UIStroke_1.Parent = Frame

local Title = Instance.new("TextLabel")
Title.TextWrapped = true
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Text = "CardForge"
Title.Name = "Title"
Title.Size = UDim2.new(0.3924349844455719, 0, 0.13953489065170288, 0)
Title.Position = UDim2.new(0.034591194242239, 0, 0, 0)
Title.BorderSizePixel = 0
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextSize = 14
Title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = Frame

local UIStroke_2 = Instance.new("UIStroke")
UIStroke_2.Thickness = 1.2000000476837158
UIStroke_2.Parent = Title

local Chat = Instance.new("Frame")
Chat.Visible = false
Chat.BorderColor3 = Color3.fromRGB(0, 0, 0)
Chat.BackgroundTransparency = 1
Chat.Position = UDim2.new(3.607278742379094e-08, 0, 0, 0)
Chat.Name = "Chat"
Chat.Size = UDim2.new(0.9976359605789185, 0, 1, 0)
Chat.BorderSizePixel = 0
Chat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chat.Parent = Frame

local ChatFrame = Instance.new("ScrollingFrame")
ChatFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ChatFrame.Active = true
ChatFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatFrame.BackgroundTransparency = 1
ChatFrame.Position = UDim2.new(0.03459116816520691, 0, 0.174534872174263, 0)
ChatFrame.Name = "ChatFrame"
ChatFrame.Size = UDim2.new(0.9383886456489563, 0, 0.6589147448539734, 0)
ChatFrame.BorderSizePixel = 0
ChatFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChatFrame.Parent = Chat

local s = ChatFrame
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local function getPlayerProfilePicture(playerName)
	local player = Players:FindFirstChild(playerName)
	if player then
		return "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=48&h=48"
	end
	return "rbxthumb://type=AvatarHeadShot&id=0&w=48&h=48"
end

local function displaymessage(playername, message)
	local newmessage = s.Holder_1:Clone()
	newmessage.Parent = s
	newmessage.Name = "message"
	newmessage.Visible = true
	
	local frame = newmessage:WaitForChild("Frame")
	if not frame then return end
	
	local nameLabel = frame:WaitForChild("name")
	if nameLabel then
		nameLabel.Text = playername
	end
	
	local messageLabel = frame:WaitForChild("message")
	if messageLabel then
		messageLabel.Text = message
	end
	
	if #messageLabel.Text > 150 then
		messageLabel.Text = string.sub(messageLabel.Text, 1, 150)
	end
	
	local profileImage = frame:FindFirstChild("avatar")
	if profileImage and profileImage:IsA("ImageLabel") then
		profileImage.Image = getPlayerProfilePicture(playername)
	end
	if #s:GetChildren() > 200 then
		s:FindFirstChild("message"):Destroy()
	end
	
	s.CanvasSize = UDim2.new(0, 0, 0, s.CanvasSize.Y.Offset + newmessage.AbsoluteSize.Y + 45)
	return newmessage
end

local hooked = {}
local function detectanims(char, plr)
	if hooked[char] then return end
	hooked[char] = true
	local humanoid = char:WaitForChild("Humanoid")
	if not humanoid then return end
	local animator = humanoid:WaitForChild("Animator")
	if not animator then return end
	animator.AnimationPlayed:Connect(function(anim)
		if anim and anim.Animation then
			local id = anim.Animation.AnimationId
			if string.find(id, "�") then
				displaymessage(plr.Name .. " (using " .. string.split(id, "�")[3] .. " card)", string.split(id, "�")[2])
				showDialogue(string.split(id, "�")[2], game.Players[plr.Name])
			else
				return "either no id or its not a message"
			end
		end
	end)
end

local function monitorlocal()
	local function setuplocal(char)
		char:WaitForChild("Humanoid")
		local humanoid = char:WaitForChild("Humanoid")
		humanoid:WaitForChild("Animator")
		task.wait(0.5)
		detectanims(char, localPlayer)
	end
	if localPlayer.Character then
		setuplocal(localPlayer.Character)
	end
	localPlayer.CharacterAdded:Connect(setuplocal)
end
local function onPlayerAdded(player)
	player.CharacterAdded:Connect(function(character)
		character:WaitForChild("Humanoid")
		character:WaitForChild("Animator")
		task.wait(0.5)
		detectanims(character, player)
	end)
	if player ~= localPlayer and player.Character then
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:WaitForChild("Animator")
		end
		detectanims(player.Character, player)
	end
end

Players.PlayerAdded:Connect(function(player)
	task.spawn(function()
		local character = player.Character or player.CharacterAdded:Wait()
		character:WaitForChild("Humanoid"):WaitForChild("Animator")
		task.wait(0.5)
		detectanims(character, player)
	end)
	player.CharacterAdded:Connect(function(character)
		task.spawn(function()
			character:WaitForChild("Humanoid"):WaitForChild("Animator")
			task.wait(0.5)
			detectanims(character, player)
		end)
	end)
end)

for _, player in Players:GetPlayers() do
	if player ~= localPlayer then
		onPlayerAdded(player)
		if player.Character then
			task.spawn(function()
				local humanoid = player.Character:WaitForChild("Humanoid")
				humanoid:WaitForChild("Animator")
				task.wait(1)
				detectanims(player.Character, player)
			end)
		end
	end
end
monitorlocal()

local Holder_1 = Instance.new("Frame")
Holder_1.Visible = false
Holder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder_1.BackgroundTransparency = 1
Holder_1.Position = UDim2.new(-0.09343434125185013, 0, 0, 0)
Holder_1.Name = "Holder_1"
Holder_1.Size = UDim2.new(0, 380, 0, 67)
Holder_1.BorderSizePixel = 0
Holder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder_1.Parent = ChatFrame

local Frame_1 = Instance.new("Frame")
Frame_1.Position = UDim2.new(0.02542371302843094, 0, 0.11940298229455948, 0)
Frame_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_1.Size = UDim2.new(0.7263157963752747, 0, 0.9552238583564758, 0)
Frame_1.BorderSizePixel = 0
Frame_1.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Frame_1.Parent = Holder_1

local UIGradient_2 = Instance.new("UIGradient")
UIGradient_2.Rotation = 90
UIGradient_2.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111, 111, 111)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 38, 38))
}
UIGradient_2.Parent = Frame_1

local UICorner_1 = Instance.new("UICorner")
UICorner_1.Parent = Frame_1

local UIStroke_3 = Instance.new("UIStroke")
UIStroke_3.Thickness = 2.5
UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_3.Parent = Frame_1

local avatar = Instance.new("ImageLabel")
avatar.BorderColor3 = Color3.fromRGB(0, 0, 0)
avatar.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
avatar.Name = "avatar"
avatar.Position = UDim2.new(0.023166023194789886, 0, 0.125, 0)
avatar.Size = UDim2.new(0.17391304671764374, 0, 0.75, 0)
avatar.BorderSizePixel = 0
avatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
avatar.Parent = Frame_1

local UICorner_2 = Instance.new("UICorner")
UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = avatar

local name = Instance.new("TextLabel")
name.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
name.TextColor3 = Color3.fromRGB(150, 150, 150)
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.Name = "name"
name.Size = UDim2.new(0.7101449370384216, 0, 0.296875, 0)
name.BackgroundTransparency = 1
name.TextXAlignment = Enum.TextXAlignment.Left
name.Position = UDim2.new(0.2432432472705841, 0, 0.125, 0)
name.BorderSizePixel = 0
name.TextSize = 14
name.TextWrapped = true
name.TextScaled = true
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.Parent = Frame_1

local UIStroke_4 = Instance.new("UIStroke")
UIStroke_4.Parent = name

local message = Instance.new("TextLabel")
message.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.BorderColor3 = Color3.fromRGB(0, 0, 0)
message.Name = "message"
message.Size = UDim2.new(0.7101449370384216, 0, 0.453125, 0)
message.BackgroundTransparency = 1
message.TextXAlignment = Enum.TextXAlignment.Left
message.Position = UDim2.new(0.2432432472705841, 0, 0.421875, 0)
message.BorderSizePixel = 0
message.TextSize = 14
message.TextWrapped = true
message.TextScaled = true
message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
message.Parent = Frame_1

local UIStroke_5 = Instance.new("UIStroke")
UIStroke_5.Parent = message

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 7)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ChatFrame

local TextBox = Instance.new("TextBox")
TextBox.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Text = ""
TextBox.Size = UDim2.new(0.9431279897689819, 0, 0.11627907305955887, 0)
TextBox.Position = UDim2.new(0.03470036759972572, 0, 0.856589138507843, 0)
TextBox.BorderSizePixel = 0
TextBox.PlaceholderColor3 = Color3.fromRGB(60, 60, 60)
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.PlaceholderText = "Type a message here..."
TextBox.TextSize = 14
TextBox.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextBox.Parent = Chat

local t = TextBox

function animation(id)
	local a = Instance.new("Animation")
	a.Parent = game.Players.LocalPlayer.Character
	local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
	if not humanoid then return end
	local animator = humanoid:WaitForChild("Animator")
	if not animator then return end
	a.AnimationId = "rbxassetid://0�"..id.. "�" .. _G.card
	local b = animator:LoadAnimation(a)
	b:Play()
	task.wait(0.03)
	b:Stop()
	b:Destroy()
end

t.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local text = t.Text
		if text and text ~= "" then
			animation(text)
			t.Text = "" 
		end
	end
end)

local UICorner_3 = Instance.new("UICorner")
UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = TextBox

local UIStroke_6 = Instance.new("UIStroke")
UIStroke_6.Color = Color3.fromRGB(107, 107, 107)
UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_6.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_6.Parent = TextBox

local UIGradient_3 = Instance.new("UIGradient")
UIGradient_3.Rotation = -90
UIGradient_3.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(204, 204, 204)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
}
UIGradient_3.Parent = UIStroke_6

local UIStroke_7 = Instance.new("UIStroke")
UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_7.Parent = TextBox

local Cards = Instance.new("Frame")
Cards.BackgroundTransparency = 1
Cards.Name = "Cards"
Cards.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cards.Size = UDim2.new(1, 0, 1, 0)
Cards.BorderSizePixel = 0
Cards.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cards.Parent = Frame

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.03459116816520691, 0, 0.13965116441249847, 0)
ScrollingFrame.Size = UDim2.new(0.6193853616714478, 0, 0.817829430103302, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = Cards

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.FillDirectionMaxCells = 4
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 65, 0, 85)
UIGridLayout.Parent = ScrollingFrame

local ToonTemplate = Instance.new("ImageButton")
ToonTemplate.Visible = false
ToonTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToonTemplate.AnchorPoint = Vector2.new(0.5, 0.5)
ToonTemplate.BackgroundTransparency = 1
ToonTemplate.Position = UDim2.new(0.15824194252490997, 0, 0.4989820420742035, 0)
ToonTemplate.Name = "ToonTemplate"
ToonTemplate.Size = UDim2.new(1, 0, 1, 0)
ToonTemplate.BorderSizePixel = 0
ToonTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToonTemplate.Parent = ScrollingFrame

local Background = Instance.new("ImageLabel")
Background.ScaleType = Enum.ScaleType.Fit
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.Name = "Background"
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.Image = "rbxassetid://119224299263717"
Background.BackgroundTransparency = 1
Background.Position = UDim2.new(0.5032919049263, 0, 0.5001575350761414, 0)
Background.Size = UDim2.new(0.9147529006004333, 0, 0.9510254263877869, 0)
Background.BorderSizePixel = 0
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.Parent = ToonTemplate

local TitleWithDrop = Instance.new("TextLabel")
TitleWithDrop.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TitleWithDrop.Interactable = false
TitleWithDrop.TextSize = 14
TitleWithDrop.Size = UDim2.new(0.7943640351295471, 0, 0.2232942283153534, 0)
TitleWithDrop.RichText = true
TitleWithDrop.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleWithDrop.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleWithDrop.Text = "Astro"
TitleWithDrop.Name = "TitleWithDrop"
TitleWithDrop.TextWrapped = true
TitleWithDrop.BackgroundTransparency = 1
TitleWithDrop.Position = UDim2.new(0.10812533646821976, 0, 0.6947306394577026, 0)
TitleWithDrop.BorderSizePixel = 0
TitleWithDrop.TextYAlignment = Enum.TextYAlignment.Bottom
TitleWithDrop.TextScaled = true
TitleWithDrop.BackgroundColor3 = Color3.fromRGB(255, 33, 103)
TitleWithDrop.Parent = ToonTemplate

local UIStroke_8 = Instance.new("UIStroke")
UIStroke_8.Thickness = 2.984865665435791
UIStroke_8.Parent = TitleWithDrop

local TitleTop = Instance.new("TextLabel")
TitleTop.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TitleTop.Interactable = false
TitleTop.TextSize = 14
TitleTop.Size = UDim2.new(0.9846731424331665, 0, 0.9958624243736267, 0)
TitleTop.RichText = true
TitleTop.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleTop.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleTop.Text = "Astro"
TitleTop.Name = "TitleTop"
TitleTop.TextWrapped = true
TitleTop.BackgroundTransparency = 1
TitleTop.Position = UDim2.new(-0.0016731892246752977, 0, -0.043573152273893356, 0)
TitleTop.BorderSizePixel = 0
TitleTop.TextYAlignment = Enum.TextYAlignment.Bottom
TitleTop.TextScaled = true
TitleTop.BackgroundColor3 = Color3.fromRGB(255, 33, 103)
TitleTop.Parent = TitleWithDrop

local UIStroke_9 = Instance.new("UIStroke")
UIStroke_9.Thickness = 2.984865665435791
UIStroke_9.Parent = TitleTop

local ItemImage = Instance.new("ImageLabel")
ItemImage.ScaleType = Enum.ScaleType.Fit
ItemImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
ItemImage.Name = "ItemImage"
ItemImage.AnchorPoint = Vector2.new(0.5, 0.5)
ItemImage.Image = "rbxassetid://129516341286149"
ItemImage.BackgroundTransparency = 1
ItemImage.Position = UDim2.new(0.5028694868087769, 0, 0.39169958233833313, 0)
ItemImage.Size = UDim2.new(0.7722325325012207, 0, 0.6579875349998474, 0)
ItemImage.BorderSizePixel = 0
ItemImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ItemImage.Parent = ToonTemplate

local UICorner_4 = Instance.new("UICorner")
UICorner_4.CornerRadius = UDim.new(0.20000000298023224, 0)
UICorner_4.Parent = ItemImage

local UIScale = Instance.new("UIScale")
UIScale.Parent = ToonTemplate

local Preview = Instance.new("TextLabel")
Preview.Visible = false
Preview.TextWrapped = true
Preview.TextColor3 = Color3.fromRGB(255, 255, 255)
Preview.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preview.Text = "PREVIEW:"
Preview.Name = "Preview"
Preview.Size = UDim2.new(0.32860520482063293, 0, 0.12403100728988647, 0)
Preview.BorderSizePixel = 0
Preview.BackgroundTransparency = 1
Preview.Position = UDim2.new(0.6707252860069275, 0, 0.01550387591123581, 0)
Preview.TextSize = 14
Preview.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Preview.TextScaled = true
Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preview.Parent = Cards

local UIStroke_10 = Instance.new("UIStroke")
UIStroke_10.Thickness = 1.5
UIStroke_10.Parent = Preview

local PreviewImage = Instance.new("ImageLabel")
PreviewImage.Visible = false
PreviewImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
PreviewImage.Name = "PreviewImage"
PreviewImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
PreviewImage.BackgroundTransparency = 1
PreviewImage.Position = UDim2.new(0, 550, 0.170542642, 0)
PreviewImage.Size = UDim2.new(0, 120, 0.600000024, 0)
PreviewImage.BorderSizePixel = 0
PreviewImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PreviewImage.Parent = Cards

local Equip = Instance.new("TextButton")
Equip.Visible = false
Equip.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Equip.TextColor3 = Color3.fromRGB(255, 255, 255)
Equip.BorderColor3 = Color3.fromRGB(0, 0, 0)
Equip.Text = ""
Equip.Name = "Equip"
Equip.Position = UDim2.new(0.7044917345046997, 0, 0.8410852551460266, 0)
Equip.Size = UDim2.new(0, 108, 0, 31)
Equip.BorderSizePixel = 0
Equip.TextSize = 14
Equip.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Equip.Parent = Cards

local UICorner_5 = Instance.new("UICorner")
UICorner_5.CornerRadius = UDim.new(0, 25)
UICorner_5.Parent = Equip

local UIStroke_11 = Instance.new("UIStroke")
UIStroke_11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_11.Parent = Equip

local UIStroke_12 = Instance.new("UIStroke")
UIStroke_12.Color = Color3.fromRGB(107, 107, 107)
UIStroke_12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_12.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_12.Parent = Equip

local UIGradient_4 = Instance.new("UIGradient")
UIGradient_4.Rotation = 90
UIGradient_4.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(204, 204, 204)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
}
UIGradient_4.Parent = UIStroke_12

local UIGradient_5 = Instance.new("UIGradient")
UIGradient_5.Rotation = 90
UIGradient_5.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(99, 99, 99))
}
UIGradient_5.Parent = Equip

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Equip"
TextLabel.TextStrokeTransparency = 0
TextLabel.Size = UDim2.new(0, 54, 0, 18)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.25, 0, 0.19354838132858276, 0)
TextLabel.TextSize = 14
TextLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = Equip

local CardsButton = Instance.new("TextButton")
CardsButton.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CardsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CardsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CardsButton.Text = "Cards"
CardsButton.BorderSizePixel = 0
CardsButton.TextSize = 14
CardsButton.Size = UDim2.new(0.2400990128517151, 0, 0.07941176742315292, 0)
CardsButton.Name = "CardsButton"
CardsButton.Position = UDim2.new(0.1318628340959549, 0, 0.09345128387212753, 0)
CardsButton.TextWrapped = true
CardsButton.ZIndex = 0
CardsButton.TextScaled = true
CardsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CardsButton.Parent = Holder
CardsButton.MouseButton1Click:Connect(function()
	CardForgeRecoded.Holder.Frame.Chat.Visible = false
	CardForgeRecoded.Holder.Frame.Cards.Visible = true
end)

local UIStroke_13 = Instance.new("UIStroke")
UIStroke_13.Parent = CardsButton

local UICorner_6 = Instance.new("UICorner")
UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = CardsButton

local ChatButton = Instance.new("TextButton")
ChatButton.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ChatButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatButton.Text = "Chat "
ChatButton.BorderSizePixel = 0
ChatButton.TextSize = 14
ChatButton.Size = UDim2.new(0.2400990128517151, 0, 0.07941176742315292, 0)
ChatButton.Name = "ChatButton"
ChatButton.Position = UDim2.new(0.4333917498588562, 0, 0.0961424857378006, 0)
ChatButton.TextWrapped = true
ChatButton.ZIndex = 0
ChatButton.TextScaled = true
ChatButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ChatButton.Parent = Holder
ChatButton.MouseButton1Click:Connect(function()
	CardForgeRecoded.Holder.Frame.Chat.Visible = true
	CardForgeRecoded.Holder.Frame.Cards.Visible = false
end)

local UIStroke_14 = Instance.new("UIStroke")
UIStroke_14.Parent = ChatButton

local UICorner_7 = Instance.new("UICorner")
UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = ChatButton

local currentUseConnection = nil

for _, char in ipairs(cfg.characters) do
    local card = ToonTemplate:Clone()
    card.Parent = Cards.ScrollingFrame
    card.TitleWithDrop.Text = char.name
    card.TitleWithDrop.TitleTop.Text = char.name
    card.ItemImage.Image = getcustomasset(char.id .. "_render.png")
	card.Visible = true

    --[[ all of this is useless
    local s = char.gradient.start
    local e = char.gradient["endc"] -- in case 'end' is a Lua keyword
    card.CardGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(s[1], s[2], s[3])),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(e[1], e[2], e[3]))
    })]]

    card.MouseButton1Click:Connect(function()
        Preview.Visible = true
        PreviewImage.Visible = true
        PreviewImage.Image = getcustomasset(char.id .. "_preview.png")
        Equip.Visible = true

        if currentUseConnection then
            currentUseConnection:Disconnect()
        end

        currentUseConnection = Equip.MouseButton1Click:Connect(function()
			_G.card = char.name
            loadstring(game:HttpGet(char.script))()
        end)
    end)
end
showDialogue("YTestt")
