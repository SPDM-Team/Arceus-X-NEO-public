--[[
		VORNEX MOBILE
		- ex wave mobile
	
	- Designed by blackmomo & cozyhq
	- Framework & Codebase by riky47
]]

-- Include framework

loadstring(game:HttpGet(`https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/refs/heads/main/init.lua`))()
local framework = loadstring(game:HttpGet("https://raw.githubusercontent.com/Riky47/Xploit-Framework/refs/heads/main/index.lua"))()
--local framework = require("../Wave/WaveFramework")

local ARCEUS_FOLDERS = {
	CONFIGS = framework.storage:CreateDirectory("configs", "Configs"),
	--WORKSPACE = framework.storage:CreateDirectory("workspace", "Workspace"),
	--SCRIPT_HUB = framework.storage:CreateDirectory("scripthub", "Script Hub"),
	--AUTOEXECUTE = framework.storage:CreateDirectory("autoexecute", "Autoexec")
}

local WAVE_CONFIGS = {
	ACTIVE_TAB_GRAY = Color3.fromHex("2F3544"),
	ELECTRIC_BLUE = Color3.fromRGB(59, 59, 77), -- Red now ;)
	LIGHT_BLACK = Color3.fromHex("171717"), -- Color3.fromRGB(40, 45, 57),
	TOP_BAR_GRAY = Color3.fromHex("C4CBDA"),
	LIGHT_GRAY = Color3.fromRGB(59, 59, 77), -- Color3.fromRGB(59, 57, 74),
	DARK_BLACK = Color3.fromHex("0d0d0d"), --Color3.fromRGB(39, 42, 52),
	WHITE = Color3.fromRGB(255, 255, 255),
	BLACK = Color3.fromHex("1b1d24"),

	FONT = Font.new("rbxasset://fonts/families/Arimo.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
	FONT_CS_TITLE = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal),
	FONT_CS_SUBTITLE = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	FONT_CS_SCRIPT_TITLE = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
	FONT_CS_SCRIPT_SUBTITLE = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
	FONT_CS_SCRIPTBLOX = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic),
	MAXIMISED = UDim2.fromScale(.85, .85),
	MINIMIZED = UDim2.fromScale(.6, .6),

	EXPLOIT_IDENTITY = "Vornex",
	UI_VERSION = "1.0.0",

	FILES_KEY = "WAVE_yZG0tfdmWkUL5tfBOwhqSDvEX95sqZ2JogkCUq3CuIBlSLlw94SMLbUJDIJp1DtU",
	SETTINGS_FILE = "Settings.wave",
	VERSION_FILE = ".version.wave",
	TABS_FILE = "Tabs.json",

	SETTINGS = {
		ConfirmationPopups = true,
		ToastPopups = true,

		ScriptBlox = {
			verified = false,
			paid = false,
			free = false
		}
	}
}

-- Configure
framework.protected:ProtectTable(ARCEUS_FOLDERS)
framework.protected:ProtectTable(WAVE_CONFIGS)

framework.settings:SetDirectory(ARCEUS_FOLDERS.CONFIGS)
framework.settings:SetFileName(WAVE_CONFIGS.SETTINGS_FILE)
framework.settings:SetFileKey(WAVE_CONFIGS.FILES_KEY)
framework.settings:SetDefault(WAVE_CONFIGS.SETTINGS)


-- Globals
local tweeninfo = framework.protected:GCProtect(function(delay: number, duration: number, style: Enum.EasingStyle)
	return TweenInfo.new(duration or .25, style or Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, delay or 0)
end)

-- Create dependencies
do -- exploit

	local exploit = {}
	local is_ios = (framework.env.Vornex and framework.env.Vornex.is_ios or function()
		return (not framework.protected:IsStudio()) and framework.protected:GetService("UserInputService"):GetPlatform() == Enum.Platform.IOS or false
	end)()

	local is_vng = (framework.env.Vornex and framework.env.Vornex.is_vng or function()
		return false
	end)()	

	local hwid = (framework.env.gethwid or framework.protected:GCProtect(function()
		return framework.protected:GetService("AnalyticsService"):GetClientId()
	end))()

	function exploit:GetHwid()
		return hwid
	end

	function exploit:IsIos()
		return is_ios
	end

	function exploit:IsVng()
		return is_vng
	end

	function exploit:InitUI()
		local ui = framework.interface.new("main")
		ui.instance.ScreenInsets = Enum.ScreenInsets.None
		ui.instance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		local border, sideButtons = ui.instance.AbsoluteSize.Y * 2.05 /400, framework.protected:GCProtect({})
		local textSize = border * 5.5

		local lastPos, maximised, allTabs = nil, false, framework.protected:GCProtect({})
		local fetchScripts, slide, setCategory, lastFetch = nil, nil, nil, ""
		local main, lastPage = nil, "Executor"

		local showPage = framework.protected:GCProtect(function(id: string)
			local pages = ui:Get("PagesLayout").instance
			pages:JumpTo(ui:Get(id .. "Page").instance)
			lastPage = id

			local btn, ind = ui:Get(id .. "Btn").instance, ui:Get("Indicator")
			ind:Tween(tweeninfo(), {
				Position = UDim2.new(0, 0, btn.Position.Y.Scale, btn.Position.Y.Offset +btn.AbsoluteSize.Y/2 -ind.instance.AbsoluteSize.Y/2) --UDim2.fromScale(0, .Position.Y.Scale)
			})

			for _, btn in ipairs(sideButtons) do
				local lbl = btn.instance:FindFirstChildWhichIsA("ImageLabel")
				lbl.ImageTransparency = btn.id:find(id) and 0 or .65
			end
		end)

		local dynamicAdjust = framework.protected:GCProtect(function()
			local obj1, obj2, obj3 = ui:Get("SideBar").instance, ui:Get("TopBar").instance, ui:Get("PagesContainer").instance
			obj1.Position = UDim2.new(0, 0, obj2.Size.Y.Scale, border -1)
			obj1.Size = UDim2.new(.025, obj2.AbsoluteSize.Y, 1 -obj2.Size.Y.Scale, border +1)
			obj3.Position = UDim2.fromOffset(obj1.AbsoluteSize.X +border, obj2.AbsoluteSize.Y +border)
			obj3.Size = UDim2.new(1, -obj1.AbsoluteSize.X -border, 1, -obj2.AbsoluteSize.Y -border)

			obj1, obj2 = ui:Get("MaximizeBtn").instance, ui:Get("CloseBtn").instance
			obj1.Position = UDim2.new(obj2.Position.X.Scale -.015, -obj2.AbsoluteSize.Y, .5, 0) 
			obj1:FindFirstChildWhichIsA("ImageLabel").Image = maximised and framework.protected:ProtectAsset("rbxassetid://117184723968695") or framework.protected:ProtectAsset("rbxassetid://95901214470479")

			obj1, obj2 = ui:Get("CloudBtn").instance, ui:Get("ExecutorBtn").instance
			obj1.Position = UDim2.new(.515, 0, obj2.Position.Y.Scale +.01, obj2.AbsoluteSize.Y)

			obj1, obj2, obj3 = ui:Get("CodeScrollX").instance, ui:Get("CodeScrollY").instance, ui:Get("CodeLines").instance
			obj1.Size = UDim2.fromOffset(obj2.AbsoluteSize.X -obj3.AbsoluteSize.X -border *2, obj2.AbsoluteSize.Y)

			for tab, selected in pairs(allTabs) do
				tab.instance.Size = UDim2.new(0 , obj1.AbsoluteSize.X/(selected and 4 or 6), 1, 0) 
			end

			showPage(lastPage)
		end)

		local popups = {}
		popups.Confirm = framework.protected:GCProtect(function(text: string, callback: (boolean) -> (), confirmColor: Color3)
			if not framework.settings:GetSetting("ConfirmationPopups") then
				return callback(true)
			end

			ui:AddComponent("ConfirmPopup", {
				ConfirmColor = confirmColor,
				Callback = callback,
				Text = text
			})
		end)

		popups.Toast = framework.protected:GCProtect(function(text: string)
			if not framework.settings:GetSetting("ToastPopups") then
				return
			end

			ui:AddComponent("ToastPopup", {
				Text = text
			})
		end)

		framework.protected:ProtectTable(popups)

		do -- Tabs
			local connectTab = framework.protected:GCProtect(function(tab: {any}, selected: string)
				allTabs[tab] = selected
				ui.instance.AncestryChanged:Connect(framework.protected:GCProtect(function(_, parent: Instance)
					if parent == nil then
						allTabs[tab] = nil
					end
				end))
			end)

			local comp = ui:CreateComponent("SelectedTab")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				local tab = ui:AddInstance("Frame", {
					Size = UDim2.new(0, ui:Get("CodeScrollX").instance.AbsoluteSize.X/4, 1, 0),
					BackgroundColor3 = WAVE_CONFIGS.ACTIVE_TAB_GRAY,
					LayoutOrder = props.LayoutOrder or 0,
					Visible = props.Visible and true or false

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)

				}), ui:AddInstance("UIStroke", {
					Color = WAVE_CONFIGS.LIGHT_GRAY,
					Thickness = border/2

				}), ui:AddInstance("TextBox", {
					Text = props.Text or ("Script " .. (props.LayoutOrder or "")),
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.05, .5),
					AnchorPoint = Vector2.new(0, .5),
					TextColor3 = WAVE_CONFIGS.WHITE,
					Size = UDim2.fromScale(.75, .6),
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					ClearTextOnFocus = false,
					TextScaled = true,

					Focused = framework.protected:GCProtect(function()
						lastPos = main.instance.Position
						main.instance.Position = UDim2.fromScale(.5, .3)
					end),

					FocusLost = framework.protected:GCProtect(function()
						main.instance.Position = lastPos
					end)

				}), ui:AddInstance("ImageButton", {
					Position = UDim2.fromScale(.975, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.20, .9),
					BackgroundTransparency = 1,

					MouseButton1Click = props.OnClose

				}, ui:AddInstance("ImageLabel", {
					Image = "rbxassetid://15102967594",
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.fromScale(.55, .55),
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1

				})))

				connectTab(tab, true)
				return tab
			end))

			comp = ui:CreateComponent("ScriptTab")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				local tab = ui:AddInstance("ImageButton", {
					Size = UDim2.new(0, ui:Get("CodeScrollX").instance.AbsoluteSize.X/6, 1, 0),
					BackgroundColor3 = WAVE_CONFIGS.LIGHT_GRAY,
					LayoutOrder = props.LayoutOrder or 0,
					BackgroundTransparency = .85

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)

				}), ui:AddInstance("UIStroke", {
					Color = WAVE_CONFIGS.LIGHT_GRAY,
					Thickness = border/2

				}), ui:AddInstance("TextLabel", {
					Text = props.Text or ("Script " .. (props.LayoutOrder or "")),
					Position = UDim2.fromScale(.05, .5),
					AnchorPoint = Vector2.new(0, .5),
					TextColor3 = WAVE_CONFIGS.WHITE,
					Size = UDim2.fromScale(.9, .6),
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					TextTransparency = .35,
					TextScaled = true

				}))

				connectTab(tab, false)
				return tab
			end))
		end

		do
			local comp = ui:CreateComponent("SideBtn")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				return ui:AddInstance("ImageButton", {
					Id = props.Id,

					MouseButton1Click = props.OnClick,
					Position = props.Position or UDim2.fromScale(.515, .01),
					ImageColor3 = Color3.fromRGB(131, 139, 157),
					AnchorPoint = Vector2.new(.5, 0),
					Size = UDim2.fromScale(.8, .8),
					BackgroundTransparency = 1

				}, ui:AddInstance("UIAspectRatioConstraint"), ui:AddInstance("ImageLabel", {
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.fromScale(.5, .5),
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1,
					Image = props.Image

				}))
			end))
		end

		do
			local comp = ui:CreateComponent("UpperBtn")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				return ui:AddInstance("ImageButton", {
					Id = props.Id,

					MouseButton1Click = props.OnClick,
					Position = props.Position or UDim2.fromScale(.985, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.9, .9),
					BackgroundTransparency = 1,
					ZIndex = props.ZIndex

				}, ui:AddInstance("UIAspectRatioConstraint", {
					DominantAxis = Enum.DominantAxis.Height

				}), ui:AddInstance("ImageLabel", {
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.fromScale(.35, .35),
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1,
					ZIndex = props.ZIndex,
					Image = props.Image

				}))
			end))
		end

		do
			local comp = ui:CreateComponent("EditorBtn")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				return ui:AddInstance("ImageButton", {
					MouseButton1Click = props.OnClick,
					Size = UDim2.fromScale(.225, .125),
					BackgroundTransparency = 1,
					Position = props.Position

				}, ui:AddInstance("ImageLabel", {
					Position = UDim2.fromScale(0.05, .5),
					AnchorPoint = Vector2.new(0, .5),
					Size = UDim2.fromScale(.5, .5),
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1,
					Image = props.Image

				}, ui:AddInstance("UIAspectRatioConstraint", {
					DominantAxis = Enum.DominantAxis.Height

				})), ui:AddInstance("TextLabel", {
					Id = props.TextId,

					TextYAlignment = Enum.TextYAlignment.Bottom,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = Color3.fromRGB(139, 139, 139),
					Position = UDim2.fromScale(1, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.75, .5),
					Text = props.Text or "Unnamed",
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					TextScaled = true
				}))
			end))
		end

		do -- Popup
			local popup, area, btn, callback = nil, nil, nil, framework.signals.newEvent()
			local tween = tweeninfo()

			local mainState = 0
			local open = framework.protected:GCProtect(function()
				area.instance.Position = area.closedPosition
				popup.instance.Visible = true

				popup:Tween(tween, {
					BackgroundTransparency = 0
				})

				area:Tween(tween, {
					Position = area.openPosition,
					GroupTransparency = 0
				})

				mainState = main.instance.GroupTransparency
				main:Tween(tween, {
					GroupTransparency = .85
				})
			end)

			local close = framework.protected:GCProtect(function(status: boolean)
				popup:Tween(tween, {
					BackgroundTransparency = 1,
					Visible = false
				})

				area:Tween(tween, {
					Position = area.closedPosition,
					GroupTransparency = 1
				})

				main:Tween(tween, {
					GroupTransparency = mainState
				})

				callback:Fire(status and true or false)
			end)

			local comp = ui:CreateComponent("ConfirmPopup")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				callback:Once(props.Callback)

				if popup then
					area.instance:FindFirstChildWhichIsA("TextLabel").Text = props.Text or "Confirm?"
					btn.instance.BackgroundColor3 = props.ConfirmColor or WAVE_CONFIGS.ELECTRIC_BLUE
					open()

					return popup
				end

				btn = ui:AddInstance("ImageButton", {
					BackgroundColor3 = props.ConfirmColor or WAVE_CONFIGS.ELECTRIC_BLUE,
					Position = UDim2.fromScale(.975, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.75, .75),
					ZIndex = 2,

					MouseButton1Click = framework.protected:GCProtect(function()
						close(true)
					end)

				}, ui:AddInstance("UIAspectRatioConstraint", {
					DominantAxis = Enum.DominantAxis.Height

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				}), ui:AddInstance("ImageLabel", {
					Image = "rbxassetid://77384548654429",
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.fromScale(.5, .5),
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1,
					ZIndex = 2

				}))

				area = ui:AddInstance("CanvasGroup", {
					BackgroundColor3 = WAVE_CONFIGS.DARK_BLACK,
					Position = UDim2.fromScale(.5, .85),
					AnchorPoint = Vector2.new(.5, 1),
					Size = UDim2.fromScale(.5, .1),
					ZIndex = 2

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				}), ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.05, .5),
					AnchorPoint = Vector2.new(0, .5),
					TextColor3 = WAVE_CONFIGS.WHITE,
					Size = UDim2.fromScale(.7, .45),
					Text = props.Text or "Confirm?",
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					ZIndex = 2

				}), ui:AddComponent("UpperBtn", {
					Image = "rbxassetid://128719584488067",
					Position = UDim2.fromScale(.875, .5),
					OnClick = close,
					ZIndex = 2

				}), btn)

				popup = ui:AddInstance("Frame", {
					BackgroundColor3 = Color3.fromRGB(38, 42, 53),
					Size = UDim2.fromScale(1, 1),
					ZIndex = 2

				}, ui:AddInstance("ImageButton", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					MouseButton1Click = close,
					ZIndex = 2

				}, area), ui:AddInstance("UIGradient", {
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, .5, 0),
						NumberSequenceKeypoint.new(1, .125, 0)
					}),

					Rotation = 90
				}))

				area.openPosition = area.instance.Position
				area.closedPosition = UDim2.fromScale(.5, 1.1)

				open()
				return popup
			end))
		end

		do -- Toast
			local toastList, order = nil, 999999

			local comp = ui:CreateComponent("ToastPopup")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				if not toastList then
					toastList = ui:AddInstance("Frame", {
						Position = UDim2.fromScale(0, .1),
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						ZIndex = 0

					}, ui:AddInstance("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, border *2),

					}))

					ui:AddInstance("CanvasGroup", {
						Position = UDim2.fromScale(.5, 0),
						AnchorPoint = Vector2.new(.5, 0),
						Size = UDim2.fromScale(1, .25),
						BackgroundTransparency = 1,
						ZIndex = 0

					}, toastList, ui:AddInstance("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0, 0),
							NumberSequenceKeypoint.new(1, 1, 0)
						}),

						Rotation = 90
					}), ui:AddInstance("UIAspectRatioConstraint", {
						AspectRatio = 4
					}))
				end

				order -= 1		
				local label = ui:AddInstance("TextLabel", {
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.fromScale(.9, .7),
					TextColor3 = WAVE_CONFIGS.WHITE,
					FontFace = WAVE_CONFIGS.FONT,
					Text = props.Text or "Toast",
					BackgroundTransparency = 1,
					TextScaled = true,
					ZIndex = 0
				})

				local toast = ui:AddInstance("Frame", {
					BackgroundColor3 = WAVE_CONFIGS.DARK_BLACK,
					Position = UDim2.fromScale(.5, .05),
					AnchorPoint = Vector2.new(.5, 0),
					Size = UDim2.fromScale(.5, .15),
					LayoutOrder = order

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				}), label):SetParent(toastList)

				task.spawn(function()
					local tween: Tween = tweeninfo(2.5, 1)
					toast:Tween(tween, {
						BackgroundTransparency = 1,
						Visible = false
					})

					tween = label:Tween(tween, {
						TextTransparency = 1
					})

					tween.Completed:Wait()
					toast:Remove()
				end)

				return toast
			end))	
		end

		do -- Scripts
			local comp = ui:CreateComponent("CloudScript")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				return ui:AddInstance("Frame", {
					LayoutOrder = props.LayoutOrder or 0,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Parent = props.Parent

				}, ui:AddInstance("ImageButton", {
					BackgroundColor3 = WAVE_CONFIGS.LIGHT_BLACK,
					MouseButton1Click = props.OnClick,
					Size = UDim2.fromScale(1, 1),
					Image = props.Image

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.1, 0)

				}), ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.5, .8),
					AnchorPoint = Vector2.new(.5, 1),
					TextColor3 = WAVE_CONFIGS.WHITE,
					Size = UDim2.fromScale(.9, .2),
					Text = props.Title or "Script",
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					TextScaled = true

				}, ui:AddInstance("TextLabel", {
					TextColor3 = Color3.fromRGB(175, 175, 175),
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(0, 1),
					Text = props.Game or "Unknown",
					Size = UDim2.fromScale(1, .6),
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					TextScaled = true

				})), ui:AddInstance("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
						ColorSequenceKeypoint.new(1, Color3.fromHex("#404040"))
					}),

					Rotation = 90
				})))
			end))
		end

		do -- Checkboxes
			local comp = ui:CreateComponent("CheckBox")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				return ui:AddInstance("ImageButton", {
					MouseButton1Click = props.OnClick,
					Size = UDim2.fromScale(.125, .4),
					AnchorPoint = Vector2.new(1, .5),
					BackgroundTransparency = 1,
					Position = props.Position

				}, ui:AddInstance("ImageLabel", {
					Id = props.ImageId,

					Position = UDim2.fromScale(-.075, .5),
					AnchorPoint = Vector2.new(0, .5),
					Size = UDim2.fromScale(1, 1),
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1,
					Image = props.Image

				}, ui:AddInstance("UIAspectRatioConstraint", {
					DominantAxis = Enum.DominantAxis.Height

				})), ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(1, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.75, .5),
					TextColor3 = WAVE_CONFIGS.WHITE,
					Text = props.Text or "Checkbox",
					FontFace = WAVE_CONFIGS.FONT,
					BackgroundTransparency = 1,
					TextScaled = true
				}))
			end))
		end

		do -- Dots
			local comp = ui:CreateComponent("DotBtn")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				local frame = ui:AddInstance("Frame", {
					BackgroundColor3 = WAVE_CONFIGS.ELECTRIC_BLUE,
					Position = UDim2.fromScale(.05, .5),
					AnchorPoint = Vector2.new(0, .5),
					Size = UDim2.fromScale(1, .4),
					Visible = props.DotVisible

				}, ui:AddInstance("UIAspectRatioConstraint", {
					DominantAxis = Enum.DominantAxis.Height

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				}))

				local label = ui:AddInstance("TextLabel", {
					Id = props.LabelId,

					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(1, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.75, .8),
					TextColor3 = WAVE_CONFIGS.WHITE,
					Text = props.Text or "Dotbtn",
					FontFace = WAVE_CONFIGS.FONT_CS_SCRIPT_SUBTITLE,
					BackgroundTransparency = 1,
					TextTransparency = .45, 
					TextScaled = true
				})

				local dot = ui:AddInstance("ImageButton", {
					Id = props.Id,

					MouseButton1Click = props.OnClick,
					Size = UDim2.fromScale(.1, .06),
					BackgroundTransparency = 1,
					Position = props.Position

				}, frame, label)

				dot.selected = function(selected: boolean)
					label.instance.TextTransparency = selected and 0 or .45
					frame.instance.Visible = selected
				end

				return dot
			end))
		end

		do -- Toggles
			local comp = ui:CreateComponent("ToggleSetting")
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				local on, off

				on = ui:AddInstance("TextButton", {
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.fromScale(0, .98),
					Size = UDim2.fromScale(.2, .25),
					BackgroundTransparency = 1,
					BackgroundColor3 = WAVE_CONFIGS.ACTIVE_TAB_GRAY,
					Text = "On",
					TextColor3 = WAVE_CONFIGS.TOP_BAR_GRAY,
					TextSize = textSize,

					MouseButton1Click = function()
						framework.settings:SetSetting(props.Setting, true)
					end

				}, ui:AddInstance("UIStroke", {
					Color = WAVE_CONFIGS.LIGHT_GRAY,
					Thickness = 0,-- border,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.1, 0)

				})
				)

				off = ui:AddInstance("TextButton", {
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.fromScale(.3, .98),
					Size = UDim2.fromScale(.2, .25),
					Text = "Off",
					BackgroundColor3 = WAVE_CONFIGS.WHITE,
					BackgroundTransparency = .97,
					TextColor3 = WAVE_CONFIGS.TOP_BAR_GRAY,
					TextSize = textSize,

					MouseButton1Click = function()
						framework.settings:SetSetting(props.Setting, false)
					end

				}, ui:AddInstance("UIStroke", {
					Color = WAVE_CONFIGS.LIGHT_GRAY,
					Thickness = border,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.1, 0)

				}))

				framework.settings:GetSettingChangedSignal(props.Setting):Connect(function(value: boolean)
					if value then
						off.instance.TextTransparency = .5
						on.instance.TextTransparency = 0
					else
						off.instance.TextTransparency = 0
						on.instance.TextTransparency = .5
					end
				end)

				return ui:AddInstance("Frame", {
					BackgroundColor3 = WAVE_CONFIGS.LIGHT_GRAY,
					AnchorPoint = Vector2.new(1, .5),
					LayoutOrder = props.LayoutOrder,
					Size = UDim2.fromScale(1, 5),
					BackgroundTransparency = .65,
					Position = props.Position

				},	ui:AddInstance("UIPadding", {
					PaddingBottom = UDim.new(0, border*3),
					PaddingRight = UDim.new(0, border*3),
					PaddingLeft = UDim.new(0, border*3),
					PaddingTop = UDim.new(0, border*2),

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.1, 0)

				}), ui:AddInstance("UIStroke", {
					Color = WAVE_CONFIGS.LIGHT_GRAY,
					Thickness = border

				}), ui:AddInstance("UIAspectRatioConstraint", {
					AspectRatio = 3,

				}), ui:AddInstance("TextLabel", {
					FontFace = WAVE_CONFIGS.FONT_CS_SCRIPT_SUBTITLE,
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.5, .1),
					AnchorPoint = Vector2.new(.5, 0),
					Size = UDim2.fromScale(.95, .13),
					TextColor3 = WAVE_CONFIGS.WHITE,
					BackgroundTransparency = 1,
					Text = props.Text,
					TextScaled = true,

				}), ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					FontFace = WAVE_CONFIGS.FONT_CS_SUBTITLE,
					TextYAlignment = Enum.TextYAlignment.Top,
					Position = UDim2.fromScale(.5, .25),
					AnchorPoint = Vector2.new(.5, 0),
					Size = UDim2.fromScale(.95, .45),
					TextColor3 = WAVE_CONFIGS.WHITE,
					BackgroundTransparency = 1,
					Text = props.Description,
					TextTransparency = .5,
					TextSize = textSize,
					TextWrapped = true

				}), on, off)
			end))
		end

		local floatingIcon = ui:AddInstance("ImageButton", {
			BackgroundColor3 = WAVE_CONFIGS.LIGHT_BLACK,
			Position = UDim2.fromScale(.9, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(1, .1),
			Visible = false

		}, ui:AddInstance("ImageLabel", {
			Image = "rbxassetid://87213725728785",	
			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.8, .8),
			ScaleType = Enum.ScaleType.Fit,
			BackgroundTransparency = 1

		}), ui:AddInstance("UIAspectRatioConstraint", {
			DominantAxis = Enum.DominantAxis.Height

		}), ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(1, 0)

		})):SetDraggable(true)

		main = ui:AddInstance("CanvasGroup", {
			BackgroundColor3 = WAVE_CONFIGS.DARK_BLACK,
			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = WAVE_CONFIGS.MINIMIZED,
			ClipsDescendants = true,
			Visible = false

		}, ui:AddInstance("UIAspectRatioConstraint", {
			AspectRatio = 2.0932

		}), ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.035, 0)

		}), ui:AddInstance("ImageLabel", { -- Top Bar
			Id = "TopBar",

			Image = "rbxassetid://108374577679628",
			BackgroundColor3 = WAVE_CONFIGS.LIGHT_BLACK,
			BorderColor3 = WAVE_CONFIGS.LIGHT_GRAY,
			Size = UDim2.fromScale(1, .125),
			BorderSizePixel = border,
			ImageTransparency = .97

		}, ui:AddInstance("ImageLabel", {
			Image = "rbxassetid://87213725728785",
			Position = UDim2.fromScale(.029, .525),
			AnchorPoint = Vector2.new(0, .5),
			Size = UDim2.fromScale(.5, .5),
			ScaleType = Enum.ScaleType.Fit,
			BackgroundTransparency = 1,

		}, ui:AddInstance("UIAspectRatioConstraint", {
			DominantAxis = Enum.DominantAxis.Height

		})), ui:AddInstance("TextLabel", {
			Text = framework.utils.strings.format("Vornex - %s", framework.dependencies.exploit:IsIos() and "iOS" or "Android"),
			TextColor3 = WAVE_CONFIGS.TOP_BAR_GRAY,
			Position = UDim2.fromScale(.5, .525),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.35, .35),
			FontFace = WAVE_CONFIGS.FONT,
			BackgroundTransparency = 1,
			TextScaled = true

		}), ui:AddComponent("UpperBtn", {
			Id = "MaximizeBtn",

			Image = "rbxassetid://117184723968695",
			OnClick = framework.protected:GCProtect(function()
				local tween: TweenInfo = tweeninfo()
				maximised = not maximised			
				main:Tween(tween, {
					Size = maximised and WAVE_CONFIGS.MAXIMISED or WAVE_CONFIGS.MINIMIZED,
					Position = UDim2.fromScale(.5, .5)
				})

				for i=0, tween.Time, .01 do
					task.wait(.01)
					dynamicAdjust()
				end
			end)

		}), ui:AddComponent("UpperBtn", {
			Id = "CloseBtn",

			Image = "rbxassetid://114533425134614",
			ImageColor3 = WAVE_CONFIGS.TOP_BAR_GRAY,
			OnClick = framework.protected:GCProtect(function()
				main.close()
			end)

		})), ui:AddInstance("Frame", { -- Side Bar
			Id = "SideBar",

			BackgroundColor3 = WAVE_CONFIGS.LIGHT_BLACK,
			BorderColor3 = WAVE_CONFIGS.LIGHT_GRAY,
			BorderSizePixel = border,
			ZIndex = 0

		}, ui:AddComponent("SideBtn", {
			Id = "ExecutorBtn",

			Image = "rbxassetid://85610705737740",
			OnClick = framework.protected:GCProtect(function()
				showPage("Executor")
			end)

		}), ui:AddComponent("SideBtn", {
			Id = "CloudBtn",

			Image = "rbxassetid://135906354399656",
			OnClick = framework.protected:GCProtect(function()
				showPage("Cloud")
			end)

		}), ui:AddComponent("SideBtn", {
			Id = "ConfigsBtn",

			Image = "rbxassetid://102545631972477",
			Position = UDim2.fromScale(.5, .8),
			OnClick = framework.protected:GCProtect(function()
				showPage("Configs")
			end)

		}), ui:AddInstance("Frame", {
			Id = "Indicator",

			Size = UDim2.new(0, border, .05, 0),
			BackgroundColor3 = WAVE_CONFIGS.TOP_BAR_GRAY

		}, ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(1, 50)

		}))), ui:AddInstance("Frame", {
			Id = "PagesContainer",

			BackgroundTransparency = 1,
			ClipsDescendants = true

		}, ui:AddInstance("UIPageLayout", {
			Id = "PagesLayout",

			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			EasingDirection = Enum.EasingDirection.Out,
			SortOrder = Enum.SortOrder.LayoutOrder,
			EasingStyle = Enum.EasingStyle.Linear,
			ScrollWheelInputEnabled = false,
			GamepadInputEnabled = false,
			TouchInputEnabled = false,
			TweenTime = .25

		}), ui:AddInstance("Frame", {
			Id = "ExecutorPage",

			Position = UDim2.fromScale(.4, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.975, .95),
			BackgroundTransparency = 1

		}, ui:AddInstance("ScrollingFrame", {
			Id = "TabsScrollX",

			ScrollBarImageColor3 = WAVE_CONFIGS.ELECTRIC_BLUE,
			ScrollingDirection = Enum.ScrollingDirection.X,
			AutomaticCanvasSize = Enum.AutomaticSize.X,
			Position = UDim2.fromScale(0.005, 0.013),
			CanvasSize = UDim2.fromScale(0, 0),
			Size = UDim2.fromScale(1, .1),
			ScrollBarThickness = border,
			BackgroundTransparency = 1,
			ClipsDescendants = false

		}, ui:AddInstance("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, border *4)

		})), ui:AddInstance("ScrollingFrame", {
			Id = "CodeScrollY",

			ScrollBarImageColor3 = WAVE_CONFIGS.ELECTRIC_BLUE,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromScale(0.01, .15),
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollBarThickness = border *2,
			Size = UDim2.fromScale(.99, .7),
			BackgroundTransparency = 1

		}, ui:AddInstance("TextLabel", {
			Id = "CodeLines",

			FontFace = Font.new("rbxasset://fonts/families/Monospace.json", Enum.FontWeight.Bold),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Size = UDim2.new(0, 6 *border *2, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextColor3 = WAVE_CONFIGS.WHITE,
			BackgroundTransparency = 1,
			TextTransparency = .45,
			TextSize = textSize,
			Text = ""

		}), ui:AddInstance("ScrollingFrame", {
			Id = "CodeScrollX",

			ScrollBarImageColor3 = WAVE_CONFIGS.ELECTRIC_BLUE,
			ScrollingDirection = Enum.ScrollingDirection.X,
			AutomaticCanvasSize = Enum.AutomaticSize.X,
			Position = UDim2.fromOffset(border *8, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollBarThickness = border *2,
			Size = UDim2.fromScale(1, .7),
			BackgroundTransparency = 1

		}, ui:AddInstance("TextBox", {
			Id = "EditorBox",

			FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Light),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			AutomaticSize = Enum.AutomaticSize.XY,
			TextColor3 = WAVE_CONFIGS.WHITE,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ClearTextOnFocus = false,
			TextSize = textSize,
			MultiLine = true,

			Focused = framework.protected:GCProtect(function()
				lastPos = main.instance.Position
				main.instance.Position = UDim2.fromScale(.5, .175)
			end),

			FocusLost = framework.protected:GCProtect(function()
				main.instance.Position = lastPos
			end)

		}))), ui:AddComponent("EditorBtn", {
			TextId = "ExecuteLbl",

			Image = "rbxassetid://133853382921842",
			Position = UDim2.fromScale(.01, .865),
			Text = "Ex. Clipboard",

			OnClick = framework.protected:GCProtect(function()
				popups.Confirm("Execute the script?", function(result: boolean)
					if result then
						if ui:Get("ExecuteLbl").instance.Text == "Ex. Clipboard" then
							framework.execution:Execute(framework.utils.clipboard:Get())
						else
							framework.utils.inputs.editors:Get("main_editor"):Execute()
						end
					end
				end)
			end)

		}), ui:AddComponent("EditorBtn", {
			Image = "rbxassetid://115978613970081",
			Position = UDim2.fromScale(.25, .865),
			Text = "Clear",

			OnClick = framework.protected:GCProtect(function()
				popups.Confirm("Clear the editor?", function(result: boolean)
					if result then
						framework.utils.inputs.editors:Get("main_editor"):SetText("")
					end
				end)
			end)

		}), ui:AddComponent("EditorBtn", {
			Id = "Console",

			Image = "rbxassetid://15055360563",
			Position = UDim2.fromScale(.7, .865),
			Text = "Cnsl.",
			
			OnClick = framework.protected:GCProtect(function()
				local stgui = framework.protected:GetService("StarterGui")
				stgui:SetCore("DevConsoleVisible", not stgui:GetCore("DevConsoleVisible"))
			end)

		}), ui:AddComponent("EditorBtn", {
			Id = "NewTab",

			Image = "rbxassetid://118377996663639",
			Position = UDim2.fromScale(.85, .865),
			Text = "New"

		})), ui:AddInstance("Frame", {
			Id = "CloudPage",

			Position = UDim2.fromScale(.4, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.975, .95),
			BackgroundTransparency = 1,
			LayoutOrder = 1

		}, ui:AddInstance("Frame", {
			Id = "ScriptsContainer",

			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(1, .35),
			BackgroundTransparency = 1

		}, ui:AddInstance("UIAspectRatioConstraint", {
			DominantAxis = Enum.DominantAxis.Height,
			AspectRatio = 1.78

		}), ui:AddInstance("UIPageLayout", {
			Id = "ScriptsLayout",

			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Horizontal,
			EasingDirection = Enum.EasingDirection.Out,
			SortOrder = Enum.SortOrder.LayoutOrder,
			EasingStyle = Enum.EasingStyle.Linear,
			ScrollWheelInputEnabled = false,
			GamepadInputEnabled = false,
			TouchInputEnabled = false,
			--Circular = true,
			TweenTime = .25

		})), ui:AddInstance("ImageLabel",{
			Image = "rbxassetid://96600063364054",
			Position = UDim2.fromScale(.985, .025),
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.fromScale(.125, .125),
			BackgroundTransparency = 1

		}, ui:AddInstance("UIAspectRatioConstraint",{
			AspectRatio = 77/37

		}), ui:AddInstance("TextLabel", {
			FontFace = WAVE_CONFIGS.FONT_CS_SCRIPTBLOX,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextColor3 = Color3.fromHex("#8C7DFF"),
			Position = UDim2.fromScale(-.1, .5),
			AnchorPoint = Vector2.new(1, .5),
			Size = UDim2.fromScale(2, .5),
			BackgroundTransparency = 1,
			Text = "Powered by:",
			TextScaled = true
		})

		), ui:AddInstance("TextLabel", {
			Id = "ScriptTitle",

			FontFace = WAVE_CONFIGS.FONT_CS_SCRIPT_TITLE,
			Position = UDim2.fromScale(.5, .225),
			AnchorPoint = Vector2.new(.5, 0),
			Size = UDim2.fromScale(.4, .08),
			TextColor3 = WAVE_CONFIGS.WHITE,
			BackgroundTransparency = 1,
			TextScaled = true,
			Text = ""

		}), ui:AddInstance("TextLabel", {
			Id = "ScriptGame",

			FontFace = WAVE_CONFIGS.FONT_CS_TITLE,
			TextColor3 = Color3.fromRGB(175, 175, 175),
			Position = UDim2.fromScale(.5, .7),
			AnchorPoint = Vector2.new(.5, 0),
			Size = UDim2.fromScale(.4, .05),
			BackgroundTransparency = 1,
			TextScaled = true,
			Text = ""

		}), ui:AddInstance("Frame", {
			BackgroundColor3 = WAVE_CONFIGS.DARK_BLACK,
			Position = UDim2.new(.5, 0, .775, border),
			BorderColor3 = WAVE_CONFIGS.LIGHT_GRAY,
			Size = UDim2.fromScale(1.05, .24),
			AnchorPoint = Vector2.new(.5, 0),
			BorderSizePixel = border,

		}, ui:AddInstance("Frame", {
			BackgroundColor3 = WAVE_CONFIGS.BLACK,
			Position = UDim2.fromScale(.035, .5),
			AnchorPoint = Vector2.new(0, .5),
			Size = UDim2.fromScale(.325, .55)

		}, ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.35, 0)

		}), ui:AddInstance("TextBox", {
			Id = "SearchBox",

			TextXAlignment = Enum.TextXAlignment.Left,
			Position = UDim2.fromScale(.05, .5),
			AnchorPoint = Vector2.new(0, .5),
			TextColor3 = WAVE_CONFIGS.WHITE,
			Size = UDim2.fromScale(.7, .55),
			FontFace = WAVE_CONFIGS.FONT,
			PlaceholderText = "Search...",
			BackgroundTransparency = 1,
			TextScaled = true,
			Text = "",

			Focused = framework.protected:GCProtect(function()
				lastPos = main.instance.Position
				main.instance.Position = UDim2.fromScale(.5, .1)
			end),

			FocusLost = framework.protected:GCProtect(function()
				local query = ui:Get("SearchBox").instance.Text
				main.instance.Position = lastPos
				if query ~= lastFetch then
					fetchScripts(query, 1)
				end
			end)

		}), ui:AddInstance("ImageButton", {
			BackgroundColor3 = WAVE_CONFIGS.ELECTRIC_BLUE,
			Position = UDim2.fromScale(.975, .5),
			AnchorPoint = Vector2.new(1, .5),
			Size = UDim2.fromScale(1, .725),

			MouseButton1Click = framework.protected:GCProtect(function()
				local tb = ui:Get("SearchBox").instance
				if tb.Text ~= "" then
					ui:Get("SearchBoxImage").instance.Image = framework.protected:ProtectAsset("rbxassetid://16354398813")
					tb.Text = ""
				end
			end)

		}, ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.35, 0)

		}), ui:AddInstance("ImageLabel", {
			Id = "SearchBoxImage",

			Image = "rbxassetid://16354398813",
			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.75, .75),
			BackgroundTransparency = 1

		}), ui:AddInstance("UIAspectRatioConstraint", {
			DominantAxis = Enum.DominantAxis.Height

		}))), ui:AddComponent("CheckBox", {
			ImageId = "verifiedImage",

			Image = "rbxassetid://85610705737740",
			Position = UDim2.fromScale(.975, .5),
			Text = "Verified",

			OnClick = framework.protected:GCProtect(function()
				local current = framework.settings:GetSetting("ScriptBlox")
				current.verified = not current.verified

				framework.settings:SetSetting("ScriptBlox", current)
			end)

		}), ui:AddComponent("CheckBox", {
			ImageId = "paidImage",

			Image = "rbxassetid://85610705737740",
			Position = UDim2.fromScale(.85, .5),
			Text = "Paid",

			OnClick = framework.protected:GCProtect(function()
				local current = framework.settings:GetSetting("ScriptBlox")
				current.paid = not current.paid

				framework.settings:SetSetting("ScriptBlox", current)
			end)

		}), ui:AddComponent("CheckBox", {
			ImageId = "freeImage",

			Image = "rbxassetid://85610705737740",
			Position = UDim2.fromScale(.725, .5),
			Text = "Free",

			OnClick = framework.protected:GCProtect(function()
				local current = framework.settings:GetSetting("ScriptBlox")
				current.free = not current.free

				framework.settings:SetSetting("ScriptBlox", current)
			end)

		})), ui:AddInstance("ImageButton", {
			Id = "PrevScriptBtn",

			Position = UDim2.fromScale(.015, .5),
			Size = UDim2.fromScale(.05, .45),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundTransparency = 1,

			MouseButton1Click = framework.protected:GCProtect(function()
				slide(-1)
			end)

		}, ui:AddInstance("ImageLabel", {
			Id = "PrevScriptLbl",

			Image = "rbxassetid://15087827184",
			ScaleType = Enum.ScaleType.Fit,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Rotation = 90,

		})), ui:AddInstance("ImageButton", {
			Position = UDim2.fromScale(.985, .5),
			Size = UDim2.fromScale(.05, .45),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundTransparency = 1,

			MouseButton1Click = framework.protected:GCProtect(function()
				slide(1)
			end)

		}, ui:AddInstance("ImageLabel", {
			Id = "NextScriptLbl",

			Image = "rbxassetid://15087827184",
			ScaleType = Enum.ScaleType.Fit,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Rotation = -90,

		})), ui:AddInstance("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.fromScale(.3, .045),
			TextColor3 = WAVE_CONFIGS.WHITE,
			FontFace = WAVE_CONFIGS.FONT_CS_SUBTITLE,
			BackgroundTransparency = 1,
			TextTransparency = .45,
			Text = "Let's Explore",
			TextScaled = true

		}), ui:AddInstance("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Left,
			Position = UDim2.fromScale(0, .05),
			Size = UDim2.fromScale(.4, .09),
			TextColor3 = WAVE_CONFIGS.WHITE,
			FontFace = WAVE_CONFIGS.FONT_CS_SCRIPT_TITLE,
			BackgroundTransparency = 1,
			Text = "Featured Scripts",
			TextScaled = true

		}), ui:AddComponent("DotBtn", {
			Id = "NewestDot",

			Position = UDim2.fromScale(0, .15),
			Text = "Newest",

			OnClick = framework.protected:GCProtect(function()
				ui:Get("PopularDot").selected(false)
				ui:Get("NewestDot").selected(true)
				ui:Get("HotDot").selected(false)

				setCategory("updatedAt")
			end)

		}), ui:AddComponent("DotBtn", {
			Id = "PopularDot",

			Position = UDim2.fromScale(0.1, .15),
			DotVisible = false,
			Text = "Popular",

			OnClick = framework.protected:GCProtect(function()
				ui:Get("PopularDot").selected(true)
				ui:Get("NewestDot").selected(false)
				ui:Get("HotDot").selected(false)

				setCategory("views")
			end)

		}), ui:AddComponent("DotBtn", {
			Id = "HotDot",

			Position = UDim2.fromScale(0.2, .15),
			DotVisible = false,
			Text = "Hot",

			OnClick = framework.protected:GCProtect(function()
				ui:Get("PopularDot").selected(false)
				ui:Get("NewestDot").selected(false)
				ui:Get("HotDot").selected(true)

				setCategory("likeCount")
			end)

		})), ui:AddInstance("ScrollingFrame", {
			Id = "ConfigsPage",

			ScrollingDirection = Enum.ScrollingDirection.Y,
			Position = UDim2.fromScale(.4, .5),
			CanvasSize = UDim2.fromScale(0, 3),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.975, .95),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			LayoutOrder = 1

		},	ui:AddInstance("UIPadding", {
			PaddingLeft = UDim.new(.1, 0),
			PaddingRight = UDim.new(.1, 0),
			PaddingTop = UDim.new(0, border*3)

		}),	ui:AddInstance("TextLabel",{
			Text = "Settings",
			TextColor3 = Color3.fromRGB(196, 203, 218),
			Size = UDim2.fromScale(1, .025),
			BackgroundTransparency = 1,
			TextScaled = true,
			FontFace = WAVE_CONFIGS.FONT_CS_TITLE,
			TextXAlignment = Enum.TextXAlignment.Left

		}),	ui:AddInstance("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, border *5)

		}), ui:AddComponent("ToggleSetting", {
			Description = "Usefull popups that prevents you from executing scripts by mistake, also warns you when a script from the cloud hub is not verified!",
			Setting = "ConfirmationPopups",
			Text = "Confirmation Popups"

		}), ui:AddComponent("ToggleSetting", {
			Description = "Usefull toast notifications that allerts you whenever a script is executed and more.",
			Setting = "ToastPopups",
			Text = "Toast Popups",
			LayoutOrder = 1

		}), ui:AddInstance("TextButton", {
			BackgroundColor3 = Color3.fromRGB(200, 0, 0),
			FontFace = WAVE_CONFIGS.FONT_CS_TITLE,
			Size = UDim2.fromScale(.4, .65),
			TextColor3 = WAVE_CONFIGS.WHITE,
			TextSize = border * 10, 
			LayoutOrder = 2,
			Text = "Reset",

			MouseButton1Click = framework.protected:GCProtect(function()
				framework.settings:ResetAll()
			end)

		}, ui:AddInstance("UIAspectRatioConstraint", { -- sono crashato
			AspectRatio = 5

		}),	ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.1, 0)

		}))))):SetDraggable(true) 

		do -- Floating Icon
			local tweenService: TweenService = framework.protected:GetService("TweenService")
			local floatingImage = floatingIcon.instance:FindFirstChildWhichIsA("ImageLabel")

			local iconTransparency = framework.protected:GCProtect(function(transp: number, delay: number)
				local tween = tweeninfo(delay)
				local visible = transp < 1

				if visible then
					floatingIcon.instance.Visible = true
				end

				floatingIcon:Tween(tween, {
					BackgroundTransparency = transp,
					Visible = visible
				})

				tweenService:Create(floatingImage, tween, {
					ImageTransparency = transp
				}):Play()
			end)

			local mainTransparency = framework.protected:GCProtect(function(transp: number)
				local visible = transp < 1
				if visible then
					main.instance.Visible = true
				end

				local tween = main:Tween(tweeninfo(), {
					GroupTransparency = transp,
					Visible = visible
				})

				return tween
			end)

			local closed = false
			local mouseIn = framework.protected:GCProtect(function()
				if not closed then
					iconTransparency(0)
				end
			end)

			local mouseOut = framework.protected:GCProtect(function()
				if not closed then
					iconTransparency(.8, 2)
				end
			end)

			main.close = framework.protected:GCProtect(function()
				mainTransparency(1)
				floatingIcon.open()
			end)

			main.open = framework.protected:GCProtect(function()
				mainTransparency(0)
				closed = true
			end)

			floatingIcon.close = framework.protected:GCProtect(function()
				iconTransparency(1)
				main.open()
			end)

			floatingIcon.open = framework.protected:GCProtect(function()
				iconTransparency(0)
				closed = false

				task.wait(.25)
				mouseOut()
			end)

			local holdable = framework.utils.inputs.buttons.holdable(floatingIcon)
			holdable.button.instance.MouseButton1Down:Connect(mouseIn)
			holdable.button.instance.MouseEnter:Connect(mouseIn)

			holdable.button.instance.MouseButton1Up:Connect(mouseOut)
			holdable.button.instance.MouseLeave:Connect(mouseOut)

			holdable.OnShortPress:Connect(framework.protected:GCProtect(function()
				if not framework.utils.inputs.hasBeenDragged() then
					floatingIcon.close()
				end
			end))
		end

		do -- Cloud Scripts
			local tweenService: TweenService = framework.protected:GetService("TweenService")
			local layout: UIPageLayout = ui:Get("ScriptsLayout").instance
			local container = ui:Get("ScriptsContainer")

			local current = framework.protected:GCProtect({})
			local idx = 1

			local setScriptSize = framework.protected:GCProtect(function(time: number, page, pageSize: UDim2, innerPosition: UDim2, ZIndex: number)
				if not page or not page.instance then
					return
				end

				local inner, tween = page.instance:FindFirstChildWhichIsA("ImageButton"), tweeninfo(0, time)
				local color, transp = 255/3*ZIndex, ZIndex == 3 and 1 or 1 -1/3*ZIndex

				for _, lbl in ipairs(inner:GetDescendants()) do
					if lbl:IsA("TextLabel") then
						tweenService:Create(lbl, tween, {
							TextTransparency = transp
						}):Play()
					end
				end

				inner.ImageColor3 = Color3.fromRGB(color, color, color)
				page.instance.ZIndex = ZIndex

				page:Tween(tween, {
					Size = pageSize
				})

				tweenService:Create(inner, tween, {
					Position = innerPosition
				}):Play()
			end)

			local slideIndex = framework.protected:GCProtect(function(increment: number)
				local lenght =  #current -1	
				local next, prev = ui:Get("NextScriptLbl").instance, ui:Get("PrevScriptLbl").instance

				prev.ImageTransparency = 0
				next.ImageTransparency = 0

				local idx = idx
				if idx +increment >= lenght then
					next.ImageTransparency = .5
					idx = lenght

				elseif idx +increment <= 0 then
					prev.ImageTransparency = .5
					idx = 0
				else
					idx += increment
				end

				return idx
			end)

			local currentScript = nil
			local updateScriptList = framework.protected:GCProtect(function(timeMult)
				if idx +3 >= #current then
					fetchScripts(lastFetch)
				end

				timeMult = timeMult or 1
				timeMult = .25 * timeMult

				layout.TweenTime = timeMult
				layout:JumpToIndex(idx)

				local scr = current[idx +1]
				currentScript = scr

				if currentScript and currentScript.instance then
					ui:Get("ScriptTitle").instance.Text = scr.scr.title
					ui:Get("ScriptGame").instance.Text = scr.scr.game
				end

				setScriptSize(timeMult, scr, UDim2.fromScale(1, 1), UDim2.new(0, 0), 3)

				scr = current[idx]
				setScriptSize(timeMult, scr, UDim2.fromScale(1, .8), UDim2.new(.35, 0), 2)

				scr = current[idx -1]
				setScriptSize(timeMult, scr, UDim2.fromScale(1, .6), UDim2.new(1, 0), 1)

				scr = current[idx -2]
				setScriptSize(timeMult, scr, UDim2.fromScale(1, .4), UDim2.new(0, 0), 1)

				scr = current[idx +2]
				setScriptSize(timeMult, scr, UDim2.fromScale(1, .8), UDim2.new(-.35, 0), 2)

				scr = current[idx +3]
				setScriptSize(timeMult, scr, UDim2.fromScale(1, .6), UDim2.new(-1, 0), 1)

				scr = current[idx +4]
				setScriptSize(timeMult, scr, UDim2.fromScale(1, .4), UDim2.new(0, 0), 1)
			end)

			slide = framework.protected:GCProtect(function(increment: number)
				idx = slideIndex(increment)
				updateScriptList()
			end)

			local imgCache = framework.utils.caches.newCache(100)
			local marketplace = framework.protected:GetService("MarketplaceService")

			local addScript = framework.protected:GCProtect(function(scr: {any})
				local pos = #current +1
				local component

				local img
				if scr.game.gameId then
					local cached = imgCache:Get(scr.game.gameId)
					if not cached then
						local success, result = pcall(marketplace.GetProductInfo, marketplace, scr.game.gameId)
						if not success or not result.IconImageAssetId then return end
						cached = result.IconImageAssetId
						imgCache:Push(cached)

						img = framework.protected:ProtectAsset("rbxassetid://" ..cached)
					end
				end

				component = ui:AddComponent("CloudScript", { 
					Image = img or framework.protected:ProtectAsset("rbxassetid://87213725728785"),
					Game = scr.game.name,
					LayoutOrder = pos,
					Title = scr.title,
					Parent = container,

					OnClick = function()
						if currentScript and currentScript.instance then
							if component == currentScript then
								if not scr.script then
									local res = framework.utils.http:Request(framework.utils.strings.format("https://scriptblox.com/api/script/%s", scr.slug), "GET", {
										["Content-Type"] = "application/json"
									});

									if not res then
										return -- Script cannot be executed
									end

									local details = framework.utils.http.json.decode(res.Body).script
									scr.script = details.script
								end

								popups.Confirm(scr.verified and "Execute the script?" or "This script is not verified! Execute anyway?", function(result: boolean)
									if result then
										framework.execution:Execute(scr.script)
									end
								end, (not scr.verified) and Color3.fromRGB(255, 0, 0) or nil)
							else
								local diff = pos - currentScript.instance.LayoutOrder
								idx = slideIndex(diff)

								updateScriptList(framework.utils.maths.abs(diff))
							end
						end
					end
				})
				component.scr = {
					game = scr.game.name,
					title = scr.title
				}

				framework.utils.tables.insert(current, component)
			end)

			local addScripts = framework.protected:GCProtect(function(data: {any})
				if #current < 1 then
					idx = 1
				end

				for _, scr in ipairs(data) do
					if framework.settings:GetSetting("ScriptBlox").verified and not scr.verified then
						continue -- API issue fix
					end
					addScript(scr)
				end

				local length = #current
				if length > 1 then
					if idx < 2 then
						idx += (length > 2 and 1 or 0)
					end
				else
					addScript({
						title = "No script found!",
						game = {
							name = "Please enter another query!"
						}

					}, framework.protected:ProtectAsset("rbxassetid://14925930646"))
					idx = 0
				end

				updateScriptList()
			end)

			local currentCategory = "views" -- hot, mostviewed, newest
			local getFilters = framework.protected:GCProtect(function()
				local str, options = "", framework.utils.tables.deepCopy(framework.settings:GetSetting("ScriptBlox"))
				options.mode = options.paid and not options.free
				options.paid = nil
				options.free = nil

				for name, enabled in pairs(options) do
					if enabled then
						str ..= `&{name}=1`
					end
				end

				return str
			end)

			local fetchPage, maxPages, fetchDebounce = 1, 0, false
			fetchScripts = framework.protected:GCProtect(function(keyword: string, page: number, refresh: boolean)
				if fetchDebounce then
					return
				end

				fetchDebounce = true
				if not refresh and lastFetch == keyword then
					if not maxPages or fetchPage >= maxPages then
						fetchDebounce = false
						return
					end

					if fetchPage < maxPages then
						fetchPage += 1
					end
				else
					for _, obj in ipairs(current) do
						obj:Remove()
					end

					framework.utils.tables.clear(current)
					if refresh then
						page = fetchPage
					end

					fetchPage = page and (page < 1 and 1 or page) or 1
				end

				lastFetch = keyword
				local fetch = keyword:gsub("[%s+]", "") == ""
				local url = framework.utils.strings.format("https://scriptblox.com/api/script/%s?page=%i", fetch and "fetch" or "search", fetchPage)

				url ..= getFilters()
				url ..= fetch and ("&sortBy=" .. currentCategory) or ("&q=" .. framework.utils.http:UrlEncode(keyword))

				local res = framework.utils.http:Request(url, "GET", {
					["Content-Type"] = "application/json"
				});

				if res then
					local parsed = framework.utils.http.json.decode(res.Body).result
					maxPages = parsed.totalPages
					addScripts(parsed.scripts)
				end

				fetchDebounce = false
			end)

			setCategory = framework.protected:GCProtect(function(cat: string)
				if cat ~= currentCategory then
					currentCategory = cat
					fetchScripts(lastFetch, nil, true)
				end
			end)

			ui:Get("SearchBox").instance:GetPropertyChangedSignal("Text"):Connect(framework.protected:GCProtect(function()
				local query = ui:Get("SearchBox").instance.Text
				local img = framework.protected:ProtectAsset("rbxassetid://14925930646")

				if query == "" then
					img = framework.protected:ProtectAsset("rbxassetid://16354398813")
				end

				ui:Get("SearchBoxImage").instance.Image = img
			end))

			framework.settings:GetSettingChangedSignal("ScriptBlox"):Connect(framework.protected:GCProtect(function(value: {any})
				for name, enabled in pairs(value) do
					ui:Get(name .. "Image").instance.Image = enabled and framework.protected:ProtectAsset("rbxassetid://130668110596245") or framework.protected:ProtectAsset("rbxassetid://79457397313942")
				end

				fetchScripts(lastFetch, nil, true)
			end))

		end

		do -- Editor
			local editor = framework.utils.inputs.editors.new("main_editor")
			local tb = ui:Get("EditorBox").instance
			local selectedTab, saveTabs = nil, nil

			editor:ConnectLinesCounter(ui:Get("CodeLines"))
			editor:ConnectHighlighter(tb)

			tb.Focused:Connect(framework.protected:GCProtect(function()
				editor:ToggleHighlighter(false)
			end))

			tb.FocusLost:Connect(framework.protected:GCProtect(function()
				editor:ToggleHighlighter(true)
			end))

			tb:GetPropertyChangedSignal("Text"):Connect(framework.protected:GCProtect(function()
				local txt = editor:GetText()
				if selectedTab then
					selectedTab:GetData().Src = txt
					saveTabs()
				end

				ui:Get("ExecuteLbl").instance.Text = txt == "" and "Ex. Clipboard" or "Execute"
			end))

			-- Tabs
			local data = ARCEUS_FOLDERS.CONFIGS:ReadJsonFile(WAVE_CONFIGS.TABS_FILE) or framework.protected:GCProtect({})
			local tabs, list = framework.utils.inputs.tabs.new(), ui:Get("TabsScrollX")
			local addTab

			saveTabs = framework.protected:GCProtect(function()
				ARCEUS_FOLDERS.CONFIGS:WriteJsonFile(WAVE_CONFIGS.TABS_FILE, data)
			end)

			local refreshTabs = framework.protected:GCProtect(function(selectLast: boolean)
				for _, tab in pairs(tabs:GetAll()) do
					tab:Remove()
				end

				local l = #data
				if l < 1 then
					framework.utils.tables.insert(data, {})
				end

				for i, info in ipairs(data) do
					if not info.Name then
						info.Name = "Script " ..i
					end

					local tab = addTab(info, i)
					if selectLast then
						if i == l then
							tab:Select()
						end

					elseif i == 1 then
						local data = tab:GetData()
						if not data.Src or data.Src:gsub("[%s+]", "") == "" then
							data.Src = [[print("Hello World")
]]
						end

						tab:Select()
					end
				end
			end)

			addTab = framework.protected:GCProtect(function(info: {any}, index: number)
				local btn = ui:AddComponent("ScriptTab", {
					LayoutOrder = index,
					Text = info.Name
				})

				local tab = tabs:Add(btn, info)
				local sel = ui:AddComponent("SelectedTab", {
					LayoutOrder = index,
					Text = info.Name,
					Visible = false,

					OnClose = function()
						framework.utils.tables.remove(data, index)
						refreshTabs(false)
					end
				})

				local tb, tl = sel.instance:FindFirstChildWhichIsA("TextBox"), btn.instance:FindFirstChildWhichIsA("TextLabel")
				tb.FocusLost:Connect(function()
					info.Name = tb.Text
					tl.Text = info.Name
					saveTabs()
				end)

				tab.selected = sel
				sel:SetParent(list)
				btn:SetParent(list)
				return tab
			end)

			ui:Get("NewTab").instance.MouseButton1Click:Connect(framework.protected:GCProtect(function()
				framework.utils.tables.insert(data, {})
				refreshTabs(true)
			end))

			tabs.OnTabSelected:Connect(framework.protected:GCProtect(function(tab: {any}, previous: {any})
				selectedTab = tab

				if previous and previous.selected.instance then
					local data = previous:GetData()
					data.Src = editor:GetText()

					previous.selected.instance.Visible = false
					previous.button.instance.Visible = true
					task.spawn(saveTabs)
				end

				local data = tab:GetData()
				editor:SetText(data.Src or "")

				tab.selected.instance.Visible = true
				tab.button.instance.Visible = false
			end))

			tabs.OnTabRemoved:Connect(framework.protected:GCProtect(function(tab: {any})
				tab.selected:Remove()
				tab.button:Remove()
				saveTabs()
			end))

			refreshTabs(false)
			framework.execution.OnExecuted:Connect(framework.protected:GCProtect(function()
				popups.Toast("Script Executed!")
			end))
		end

		-- Pages
		framework.utils.tables.insert(sideButtons, ui:Get("ExecutorBtn"))
		framework.utils.tables.insert(sideButtons, ui:Get("ConfigsBtn"))
		framework.utils.tables.insert(sideButtons, ui:Get("CloudBtn"))

		-- Initialize
		framework.settings:LoadSettings()
		dynamicAdjust()

		-- Intro
		ui.intro = framework.protected:GCProtect(function()
			local ogPos = floatingIcon.instance.Position
			floatingIcon.instance.Position = UDim2.fromScale(1.1, .5)

			floatingIcon.open()
			floatingIcon:Tween(tweeninfo(0, 1), {
				Position = ogPos
			})
		end)

		return ui
	end

	function exploit:LoadUrl(url: string, retries: number)
		retries = retries or 3
		local res, c = nil, 0

		repeat
			if res ~= nil then
				c += 1
				if retries > 0 and c > retries then
					break
				end

				task.wait(2)
			end

			res = framework.utils.http:Request(url)
		until res

		return res
	end

	framework.dependencies:Add("exploit", framework.protected:ProtectTable(exploit))
end

do -- KeySystem
	local name, ver = framework.env.identifyexecutor()
	local isStudio = framework.protected:IsStudio()
	print(name, ver)

	-- Check for exploit identity
	if not isStudio then
		if not name or not ver then
			return
		end

		local found = name:lower():find(WAVE_CONFIGS.EXPLOIT_IDENTITY:lower())
		if not found then
			return
		end
	end

	-- Build UI
	local ui = framework.dependencies.exploit:InitUI()
	ui:SetEnabled(true)

	do -- UI updated notification
		local old = ARCEUS_FOLDERS.CONFIGS:ReadJsonFile(WAVE_CONFIGS.VERSION_FILE, WAVE_CONFIGS.FILES_KEY)
		framework.utils.versioning:SetVersion(WAVE_CONFIGS.UI_VERSION)

		if old and old.version and framework.utils.versioning:Compare(old.version) == framework.enums.versioning.older then
			-- UI Updated
		end

		ARCEUS_FOLDERS.CONFIGS:WriteJsonFile(WAVE_CONFIGS.VERSION_FILE, {
			version = WAVE_CONFIGS.UI_VERSION
		}, WAVE_CONFIGS.FILES_KEY)
	end

	-- Up to date
	ui.intro()
	--framework.env.runautoexec()

	--[[ Auto execute
	for _, file in ipairs(ARCEUS_FOLDERS.AUTOEXECUTE:ListFiles()) do
		framework.execution:Execute(ARCEUS_FOLDERS.AUTOEXECUTE:ReadFile(file))
	end]]
end
