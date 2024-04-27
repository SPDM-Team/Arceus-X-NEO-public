local http = cloneref(game:GetService("HttpService"))

local succ, result = pcall(function()
	return http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/bannedusers"))
end)

if succ and result[gethwid()] then
	-- Gui to Lua
	-- Version: 3.2 - Exp

	-- Instances:

	local BanCheck = {
		BanCheck = Instance.new("ScreenGui"),
		BanScreen = Instance.new("Frame"),
		UIPadding = Instance.new("UIPadding"),
		PopupTitle = Instance.new("TextLabel"),
		PopupTitle_2 = Instance.new("TextLabel"),
		PopupTitle_3 = Instance.new("TextLabel"),
		RedSeparator = Instance.new("Frame"),
		MainWindow_UICorner = Instance.new("UICorner"),
		PopupTitle_4 = Instance.new("TextLabel"),
		KeySystem_AppLogo = Instance.new("ImageLabel"),
		UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint"),
		PopupTitle_5 = Instance.new("TextLabel"),
		PopupTitle_6 = Instance.new("TextLabel"),
		Logo = Instance.new("ImageLabel"),
		BanScreen_CopyLinkButton = Instance.new("ImageButton"),
		UIGradient = Instance.new("UIGradient"),
		UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint"),
		BanServerInvite = Instance.new("TextLabel"),
		PopupTitle_7 = Instance.new("TextLabel"),
		BanScreen_ExitButton = Instance.new("TextButton"),
		UICorner = Instance.new("UICorner"),
		UIPadding_2 = Instance.new("UIPadding"),
		HWID = Instance.new("TextLabel"),
		HWID_copy = Instance.new("ImageButton"),
		BanScreen_Unban = Instance.new("TextButton"),
	}

	-- Gui custom functions:

	local loadImage = nil
	local function randString(len)
		local chars = {}
		for i = 1, len or math.random(16, 32) do
			chars[i] = string.char(math.random(33, 230))
		end
		return table.concat(chars)
	end

	-- ================================================== 
	--					LIBRARIES HERE
	-- ==================================================

	local function duplicate(obj)
		obj = obj:Clone()
		obj:ClearAllChildren()

		return obj
	end

	loadImage = function(robloxUrl, customUrl)
		--if not isStudio and customUrl then
		--	local splitted = customUrl:split("/")
		--	local imageName = splitted[#splitted]

		--	return storage.saveAssetFromUrl(storage.data.types.Gui, imageName, customUrl, true)
		--end

		return robloxUrl
	end

	-- Properties:

	BanCheck.BanCheck.Name = randString()
	BanCheck.BanCheck.IgnoreGuiInset = true
	BanCheck.BanCheck.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BanCheck.BanCheck.ResetOnSpawn = false

	BanCheck.BanScreen.Name = randString()
	BanCheck.BanScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.BanScreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.BanScreen.BorderSizePixel = 0
	BanCheck.BanScreen.Size = UDim2.new(1, 0, 1, 0)

	BanCheck.UIPadding.Name = randString()
	BanCheck.UIPadding.PaddingBottom = UDim.new(0.1, 0)
	BanCheck.UIPadding.PaddingLeft = UDim.new(0.05, 0)
	BanCheck.UIPadding.PaddingRight = UDim.new(0.05, 0)
	BanCheck.UIPadding.PaddingTop = UDim.new(0.1, 0)

	BanCheck.PopupTitle.Name = randString()
	BanCheck.PopupTitle.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.PopupTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle.BackgroundTransparency = 1
	BanCheck.PopupTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle.BorderSizePixel = 0
	BanCheck.PopupTitle.Position = UDim2.new(0.503, 0, 0.266, 0)
	BanCheck.PopupTitle.Size = UDim2.new(0.8, 0, 0.107, 0)
	BanCheck.PopupTitle.ZIndex = 5
	BanCheck.PopupTitle.Font = Enum.Font.Unknown
	BanCheck.PopupTitle.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	BanCheck.PopupTitle.Text = "YOU'VE BEEN BANNED"
	BanCheck.PopupTitle.TextColor3 = Color3.fromRGB(226, 0, 0)
	BanCheck.PopupTitle.TextScaled = true
	BanCheck.PopupTitle.TextSize = 14
	BanCheck.PopupTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle.TextWrapped = true

	BanCheck.PopupTitle_2.Name = randString()
	BanCheck.PopupTitle_2.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.PopupTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_2.BackgroundTransparency = 1
	BanCheck.PopupTitle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle_2.BorderSizePixel = 0
	BanCheck.PopupTitle_2.Position = UDim2.new(0.5, 0, 0.433, 0)
	BanCheck.PopupTitle_2.Size = UDim2.new(0.55, 0, 0.126, 0)
	BanCheck.PopupTitle_2.ZIndex = 5
	BanCheck.PopupTitle_2.Font = Enum.Font.Unknown
	BanCheck.PopupTitle_2.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	BanCheck.PopupTitle_2.Text = "Your device has been banned from all SPDM Team's softwares for rule violation. For support, visit:"
	BanCheck.PopupTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_2.TextScaled = true
	BanCheck.PopupTitle_2.TextSize = 14
	BanCheck.PopupTitle_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_2.TextTransparency = 0.1
	BanCheck.PopupTitle_2.TextWrapped = true
	BanCheck.PopupTitle_2.TextYAlignment = Enum.TextYAlignment.Top

	BanCheck.PopupTitle_3.Name = randString()
	BanCheck.PopupTitle_3.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.PopupTitle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_3.BackgroundTransparency = 1
	BanCheck.PopupTitle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle_3.BorderSizePixel = 0
	BanCheck.PopupTitle_3.Position = UDim2.new(0.181, 0, 0.031, 0)
	BanCheck.PopupTitle_3.Size = UDim2.new(0.215, 0, 0.078, 0)
	BanCheck.PopupTitle_3.ZIndex = 5
	BanCheck.PopupTitle_3.Font = Enum.Font.Unknown
	BanCheck.PopupTitle_3.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	BanCheck.PopupTitle_3.Text = "SPDM Team"
	BanCheck.PopupTitle_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_3.TextScaled = true
	BanCheck.PopupTitle_3.TextSize = 14
	BanCheck.PopupTitle_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_3.TextWrapped = true
	BanCheck.PopupTitle_3.TextXAlignment = Enum.TextXAlignment.Left

	BanCheck.RedSeparator.Name = randString()
	BanCheck.RedSeparator.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.RedSeparator.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	BanCheck.RedSeparator.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.RedSeparator.BorderSizePixel = 0
	BanCheck.RedSeparator.Position = UDim2.new(0.5, 0, 0.405, 0)
	BanCheck.RedSeparator.Size = UDim2.new(0.075, 0, 0.015, 0)
	BanCheck.RedSeparator.ZIndex = 5

	BanCheck.MainWindow_UICorner.CornerRadius = UDim.new(1, 0)
	BanCheck.MainWindow_UICorner.Name = randString()

	BanCheck.PopupTitle_4.Name = randString()
	BanCheck.PopupTitle_4.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.PopupTitle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_4.BackgroundTransparency = 1
	BanCheck.PopupTitle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle_4.BorderSizePixel = 0
	BanCheck.PopupTitle_4.Position = UDim2.new(0.138, 0, -0.007, 0)
	BanCheck.PopupTitle_4.Size = UDim2.new(0.129, 0, 0.048, 0)
	BanCheck.PopupTitle_4.ZIndex = 5
	BanCheck.PopupTitle_4.Font = Enum.Font.Unknown
	BanCheck.PopupTitle_4.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	BanCheck.PopupTitle_4.Text = "Powered by:"
	BanCheck.PopupTitle_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_4.TextScaled = true
	BanCheck.PopupTitle_4.TextSize = 14
	BanCheck.PopupTitle_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_4.TextTransparency = 0.2
	BanCheck.PopupTitle_4.TextWrapped = true
	BanCheck.PopupTitle_4.TextXAlignment = Enum.TextXAlignment.Left

	BanCheck.KeySystem_AppLogo.Name = randString()
	BanCheck.KeySystem_AppLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.KeySystem_AppLogo.BackgroundTransparency = 1
	BanCheck.KeySystem_AppLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.KeySystem_AppLogo.BorderSizePixel = 0
	BanCheck.KeySystem_AppLogo.Position = UDim2.new(0.932, 0, -0.008, 0)
	BanCheck.KeySystem_AppLogo.Size = UDim2.new(0.07, 0, 0.165, 0)
	BanCheck.KeySystem_AppLogo.ZIndex = 5
	BanCheck.KeySystem_AppLogo.Image = loadImage("rbxassetid://14926240421", "")
	BanCheck.KeySystem_AppLogo.ScaleType = Enum.ScaleType.Fit

	BanCheck.UIAspectRatioConstraint.Name = randString()

	BanCheck.PopupTitle_5.Name = randString()
	BanCheck.PopupTitle_5.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.PopupTitle_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_5.BackgroundTransparency = 1
	BanCheck.PopupTitle_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle_5.BorderSizePixel = 0
	BanCheck.PopupTitle_5.Position = UDim2.new(0.863, 0, -0.007, 0)
	BanCheck.PopupTitle_5.Size = UDim2.new(0.129, 0, 0.048, 0)
	BanCheck.PopupTitle_5.ZIndex = 5
	BanCheck.PopupTitle_5.Font = Enum.Font.Unknown
	BanCheck.PopupTitle_5.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	BanCheck.PopupTitle_5.Text = "BAN WARNING"
	BanCheck.PopupTitle_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_5.TextScaled = true
	BanCheck.PopupTitle_5.TextSize = 14
	BanCheck.PopupTitle_5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_5.TextTransparency = 0.2
	BanCheck.PopupTitle_5.TextWrapped = true
	BanCheck.PopupTitle_5.TextXAlignment = Enum.TextXAlignment.Right

	BanCheck.PopupTitle_6.Name = randString()
	BanCheck.PopupTitle_6.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.PopupTitle_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_6.BackgroundTransparency = 1
	BanCheck.PopupTitle_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle_6.BorderSizePixel = 0
	BanCheck.PopupTitle_6.Position = UDim2.new(0.822, 0, 0.031, 0)
	BanCheck.PopupTitle_6.Size = UDim2.new(0.213, 0, 0.078, 0)
	BanCheck.PopupTitle_6.ZIndex = 5
	BanCheck.PopupTitle_6.Font = Enum.Font.Unknown
	BanCheck.PopupTitle_6.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	BanCheck.PopupTitle_6.Text = "Arceus X NEO"
	BanCheck.PopupTitle_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_6.TextScaled = true
	BanCheck.PopupTitle_6.TextSize = 14
	BanCheck.PopupTitle_6.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_6.TextWrapped = true
	BanCheck.PopupTitle_6.TextXAlignment = Enum.TextXAlignment.Right

	BanCheck.Logo.Name = randString()
	BanCheck.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.Logo.BackgroundTransparency = 1
	BanCheck.Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.Logo.BorderSizePixel = 0
	BanCheck.Logo.Position = UDim2.new(0, 0, 0, 0)
	BanCheck.Logo.Size = UDim2.new(0.07, 0, 0.165, 0)
	BanCheck.Logo.ZIndex = 5
	BanCheck.Logo.Image = loadImage("rbxassetid://14915932328", "")

	BanCheck.BanScreen_CopyLinkButton.Name = randString()
	BanCheck.BanScreen_CopyLinkButton.AnchorPoint = Vector2.new(1, 0)
	BanCheck.BanScreen_CopyLinkButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.BanScreen_CopyLinkButton.BackgroundTransparency = 1
	BanCheck.BanScreen_CopyLinkButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.BanScreen_CopyLinkButton.BorderSizePixel = 0
	BanCheck.BanScreen_CopyLinkButton.LayoutOrder = 2
	BanCheck.BanScreen_CopyLinkButton.Position = UDim2.new(0.805, 0, 0.535, 0)
	BanCheck.BanScreen_CopyLinkButton.Size = UDim2.new(0.056, 0, 0.111, 0)
	BanCheck.BanScreen_CopyLinkButton.ZIndex = 5
	BanCheck.BanScreen_CopyLinkButton.Image = loadImage("rbxassetid://15055157703", "")
	BanCheck.BanScreen_CopyLinkButton.ImageColor3 = Color3.fromRGB(0, 153, 255)

	BanCheck.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(36, 167, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 153, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 173, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	BanCheck.UIGradient.Name = randString()

	BanCheck.UIAspectRatioConstraint_3.Name = randString()
	BanCheck.UIAspectRatioConstraint_3.DominantAxis = Enum.DominantAxis.Height

	BanCheck.BanServerInvite.Name = randString()
	BanCheck.BanServerInvite.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.BanServerInvite.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.BanServerInvite.BackgroundTransparency = 1
	BanCheck.BanServerInvite.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.BanServerInvite.BorderSizePixel = 0
	BanCheck.BanServerInvite.Position = UDim2.new(0.499, 0, 0.559, 0)
	BanCheck.BanServerInvite.Size = UDim2.new(0.527, 0, 0.062, 0)
	BanCheck.BanServerInvite.ZIndex = 5
	BanCheck.BanServerInvite.Font = Enum.Font.Unknown
	BanCheck.BanServerInvite.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
	BanCheck.BanServerInvite.Text = "https://discord.com/invite/arceus"
	BanCheck.BanServerInvite.TextColor3 = Color3.fromRGB(0, 153, 255)
	BanCheck.BanServerInvite.TextScaled = true
	BanCheck.BanServerInvite.TextSize = 14
	BanCheck.BanServerInvite.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.BanServerInvite.TextWrapped = true
	BanCheck.BanServerInvite.TextYAlignment = Enum.TextYAlignment.Top

	BanCheck.PopupTitle_7.Name = randString()
	BanCheck.PopupTitle_7.AnchorPoint = Vector2.new(0.5, 1)
	BanCheck.PopupTitle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_7.BackgroundTransparency = 1
	BanCheck.PopupTitle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.PopupTitle_7.BorderSizePixel = 0
	BanCheck.PopupTitle_7.Position = UDim2.new(0.5, 0, 0.993, 0)
	BanCheck.PopupTitle_7.Size = UDim2.new(0.1, 0, 0.05, 0)
	BanCheck.PopupTitle_7.Font = Enum.Font.Unknown
	BanCheck.PopupTitle_7.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	BanCheck.PopupTitle_7.Text = "or"
	BanCheck.PopupTitle_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_7.TextScaled = true
	BanCheck.PopupTitle_7.TextSize = 14
	BanCheck.PopupTitle_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.PopupTitle_7.TextWrapped = true

	BanCheck.BanScreen_ExitButton.Name = randString()
	BanCheck.BanScreen_ExitButton.AnchorPoint = Vector2.new(1, 1)
	BanCheck.BanScreen_ExitButton.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	BanCheck.BanScreen_ExitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.BanScreen_ExitButton.BorderSizePixel = 0
	BanCheck.BanScreen_ExitButton.Position = UDim2.new(0.675, 0, 0.993, 0)
	BanCheck.BanScreen_ExitButton.Size = UDim2.new(0.124, 0, 0.057, 0)
	BanCheck.BanScreen_ExitButton.ZIndex = 3
	BanCheck.BanScreen_ExitButton.Font = Enum.Font.Unknown
	BanCheck.BanScreen_ExitButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	BanCheck.BanScreen_ExitButton.Text = "Join Roblox"
	BanCheck.BanScreen_ExitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.BanScreen_ExitButton.TextScaled = true
	BanCheck.BanScreen_ExitButton.TextSize = 14
	BanCheck.BanScreen_ExitButton.TextWrapped = true

	BanCheck.UICorner.CornerRadius = UDim.new(0.25, 0)
	BanCheck.UICorner.Name = randString()

	BanCheck.UIPadding_2.Name = randString()
	BanCheck.UIPadding_2.PaddingBottom = UDim.new(0.2, 0)
	BanCheck.UIPadding_2.PaddingLeft = UDim.new(0.075, 0)
	BanCheck.UIPadding_2.PaddingRight = UDim.new(0.075, 0)
	BanCheck.UIPadding_2.PaddingTop = UDim.new(0.2, 0)

	BanCheck.HWID.Name = randString()
	BanCheck.HWID.AnchorPoint = Vector2.new(0.5, 0)
	BanCheck.HWID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.HWID.BackgroundTransparency = 1
	BanCheck.HWID.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.HWID.BorderSizePixel = 0
	BanCheck.HWID.Position = UDim2.new(0.499, 0, 0.775, 0)
	BanCheck.HWID.Size = UDim2.new(0.527, 0, 0.062, 0)
	BanCheck.HWID.ZIndex = 5
	BanCheck.HWID.Font = Enum.Font.Unknown
	BanCheck.HWID.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
	BanCheck.HWID.Text = "HWID"
	BanCheck.HWID.TextColor3 = Color3.fromRGB(255, 0, 0)
	BanCheck.HWID.TextScaled = true
	BanCheck.HWID.TextSize = 14
	BanCheck.HWID.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.HWID.TextWrapped = true
	BanCheck.HWID.TextYAlignment = Enum.TextYAlignment.Top

	BanCheck.HWID_copy.Name = randString()
	BanCheck.HWID_copy.AnchorPoint = Vector2.new(1, 0)
	BanCheck.HWID_copy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.HWID_copy.BackgroundTransparency = 1
	BanCheck.HWID_copy.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.HWID_copy.BorderSizePixel = 0
	BanCheck.HWID_copy.LayoutOrder = 2
	BanCheck.HWID_copy.Position = UDim2.new(0.805, 0, 0.75, 0)
	BanCheck.HWID_copy.Size = UDim2.new(0.056, 0, 0.111, 0)
	BanCheck.HWID_copy.ZIndex = 5
	BanCheck.HWID_copy.Image = loadImage("rbxassetid://15055157703", "")
	BanCheck.HWID_copy.ImageColor3 = Color3.fromRGB(255, 0, 0)

	BanCheck.BanScreen_Unban.Name = randString()
	BanCheck.BanScreen_Unban.AnchorPoint = Vector2.new(1, 1)
	BanCheck.BanScreen_Unban.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	BanCheck.BanScreen_Unban.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BanCheck.BanScreen_Unban.BorderSizePixel = 0
	BanCheck.BanScreen_Unban.Position = UDim2.new(0.45, 0, 0.993, 0)
	BanCheck.BanScreen_Unban.Size = UDim2.new(0.124, 0, 0.057, 0)
	BanCheck.BanScreen_Unban.ZIndex = 3
	BanCheck.BanScreen_Unban.Font = Enum.Font.Unknown
	BanCheck.BanScreen_Unban.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	BanCheck.BanScreen_Unban.Text = "Buy Unban"
	BanCheck.BanScreen_Unban.TextColor3 = Color3.fromRGB(255, 255, 255)
	BanCheck.BanScreen_Unban.TextScaled = true
	BanCheck.BanScreen_Unban.TextSize = 14
	BanCheck.BanScreen_Unban.TextWrapped = true

	BanCheck.UIAspectRatioConstraint_2 = duplicate(BanCheck.UIAspectRatioConstraint)
	BanCheck.UIAspectRatioConstraint_2.Name = randString()
	BanCheck.UIAspectRatioConstraint_2.Parent = BanCheck.Logo

	BanCheck.UIGradient_2 = duplicate(BanCheck.UIGradient)
	BanCheck.UIGradient_2.Name = randString()
	BanCheck.UIGradient_2.Parent = BanCheck.HWID_copy

	BanCheck.UIAspectRatioConstraint_4 = duplicate(BanCheck.UIAspectRatioConstraint_3)
	BanCheck.UIAspectRatioConstraint_4.Name = randString()
	BanCheck.UIAspectRatioConstraint_4.Parent = BanCheck.HWID_copy

	BanCheck.UICorner_2 = duplicate(BanCheck.UICorner)
	BanCheck.UICorner_2.Name = randString()
	BanCheck.UICorner_2.Parent = BanCheck.BanScreen_Unban

	BanCheck.UIPadding_3 = duplicate(BanCheck.UIPadding_2)
	BanCheck.UIPadding_3.Name = randString()
	BanCheck.UIPadding_3.Parent = BanCheck.BanScreen_Unban

	BanCheck.BanCheck.Parent = gethui() or game.CoreGui
	BanCheck.BanScreen.Parent = BanCheck.BanCheck
	BanCheck.UIPadding.Parent = BanCheck.BanScreen
	BanCheck.PopupTitle.Parent = BanCheck.BanScreen
	BanCheck.PopupTitle_2.Parent = BanCheck.BanScreen
	BanCheck.PopupTitle_3.Parent = BanCheck.BanScreen
	BanCheck.RedSeparator.Parent = BanCheck.BanScreen
	BanCheck.MainWindow_UICorner.Parent = BanCheck.RedSeparator
	BanCheck.PopupTitle_4.Parent = BanCheck.BanScreen
	BanCheck.KeySystem_AppLogo.Parent = BanCheck.BanScreen
	BanCheck.UIAspectRatioConstraint.Parent = BanCheck.KeySystem_AppLogo
	BanCheck.PopupTitle_5.Parent = BanCheck.BanScreen
	BanCheck.PopupTitle_6.Parent = BanCheck.BanScreen
	BanCheck.Logo.Parent = BanCheck.BanScreen
	BanCheck.BanScreen_CopyLinkButton.Parent = BanCheck.BanScreen
	BanCheck.UIGradient.Parent = BanCheck.BanScreen_CopyLinkButton
	BanCheck.UIAspectRatioConstraint_3.Parent = BanCheck.BanScreen_CopyLinkButton
	BanCheck.BanServerInvite.Parent = BanCheck.BanScreen
	BanCheck.PopupTitle_7.Parent = BanCheck.BanScreen
	BanCheck.BanScreen_ExitButton.Parent = BanCheck.BanScreen
	BanCheck.UICorner.Parent = BanCheck.BanScreen_ExitButton
	BanCheck.UIPadding_2.Parent = BanCheck.BanScreen_ExitButton
	BanCheck.HWID.Parent = BanCheck.BanScreen
	BanCheck.HWID_copy.Parent = BanCheck.BanScreen
	BanCheck.BanScreen_Unban.Parent = BanCheck.BanScreen

	BanCheck.BanScreen_ExitButton.MouseButton1Click:Connect(function()
		BanCheck.BanCheck:Destroy()
	end)
	
	BanCheck.BanScreen_Unban.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)("https://spdmteam.com/api/create-unban-payment?hwid=" .. gethwid())
		BanCheck.BanScreen_Unban.Text = "Link Copied"
		task.wait(2)
		BanCheck.BanScreen_Unban.Text = "Buy Unban"
	end)

	BanCheck.BanScreen_CopyLinkButton.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)("https://discord.com/invite/arceus")
	end)

	BanCheck.HWID.Text = gethwid()
	BanCheck.HWID_copy.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)(gethwid())
	end)

	return
end

executecode(game:HttpGet("https://raw.githubusercontent.com/SkieAdmin/EvonAndroidGUI/main/EvonRBLX.lua"))
