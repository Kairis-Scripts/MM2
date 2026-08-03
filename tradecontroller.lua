local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "TradeScamUI"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")

Frame.Name = "MainFrame"
Frame.Size = UDim2.new(0, 290, 0, 235)
Frame.Position = UDim2.new(0.5, -145, 0.5, -117)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.ClipsDescendants = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

local UIStroke = Instance.new("UIStroke")

UIStroke.Color = Color3.fromRGB(60, 60, 80)
UIStroke.Thickness = 1.2
UIStroke.Transparency = 0.2
UIStroke.Parent = Frame

local parent = Instance.new("Frame")

parent.Name = "ContentContainer"
parent.Size = UDim2.new(1, 0, 1, -35)
parent.Position = UDim2.new(0, 0, 0, 35)
parent.BackgroundTransparency = 1
parent.Parent = Frame

local frame = Instance.new("Frame")

frame.Size = UDim2.new(1, -20, 0, 2)
frame.Position = UDim2.new(0, 10, 0, 32)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
frame.BorderSizePixel = 0
frame.Parent = Frame

local secondaryParent = Instance.new("Frame")

secondaryParent.Name = "HeaderFrame"
secondaryParent.Size = UDim2.new(1, -40, 0, 24)
secondaryParent.Position = UDim2.new(0, 10, 0, 5)
secondaryParent.BackgroundTransparency = 1
secondaryParent.Parent = Frame

local UIListLayout = Instance.new("UIListLayout")

UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = secondaryParent

local TextLabel = Instance.new("TextLabel")

TextLabel.Name = "1_Title"
TextLabel.LayoutOrder = 1
TextLabel.AutomaticSize = Enum.AutomaticSize.X
TextLabel.Size = UDim2.new(0, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "🕹\239\184\143 Trade Scam Script"
TextLabel.TextColor3 = Color3.fromRGB(240, 240, 255)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 12.5
TextLabel.Parent = secondaryParent

local textLabel = Instance.new("TextLabel")

textLabel.Name = "2_ServerTag"
textLabel.LayoutOrder = 2
textLabel.Size = UDim2.new(0, 88, 0, 18)
textLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
textLabel.Text = "Made by Kairis Scripts"
textLabel.TextColor3 = Color3.fromRGB(140, 140, 180)
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 7
textLabel.Parent = secondaryParent

local uiCorner = Instance.new("UICorner")

uiCorner.CornerRadius = UDim.new(0, 4)
uiCorner.Parent = textLabel

local TextButton = Instance.new("TextButton")

TextButton.Name = "ToggleButton"
TextButton.Size = UDim2.new(0, 18, 0, 18)
TextButton.Position = UDim2.new(1, -24, 0, 8)
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
TextButton.Text = "-"
TextButton.TextColor3 = Color3.fromRGB(200, 200, 220)
TextButton.Font = Enum.Font.GothamBold
TextButton.TextSize = 13
TextButton.Parent = Frame

local secondaryUiCorner = Instance.new("UICorner")

secondaryUiCorner.CornerRadius = UDim.new(0, 4)
secondaryUiCorner.Parent = TextButton

local uiStroke = Instance.new("UIStroke")

uiStroke.Color = Color3.fromRGB(50, 50, 70)
uiStroke.Thickness = 1
uiStroke.Parent = TextButton

local alternateParent = Instance.new("Frame")

alternateParent.Size = UDim2.new(1, -20, 0, 48)
alternateParent.Position = UDim2.new(0, 10, 0, 5)
alternateParent.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
alternateParent.BorderSizePixel = 0
alternateParent.Parent = parent

local alternateUiCorner = Instance.new("UICorner")

alternateUiCorner.CornerRadius = UDim.new(0, 8)
alternateUiCorner.Parent = alternateParent

local secondaryUiStroke = Instance.new("UIStroke")

secondaryUiStroke.Color = Color3.fromRGB(40, 40, 55)
secondaryUiStroke.Thickness = 1
secondaryUiStroke.Parent = alternateParent

local additionalParent = Instance.new("Frame")

additionalParent.Size = UDim2.new(0, 36, 0, 36)
additionalParent.Position = UDim2.new(0, 6, 0, 6)
additionalParent.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
additionalParent.BorderSizePixel = 0
additionalParent.Parent = alternateParent

local additionalUiCorner = Instance.new("UICorner")

additionalUiCorner.CornerRadius = UDim.new(1, 0)
additionalUiCorner.Parent = additionalParent

local ImageLabel = Instance.new("ImageLabel")

ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Image = ""
ImageLabel.ScaleType = Enum.ScaleType.Crop
ImageLabel.Parent = additionalParent

local fallbackUiCorner = Instance.new("UICorner")

fallbackUiCorner.CornerRadius = UDim.new(1, 0)
fallbackUiCorner.Parent = ImageLabel

local valueLabel = Instance.new("TextLabel")

valueLabel.Size = UDim2.new(1, -50, 0, 16)
valueLabel.Position = UDim2.new(0, 48, 0, 7)
valueLabel.BackgroundTransparency = 1
valueLabel.Text = "Search Username Victim"
valueLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
valueLabel.Font = Enum.Font.GothamBold
valueLabel.TextSize = 11
valueLabel.TextXAlignment = Enum.TextXAlignment.Left
valueLabel.Parent = alternateParent

local secondaryValueLabel = Instance.new("TextLabel")

secondaryValueLabel.Size = UDim2.new(1, -50, 0, 14)
secondaryValueLabel.Position = UDim2.new(0, 48, 0, 24)
secondaryValueLabel.BackgroundTransparency = 1
secondaryValueLabel.Text = "@none"
secondaryValueLabel.TextColor3 = Color3.fromRGB(110, 110, 130)
secondaryValueLabel.Font = Enum.Font.Gotham
secondaryValueLabel.TextSize = 10
secondaryValueLabel.TextXAlignment = Enum.TextXAlignment.Left
secondaryValueLabel.Parent = alternateParent

local fallbackParent = Instance.new("Frame")

fallbackParent.Size = UDim2.new(1, -20, 0, 30)
fallbackParent.Position = UDim2.new(0, 10, 0, 59)
fallbackParent.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
fallbackParent.BorderSizePixel = 0
fallbackParent.Parent = parent

local nestedUiCorner = Instance.new("UICorner")

nestedUiCorner.CornerRadius = UDim.new(0, 6)
nestedUiCorner.Parent = fallbackParent

local alternateUiStroke = Instance.new("UIStroke")

alternateUiStroke.Color = Color3.fromRGB(40, 40, 55)
alternateUiStroke.Thickness = 1
alternateUiStroke.Parent = fallbackParent

local TextBox = Instance.new("TextBox")

TextBox.Size = UDim2.new(1, -12, 1, 0)
TextBox.Position = UDim2.new(0, 6, 0, 0)
TextBox.BackgroundTransparency = 1
TextBox.Text = ""
TextBox.PlaceholderText = "Seach Victim Username or Display Name..."
TextBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
TextBox.TextColor3 = Color3.fromRGB(240, 240, 255)
TextBox.Font = Enum.Font.GothamMedium
TextBox.TextSize = 10
TextBox.ClearTextOnFocus = false
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.Parent = fallbackParent

local textButton = Instance.new("TextButton")

textButton.Size = UDim2.new(1, -20, 0, 34)
textButton.Position = UDim2.new(0, 10, 0, 95)
textButton.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
textButton.BorderSizePixel = 0
textButton.Text = ""
textButton.AutoButtonColor = false
textButton.Parent = parent

local innerUiCorner = Instance.new("UICorner")

innerUiCorner.CornerRadius = UDim.new(0, 7)
innerUiCorner.Parent = textButton

local additionalUiStroke = Instance.new("UIStroke")

additionalUiStroke.Color = Color3.fromRGB(60, 60, 85)
additionalUiStroke.Thickness = 1
additionalUiStroke.Parent = textButton

local alternateValueLabel = Instance.new("TextLabel")

alternateValueLabel.Size = UDim2.new(1, 0, 1, 0)
alternateValueLabel.BackgroundTransparency = 1
alternateValueLabel.Text = "❄\239\184\143 Freeze Trade"
alternateValueLabel.TextColor3 = Color3.fromRGB(230, 230, 255)
alternateValueLabel.Font = Enum.Font.GothamBold
alternateValueLabel.TextSize = 13
alternateValueLabel.Parent = textButton

local nestedParent = Instance.new("TextButton")

nestedParent.Size = UDim2.new(1, -20, 0, 34)
nestedParent.Position = UDim2.new(0, 10, 0, 135)
nestedParent.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
nestedParent.BorderSizePixel = 0
nestedParent.Text = ""
nestedParent.AutoButtonColor = false
nestedParent.Parent = parent

local outerUiCorner = Instance.new("UICorner")

outerUiCorner.CornerRadius = UDim.new(0, 7)
outerUiCorner.Parent = nestedParent

local fallbackUiStroke = Instance.new("UIStroke")

fallbackUiStroke.Color = Color3.fromRGB(60, 60, 85)
fallbackUiStroke.Thickness = 1
fallbackUiStroke.Parent = nestedParent

local additionalValueLabel = Instance.new("TextLabel")

additionalValueLabel.Size = UDim2.new(1, 0, 1, 0)
additionalValueLabel.BackgroundTransparency = 1
additionalValueLabel.Text = "👀 Auto Accept"
additionalValueLabel.TextColor3 = Color3.fromRGB(230, 230, 255)
additionalValueLabel.Font = Enum.Font.GothamBold
additionalValueLabel.TextSize = 13
additionalValueLabel.Parent = nestedParent

local innerParent = Instance.new("Frame")

innerParent.Size = UDim2.new(1, -20, 0, 16)
innerParent.Position = UDim2.new(0, 10, 0, 175)
innerParent.BackgroundTransparency = 1
innerParent.Visible = false
innerParent.Parent = parent

local fallbackValueLabel = Instance.new("TextLabel")

fallbackValueLabel.Size = UDim2.new(1, 0, 0, 10)
fallbackValueLabel.BackgroundTransparency = 1
fallbackValueLabel.Text = "Preparing..."
fallbackValueLabel.TextColor3 = Color3.fromRGB(130, 130, 150)
fallbackValueLabel.Font = Enum.Font.Gotham
fallbackValueLabel.TextSize = 9
fallbackValueLabel.TextXAlignment = Enum.TextXAlignment.Left
fallbackValueLabel.Parent = innerParent

local outerParent = Instance.new("Frame")

outerParent.Size = UDim2.new(1, 0, 0, 4)
outerParent.Position = UDim2.new(0, 0, 0, 11)
outerParent.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
outerParent.BorderSizePixel = 0
outerParent.Parent = innerParent

local previousUiCorner = Instance.new("UICorner")

previousUiCorner.CornerRadius = UDim.new(1, 0)
previousUiCorner.Parent = outerParent

local previousParent = Instance.new("Frame")

previousParent.Size = UDim2.new(0, 0, 1, 0)
previousParent.BackgroundColor3 = Color3.fromRGB(90, 140, 255)
previousParent.BorderSizePixel = 0
previousParent.Parent = outerParent

local currentUiCorner = Instance.new("UICorner")

currentUiCorner.CornerRadius = UDim.new(1, 0)
currentUiCorner.Parent = previousParent

local flag = false

TextButton.MouseButton1Click:Connect(function()
	while 0 ~= 0 do
	end

	flag = not flag

	if not flag then
		while 0 ~= 0 do
		end

		local number = 0

		repeat
			if number == 0 then
				TweenService:Create(Frame, TweenInfo.new(0.2), {
					Size = UDim2.new(0, 290, 0, 235)
				}):Play()
				task.delay(0.2, function()
					if not flag then
						while 0 ~= 0 do
						end

						while 0 ~= 0 do
						end

						parent.Visible = true
						frame.Visible = true
					end
				end)
				number = 1
			end
		until number == 1

		TextButton.Text = "-"
	else
		while 0 ~= 0 do
		end

		local number = 0

		while number ~= 1 do
			if number == 0 then
				parent.Visible = false
				frame.Visible = false
				number = 1
			end
		end

		TextButton.Text = "+"
		TweenService:Create(Frame, TweenInfo.new(0.2), {
			Size = UDim2.new(0, 290, 0, 34)
		}):Play()
	end
end)
textButton.MouseEnter:Connect(function()
	local state = nil
	local secondaryState = nil
	local alternateState = nil
	local additionalState = nil
	local fallbackState = nil

	while 0 ~= 0 do
	end

	TweenService:Create(textButton, TweenInfo.new(0.2), {
		BackgroundColor3 = Color3.fromRGB(45, 45, 65, state, secondaryState, alternateState, additionalState, fallbackState)
	}):Play()
	TweenService:Create(additionalUiStroke, TweenInfo.new(0.2), {
		Color = Color3.fromRGB(90, 90, 120, state, secondaryState, alternateState, additionalState, fallbackState)
	}):Play()
end)
textButton.MouseLeave:Connect(function()
	local colorState = nil
	local secondaryColorState = nil
	local alternateColorState = nil
	local additionalColorState = nil
	local fallbackColorState = nil
	local nestedColorState = nil

	while 0 ~= 0 do
	end

	while 0 ~= 0 do
	end

	local tweenService = TweenService
	local Create = tweenService.Create
	local parent = textButton
	local tweenInfo = TweenInfo.new(0.2)
	local data = {}
	local backgroundColor3 = Color3.fromRGB(35, 35, 50, colorState, secondaryColorState, alternateColorState, additionalColorState, fallbackColorState, nestedColorState)

	data.BackgroundColor3 = backgroundColor3
	Create(tweenService, parent, tweenInfo, data, backgroundColor3):Play()

	local secondaryTweenService = TweenService
	local create = secondaryTweenService.Create
	local uiStroke = additionalUiStroke
	local secondaryTweenInfo = TweenInfo.new(0.2)
	local colorData = {}
	local color = Color3.fromRGB(60, 60, 85, colorState, secondaryColorState, alternateColorState, additionalColorState, fallbackColorState, nestedColorState)

	colorData.Color = color
	create(secondaryTweenService, uiStroke, secondaryTweenInfo, colorData, color):Play()
end)
nestedParent.MouseEnter:Connect(function()
	local colorState = nil
	local secondaryColorState = nil
	local alternateColorState = nil
	local additionalColorState = nil
	local fallbackColorState = nil
	local nestedColorState = nil

	while 0 ~= 0 do
	end

	while 0 ~= 0 do
	end

	local tweenService = TweenService
	local Create = tweenService.Create
	local parent = nestedParent
	local tweenInfo = TweenInfo.new(0.2)
	local data = {}
	local backgroundColor3 = Color3.fromRGB(45, 45, 65, colorState, secondaryColorState, alternateColorState, additionalColorState, fallbackColorState, nestedColorState)

	data.BackgroundColor3 = backgroundColor3
	Create(tweenService, parent, tweenInfo, data, backgroundColor3):Play()

	local secondaryTweenService = TweenService
	local create = secondaryTweenService.Create
	local uiStroke = fallbackUiStroke
	local secondaryTweenInfo = TweenInfo.new(0.2)
	local colorData = {}
	local color = Color3.fromRGB(90, 90, 120, colorState, secondaryColorState, alternateColorState, additionalColorState, fallbackColorState, nestedColorState)

	colorData.Color = color
	create(secondaryTweenService, uiStroke, secondaryTweenInfo, colorData, color):Play()
end)
nestedParent.MouseLeave:Connect(function()
	local colorState = nil
	local secondaryColorState = nil
	local alternateColorState = nil
	local additionalColorState = nil
	local fallbackColorState = nil
	local nestedColorState = nil

	while 0 ~= 0 do
	end

	while 0 ~= 0 do
	end

	local tweenService = TweenService
	local Create = tweenService.Create
	local parent = nestedParent
	local tweenInfo = TweenInfo.new(0.2)
	local data = {}
	local backgroundColor3 = Color3.fromRGB(35, 35, 50, colorState, secondaryColorState, alternateColorState, additionalColorState, fallbackColorState, nestedColorState)

	data.BackgroundColor3 = backgroundColor3
	Create(tweenService, parent, tweenInfo, data, backgroundColor3):Play()

	local secondaryTweenService = TweenService
	local create = secondaryTweenService.Create
	local uiStroke = fallbackUiStroke
	local secondaryTweenInfo = TweenInfo.new(0.2)
	local colorData = {}
	local color = Color3.fromRGB(60, 60, 85, colorState, secondaryColorState, alternateColorState, additionalColorState, fallbackColorState, nestedColorState)

	colorData.Color = color
	create(secondaryTweenService, uiStroke, secondaryTweenInfo, colorData, color):Play()
end)
TextBox.Focused:Connect(function()
	local colorState = nil
	local secondaryColorState = nil
	local alternateColorState = nil
	local additionalColorState = nil
	local tweenService = TweenService
	local Create = tweenService.Create
	local uiStroke = alternateUiStroke
	local tweenInfo = TweenInfo.new(0.2);

	({}).Color = Color3.fromRGB(80, 120, 220, colorState, secondaryColorState, alternateColorState, additionalColorState)
	Create(tweenService, uiStroke, tweenInfo):Play()
end)
TextBox.FocusLost:Connect(function()
	local colorState = nil
	local secondaryColorState = nil
	local alternateColorState = nil
	local additionalColorState = nil
	local tweenService = TweenService
	local Create = tweenService.Create
	local uiStroke = alternateUiStroke
	local tweenInfo = TweenInfo.new(0.2);

	({}).Color = Color3.fromRGB(40, 40, 55, colorState, secondaryColorState, alternateColorState, additionalColorState)
	Create(tweenService, uiStroke, tweenInfo):Play()
end)

local capturedPlayer = nil

local function handlePlayer(gsub)
	local playerState = nil
	local lowercaseDisplayName = nil
	local DisplayName = nil
	local secondaryPlayerState = nil
	local alternatePlayerState = nil
	local additionalPlayerState = nil
	local fallbackPlayerState = nil
	local nestedPlayerState = nil
	local innerPlayerState = nil
	local outerPlayerState = nil
	local previousPlayerState = nil

	while 0 ~= 0 do
	end

	local playerNumber = 0

	repeat
		local number = 0

		while number ~= 1 do
			if number == 0 then
				if playerNumber == 0 then
					gsub = gsub:lower():gsub("%s+", "", playerState, lowercaseDisplayName, DisplayName)

					if gsub == "" then
						return nil
					end

					playerNumber = 1
				end

				if playerNumber == 1 then
					local iterator, state, control, _, _ = ipairs(Players:GetPlayers())

					for _, item in iterator, state, control do
						if gsub == item.Name:lower() then
							return item
						end

						DisplayName = item.DisplayName
						lowercaseDisplayName = DisplayName.lower(DisplayName)

						if lowercaseDisplayName == gsub then
							return item
						end
					end

					local secondaryIterator, secondaryState, secondaryControl, _, _ = ipairs(Players:GetPlayers())

					for _, item in secondaryIterator, secondaryState, secondaryControl do
						if gsub == item.Name:lower():sub(1, #gsub, secondaryPlayerState, alternatePlayerState, additionalPlayerState, fallbackPlayerState, nestedPlayerState, innerPlayerState, outerPlayerState, previousPlayerState) then
							return item
						end

						DisplayName = item.DisplayName:lower()
						lowercaseDisplayName = DisplayName.sub(DisplayName, 1, #gsub, secondaryPlayerState, alternatePlayerState, additionalPlayerState, fallbackPlayerState, nestedPlayerState, innerPlayerState, outerPlayerState, previousPlayerState)

						if lowercaseDisplayName == gsub then
							return item
						end
					end

					playerNumber = 2
					playerState = v158
				end

				number = 1
			end
		end
	until playerNumber == 2

	return nil
end

TextBox:GetPropertyChangedSignal("Text"):Connect(function()
	local state = nil
	local secondaryState = nil
	local alternateState = nil
	local additionalState = nil
	local fallbackState = nil
	local nestedState = nil
	local innerState = nil
	local outerState = nil
	local previousState = nil
	local currentState = nil
	local nextState = nil
	local sourceState = nil
	local targetState = nil
	local stateVariantA = nil
	local stateVariantB = nil
	local number = 0
	local TextBoxText = nil
	local player = nil

	repeat
		if number == 0 then
			local secondaryNumber = 0

			while secondaryNumber ~= 1 do
				if secondaryNumber == 0 then
					TextBoxText = TextBox.Text
					player = handlePlayer(TextBoxText)
					secondaryNumber = 1
				end
			end

			number = 1
		end
	until number == 1

	if not player then
		local number = 0

		repeat
			if number == 0 then
				capturedPlayer = nil
				ImageLabel.Image = ""
				number = 1
			end
		until number == 1

		if TextBoxText:gsub("%s+", "", state, secondaryState, alternateState) ~= "" then
			local number = 0

			while number ~= 1 do
				if number == 0 then
					valueLabel.Text = "Player not in server"
					secondaryValueLabel.Text = "@notfound"
					number = 1
				end
			end

			valueLabel.TextColor3 = Color3.fromRGB(220, 90, 90, alternateState, additionalState, fallbackState, nestedState, innerState)
		else
			local number = 0

			while number ~= 1 do
				if number == 0 then
					valueLabel.Text = "Search Username Victim"
					secondaryValueLabel.Text = "@none"
					number = 1
				end
			end

			valueLabel.TextColor3 = Color3.fromRGB(200, 200, 220, alternateState, additionalState, fallbackState, nestedState, innerState)
		end

		local tweenService = TweenService
		local Create = tweenService.Create
		local uiStroke = secondaryUiStroke
		local tweenInfo = TweenInfo.new(0.2)
		local colorData = {}
		local secondaryNumber = 40
		local alternateNumber = 40
		local color = Color3.fromRGB(secondaryNumber, alternateNumber, 55, nestedState, innerState, outerState, previousState, currentState, nextState, sourceState, targetState)

		colorData.Color = color
		Create(tweenService, uiStroke, tweenInfo, colorData, color, secondaryNumber, alternateNumber):Play()
	else
		while 0 ~= 0 do
		end

		local number = 0

		while true do
			if number == 1 then
				secondaryValueLabel.Text = "@" .. player.Name
				valueLabel.TextColor3 = Color3.fromRGB(100, 220, 140, alternateState, additionalState, fallbackState, nestedState, innerState)
				number = 2
			end

			if number == 2 then
				break
			end

			if number == 0 then
				capturedPlayer = player
				valueLabel.Text = player.DisplayName
				number = 1
			end
		end

		task.spawn(function()
			local imageState = nil
			local secondaryImageState = nil
			local alternateImageState = nil
			local number = 0
			local secondaryNumber = nil

			repeat
				if number == 0 then
					secondaryNumber = 0
					number = 1
				end
			until number == 1

			while secondaryNumber ~= 0 do
			end

			local image, userThumbnailAsync, _, _ = Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150, imageState, secondaryImageState, alternateImageState)

			if userThumbnailAsync and capturedPlayer == player then
				ImageLabel.Image = image
			end
		end)

		local tweenService = TweenService
		local Create = tweenService.Create
		local uiStroke = secondaryUiStroke
		local tweenInfo = TweenInfo.new(0.2)
		local colorData = {}
		local secondaryNumber = 60
		local alternateNumber = 160
		local additionalNumber = 100
		local color = Color3.fromRGB(secondaryNumber, alternateNumber, additionalNumber, innerState, outerState, previousState, currentState, nextState, sourceState, targetState, stateVariantA, stateVariantB)

		colorData.Color = color
		Create(tweenService, uiStroke, tweenInfo, colorData, color, secondaryNumber, alternateNumber, additionalNumber):Play()
	end
end)

local secondaryFlag = false

textButton.MouseButton1Click:Connect(function()
	local sizeNumber = nil
	local tweenInfoNumber = nil
	local number = nil
	local secondaryTweenInfoNumber = nil
	local tweenInfoState = nil
	local state = nil
	local secondaryState = nil
	local alternateState = nil
	local additionalState = nil
	local fallbackState = nil
	local nestedState = nil
	local secondaryNumber = 0
	local iteratorData = nil
	local thread = nil

	while secondaryNumber ~= 3 do
		if secondaryNumber == 1 then
			local alternateNumber = 0

			repeat
				if alternateNumber == 0 then
					alternateValueLabel.Text = "FREEZING..."
					alternateValueLabel.TextColor3 = Color3.fromRGB(160, 160, 180, sizeNumber, tweenInfoNumber, number, secondaryTweenInfoNumber)
					alternateNumber = 1
				end
			until alternateNumber == 1

			innerParent.Visible = true
			secondaryNumber = 2
		end

		if secondaryNumber == 2 then
			previousParent.Size = UDim2.new(0, 0, 1, 0, sizeNumber, tweenInfoNumber, number)
			iteratorData = {
				{
					0.2,
					"Connecting to target..."
				},
				{
					0.5,
					"Freezing trade packet..."
				},
				{
					0.8,
					"Finalizing lock..."
				}
			}

			local tweenService = TweenService
			local Create = tweenService.Create
			local parent = previousParent
			local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Quad, sizeNumber, tweenInfoNumber, number, secondaryTweenInfoNumber, tweenInfoState)
			local sizeData = {}

			sizeNumber = 1
			tweenInfoNumber = 0
			number = 1
			secondaryTweenInfoNumber = 0

			local size = UDim2.new(sizeNumber, tweenInfoNumber, number, secondaryTweenInfoNumber, tweenInfoState, state, secondaryState, alternateState, additionalState, fallbackState, nestedState)

			sizeData.Size = size
			thread = Create(tweenService, parent, tweenInfo, sizeData, size, sizeNumber)
			secondaryNumber = 3
		end

		if secondaryNumber == 0 then
			local number = 0

			repeat
				if number == 0 then
					if secondaryFlag then
						return
					end

					if not capturedPlayer or not capturedPlayer.Parent then
						while 0 ~= 0 do
						end

						local number = 0

						while true do
							while 0 ~= 0 do
							end

							if number == 1 then
								break
							end

							if number == 0 then
								valueLabel.Text = "Select a victim first!"
								valueLabel.TextColor3 = Color3.fromRGB(220, 90, 90, secondaryTweenInfoNumber, tweenInfoState, state, secondaryState, alternateState, additionalState, fallbackState)
								number = 1
							end
						end

						return
					end

					number = 1
				end
			until number == 1

			secondaryFlag = true
			secondaryNumber = 1
		end
	end

	thread:Play()

	local iterator, innerState, control, _ = ipairs(iteratorData)

	for key, item in iterator, innerState, control do
		task.delay(item[1] * 5, function()
			if innerParent.Visible then
				fallbackValueLabel.Text = item[2]
			end
		end, number, secondaryTweenInfoNumber, tweenInfoState, state, secondaryState, alternateState, additionalState)
	end

	task.delay(5, function()
		local state = nil
		local secondaryState = nil

		while 0 ~= 0 do
		end

		local number = 0

		while number ~= 1 do
			if number == 0 then
				fallbackValueLabel.Text = "Complete!"
				alternateValueLabel.Text = "SUCCESS BYPASS FREEZE TRADE"
				number = 1
			end
		end

		local secondaryNumber = 220

		alternateValueLabel.TextColor3 = Color3.fromRGB(100, secondaryNumber, 140, state, secondaryState)
		task.delay(2.5, function()
			local state = nil
			local secondaryState = nil

			while 0 ~= 0 do
			end

			local number = 0

			while number ~= 1 do
				if number == 0 then
					innerParent.Visible = false
					alternateValueLabel.Text = "❄\239\184\143 Freeze Trade"
					number = 1
				end
			end

			alternateValueLabel.TextColor3 = Color3.fromRGB(230, 230, 255, state, secondaryState)
			secondaryFlag = false
		end, secondaryNumber)
	end, v226, u227)
end)
nestedParent.MouseButton1Click:Connect(function()
	local text = nil
	local sizeState = nil
	local secondarySizeState = nil
	local alternateSizeState = nil
	local tweenInfoState = nil
	local secondaryTweenInfoState = nil
	local state = nil
	local secondaryState = nil
	local alternateState = nil
	local additionalState = nil
	local fallbackState = nil
	local nestedState = nil
	local number = 0
	local iteratorData = nil

	repeat
		if number == 1 then
			additionalValueLabel.TextColor3 = Color3.fromRGB(160, 160, 180, text, sizeState, secondarySizeState)
			innerParent.Visible = true
			previousParent.Size = UDim2.new(0, 0, 1, 0, sizeState, secondarySizeState, alternateSizeState)
			iteratorData = {}

			local data = {
				0.2,
				"Interfacing trade packet..."
			}
			local secondaryData = {
				0.5,
				"Bypassing auto confirm..."
			}
			local alternateData = {}
			local secondaryNumber = 0.8

			text = "Injecting accept signal..."
			alternateData[1] = secondaryNumber
			alternateData[2] = text
			iteratorData[1] = data
			iteratorData[2] = secondaryData
			iteratorData[3] = alternateData
			number = 2
		end

		if number == 0 then
			if secondaryFlag then
				return
			end

			if not capturedPlayer or not capturedPlayer.Parent then
				local number = 0

				repeat
					if number == 0 then
						valueLabel.Text = "Select a victim first!"
						valueLabel.TextColor3 = Color3.fromRGB(220, 90, 90, sizeState, secondarySizeState, alternateSizeState, tweenInfoState)
						number = 1
					end
				until number == 1

				return
			end

			secondaryFlag = true
			additionalValueLabel.Text = "ACCEPTING..."
			number = 1
		end
	until number == 2

	local tweenService = TweenService
	local Create = tweenService.Create
	local parent = previousParent
	local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Quad, sizeState, secondarySizeState, alternateSizeState, tweenInfoState, secondaryTweenInfoState)
	local sizeData = {}
	local secondaryNumber = 1
	local alternateNumber = 1
	local additionalNumber = 0
	local size = UDim2.new(secondaryNumber, 0, alternateNumber, additionalNumber, secondaryTweenInfoState, state, secondaryState, alternateState, additionalState, fallbackState, nestedState)

	sizeData.Size = size
	Create(tweenService, parent, tweenInfo, sizeData, size, secondaryNumber):Play()

	local iterator, innerState, control, _ = ipairs(iteratorData)

	for key, item in iterator, innerState, control do
		task.delay(item[1] * 5, function()
			if innerParent.Visible then
				fallbackValueLabel.Text = item[2]
			end
		end, alternateNumber, additionalNumber, secondaryTweenInfoState, state, secondaryState, alternateState, additionalState)
	end

	task.delay(5, function()
		local state = nil
		local secondaryState = nil

		while 0 ~= 0 do
		end

		local number = 0

		repeat
			if number == 0 then
				fallbackValueLabel.Text = "Complete!"
				additionalValueLabel.Text = "SUCCESS BYPASS AUTO ACCEPT"
				number = 1
			end
		until number == 1

		local secondaryNumber = 220

		additionalValueLabel.TextColor3 = Color3.fromRGB(100, secondaryNumber, 140, state, secondaryState)
		task.delay(2.5, function()
			local state = nil
			local secondaryState = nil

			while 0 ~= 0 do
			end

			local number = 0

			while number ~= 1 do
				if number == 0 then
					innerParent.Visible = false
					additionalValueLabel.Text = "👀 Auto Accept"
					number = 1
				end
			end

			additionalValueLabel.TextColor3 = Color3.fromRGB(230, 230, 255, state, secondaryState)
			secondaryFlag = false
		end, secondaryNumber)
	end, v260, u261)
end)

local alternateFlag = nil
local capturedInput = nil
local inputPosition = nil
local FramePosition = nil

local function updatePosition(secondaryInput)
	local updatePositionState = nil
	local secondaryUpdatePositionState = nil

	while 0 ~= 0 do
	end

	local updatePositionNumber = secondaryInput.Position - inputPosition
	local frame = Frame
	local new = UDim2.new
	local XScale = FramePosition.X.Scale
	local sum = FramePosition.X.Offset + updatePositionNumber.X
	local YScale = FramePosition.Y.Scale
	local YOffset = FramePosition.Y.Offset
	local Y = updatePositionNumber.Y

	frame.Position = new(XScale, sum, YScale, YOffset + Y, Y, updatePositionState, secondaryUpdatePositionState)
end

secondaryParent.InputBegan:Connect(function(input)
	local state = nil
	local secondaryState = nil

	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		while 0 ~= 0 do
		end

		local number = 0

		while number ~= 1 do
			if number == 0 then
				alternateFlag = true
				inputPosition = input.Position
				number = 1
			end
		end

		FramePosition = Frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				alternateFlag = false
			end
		end, state, secondaryState)
	end
end)
secondaryParent.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		capturedInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if alternateFlag and input == capturedInput then
		updatePosition(input)
	end
end)
