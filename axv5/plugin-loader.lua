
--[[ Plugins will be json files
{
	name = "...",
	icon = "...",
	author = "...",
	description = "...".
	
	plugin = "source"
}
]]

-- Plugin Example
-- local example = "local lib = ({...})[1]"

--[[ UI Lib example

local loader = loadstring..
loader:Load(function(lib: {any})

end)

]]

-- Loader, In AX v5 UI or External UI

--local framework = ... or loadstring(game:HttpGet("https://raw.githubusercontent.com/Riky47/Xploit-Framework/refs/heads/main/index.lua"))()
local imporetedFramework = ... and true or false
local framework = (...) or require(script.Parent.Parent:WaitForChild("Wave"):WaitForChild("WaveFramework"))
local loader = {}

if not LPH_OBFUSCATED then -- Luraph integration
	local dummy = function(...) return ... end
	LPH_NO_VIRTUALIZE = LPH_NO_VIRTUALIZE or dummy
	LPH_NO_UPVALUES = LPH_NO_UPVALUES or dummy
	LPH_OBFUSCATED = LPH_OBFUSCATED or false
	LPH_JIT_MAX = LPH_JIT_MAX or dummy
	LPH_ENCFUNC = LPH_ENCFUNC or dummy
	LPH_ENCSTR = LPH_ENCSTR or dummy
	LPH_ENCNUM = LPH_ENCNUM or dummy
	LPH_CRASH = LPH_CRASH or dummy
	LPH_JIT = LPH_JIT or dummy
end

if not imporetedFramework then
	framework.protected:UseUndetectedContent(not framework.protected:IsStudio())
end

local arceus_layout = framework.env.getgenv().arceus_layout or {}
local PALETTE = {
	PRIMARY = arceus_layout.Colors_Primary or Color3.fromRGB(255, 0, 0), --Color3.fromRGB(255, 0, 0),
	SECONDARY = arceus_layout.Colors_Secondary or Color3.fromRGB(10, 10, 10), --Color3.fromRGB(20, 20, 20),
	SECONDARY_LIGHT = Color3.fromRGB(40, 40, 40),

	PRIMARY_TEXT = Color3.fromRGB(255, 255, 255),
	SECONDARY_FONT = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
	PRIMARY_FONT = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
	MEDIUM_FONT = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
	UTILS_FONT = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	HEAVY_FONT = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
}

local tweenInfo = TweenInfo.new(.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
local onLoaded = framework.signals.newEvent()
loader.OnPluginLoaded = onLoaded

local SCRIPT_MODE = true
local loadInterface = framework.protected:GCProtect(function()
	local onClosed = framework.signals.newFunction()
	local ui = framework.interface.new()
	local main

	ui.OnClosed = onClosed
	ui.instance.ScreenInsets = Enum.ScreenInsets.None
	ui.instance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local playerGui = framework.protected:GetService("Players").LocalPlayer.PlayerGui
	ui.LINE_THICKNESS = (playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait and ui.instance.AbsoluteSize.X or ui.instance.AbsoluteSize.Y) *10 /1080


	ui:CreateComponent("Logo").OnCreating:Connect(framework.protected:GCProtect(LPH_JIT(function(props: {any})
		return ui:AddInstance("ImageLabel", {
			Id = props.Id,

			ImageTransparency = props.ImageTransparency,
			Image = "rbxassetid://14925738408",
			AnchorPoint = props.AnchorPoint,
			ScaleType = Enum.ScaleType.Fit, 
			--ImageColor3 = PALETTE.PRIMARY,
			BackgroundTransparency = 1,
			Position = props.Position,
			Size = props.Size,

		}, ui:AddInstance("UIAspectRatioConstraint"))
	end)))

		--[[do -- Cannot render when the little frame its out of screen :(
			local comp = ui:CreateComponent("FadedPanel")	
			comp.OnCreating:Connect(framework.protected:GCProtect(function(props: {any})
				local fade = ui:AddInstance("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = props.Color
					
				}, ui:AddInstance("UIGradient", {
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(0.499995, 0),
						NumberSequenceKeypoint.new(0.5, 1),
						NumberSequenceKeypoint.new(0.500005, 0),
						NumberSequenceKeypoint.new(1, 0)
					})
				}))
				
				props.Color = nil
				props.ClipsDescendants = true
				local cont = ui:AddInstance("Frame", props, ui:AddInstance("Frame", {
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundTransparency = 1
				}, fade))
				
				task.spawn(function()
					while not cont.instance.Parent do
						task.wait()
					end
					
					local sizes = cont.instance.Parent.AbsoluteSize
					fade.instance.Thickness = framework.utils.maths.max(sizes.X, sizes.Y)/3
				end)
				
				return cont
			end))
		end]]


	local comp = ui:CreateComponent("RoundTextBtn").OnCreating:Connect(framework.protected:GCProtect(LPH_JIT(function(props: {any})
		local text = props.Text or ""
		local font = props.FontFace or PALETTE.PRIMARY_FONT
		local textc = props.TextColor3 or PALETTE.PRIMARY_TEXT

		props.Text = ""
		props.FontFace = nil
		props.BackgroundColor3 = props.BackgroundColor3 or PALETTE.PRIMARY
		return ui:AddInstance("TextButton", props, ui:AddInstance("TextLabel", {
			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.6, .6),
			BackgroundTransparency = 1,
			TextColor3 = textc,
			TextScaled = true,
			FontFace = font,
			Text = text

		}), ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.3, 0)

		}), ui:AddInstance("UIAspectRatioConstraint"))
	end)))

	local titles = {}
	local cont = ui:AddInstance("Frame", {
		Position = UDim2.fromScale(.5, .985),
		AnchorPoint = Vector2.new(.5, 1),
		Size = UDim2.fromScale(.98, .86),
		BackgroundTransparency = 1
	})

	local combo, pageTitle do
		local baseSize, maxSize = UDim2.fromScale(.65, .65), UDim2.fromScale(.85, .85)
		local close, expand, title

		local lastSize, isExpanded = baseSize, true
		local closeMain, openMain, expandMain = framework.protected:GCProtect(function(dontYield: boolean)
			local tween = main:Tween(tweenInfo, {
				Size = UDim2.fromScale(0, 0),
				GroupTransparency = 1,
				Visible = false
			})

			if not dontYield then tween.Completed:Wait() end
			onClosed:Invoke()

		end), framework.protected:GCProtect(function(dontYield: boolean)
			main.instance.Size = UDim2.fromScale(0, 0)
			main.instance.GroupTransparency = 1
			main.instance.Visible = true

			local tween = main:Tween(tweenInfo, {
				GroupTransparency = .025,
				Size = lastSize
			})

			if not dontYield then tween.Completed:Wait() end
		end), framework.protected:GCProtect(function(dontYield: boolean)
			isExpanded = not isExpanded
			expand.instance.Image = isExpanded 
				and framework.protected:ProtectAsset("rbxassetid://122019362652723")
				or framework.protected:ProtectAsset("rbxassetid://127130884069079")

			lastSize = isExpanded and baseSize or maxSize
			local tween = main:Tween(tweenInfo, {
				Size = lastSize
			})

			if not dontYield then tween.Completed:Wait() end
		end)

		close = ui:AddInstance("TextButton", {
			Position = UDim2.fromScale(.994, .5),
			AnchorPoint = Vector2.new(1, .5),
			Size = UDim2.fromScale(.05, .7),
			FontFace = PALETTE.UTILS_FONT,
			MouseButton1Click = closeMain,
			TextColor3 = PALETTE.PRIMARY,
			BackgroundTransparency = 1,
			TextScaled = true,
			Text = "X"--"×"
		})

		expand = ui:AddInstance("ImageButton", {
			Image = "rbxassetid://122019362652723",
			Position = UDim2.fromScale(.934, .5),
			AnchorPoint = Vector2.new(1, .5),
			Size = UDim2.fromScale(.05, .6),
			ScaleType = Enum.ScaleType.Fit,
			MouseButton1Click = expandMain,
			BackgroundTransparency = 1
		})

		title = ui:AddInstance("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Left,
			Position = UDim2.fromScale(.075, .5),
			TextColor3 = PALETTE.PRIMARY_TEXT,
			AnchorPoint = Vector2.new(0, .5),
			Size = UDim2.fromScale(.3, .5),
			FontFace = PALETTE.PRIMARY_FONT,
			BackgroundTransparency = 1,
			TextTransparency = .25,
			TextScaled = true,
			Text = "Your Hub"
		})

		combo = ui:AddInstance("ImageButton", {
			BackgroundColor3 = PALETTE.SECONDARY,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = .5,
			AutoButtonColor = false,
			Visible = false,
			ZIndex = 2,
			Image = ""

		}, ui:AddInstance("Frame", {
			Id = "InnerCombo",

			BackgroundColor3 = PALETTE.SECONDARY,
			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.4, .8),
			BackgroundTransparency = .1,
			ClipsDescendants = true

		}, ui:AddInstance("ScrollingFrame", {
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollBarImageColor3 = PALETTE.PRIMARY,
			Position = UDim2.fromScale(.5, .5),
			CanvasSize = UDim2.fromScale(0, 0),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(1, .9),
			BackgroundTransparency = 1,
			ClipsDescendants = false,
			BorderSizePixel = 0

		}, ui:AddInstance("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, ui.LINE_THICKNESS*2),
			SortOrder = Enum.SortOrder.LayoutOrder

		})), ui:AddInstance("UIStroke", {
			Color = PALETTE.SECONDARY_LIGHT,
			Thickness = 2

		}), ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.075, 0)

		})))

		framework.utils.tables.insert(titles, title)
		pageTitle = ui:AddInstance("TextLabel", {
			Position = UDim2.fromScale(.525, .5),
			TextColor3 = PALETTE.PRIMARY_TEXT,
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.55, .4),
			FontFace = PALETTE.PRIMARY_FONT,
			BackgroundTransparency = 1,
			TextTransparency = .5,
			TextScaled = true,
			Text = "Utils"
		})

		main = ui:AddInstance("CanvasGroup", {
			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			Visible = false,
			Size = baseSize

		}, combo, ui:AddInstance("Frame", {
			BackgroundColor3 = PALETTE.SECONDARY,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = .35

		}, cont, ui:AddInstance("Frame", {
			Position = UDim2.fromScale(.5, .015),
			AnchorPoint = Vector2.new(.5, 0),
			Size = UDim2.fromScale(.98, .1),
			BackgroundTransparency = 1

		}, close, expand, ui:AddComponent("Logo", {
			Id = "Logo_1",

			Position = UDim2.fromScale(.01, .5),
			AnchorPoint = Vector2.new(0, .5),
			Size = UDim2.fromScale(.9, .9)

		}), title, pageTitle)), ui:AddInstance("ImageLabel", {
			Image = "rbxassetid://92856638317817",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1

		}) , ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(.025, 0)

		}), ui:AddInstance("UIAspectRatioConstraint", {
			AspectRatio = 1.78 -- 16:9

		})):SetDraggable(true)

			--[[ui:AddComponent("FadedPanel", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Color = PALETTE.SECONDARY,
				ZIndex = -1
			}))]]

		main.open = openMain
		main.close = closeMain
	end

	local icon do
		local baseSize = UDim2.fromScale(.125, .125)	
		local closeIcon, openIcon = framework.protected:GCProtect(function(dontYield: boolean)
			local tween = icon:Tween(tweenInfo, {
				Size = UDim2.fromScale(0, 0),
				Visible = false

			})

			if not dontYield then tween.Completed:Wait() end
			main.open()

		end), framework.protected:GCProtect(function(dontYield: boolean)
			if imporetedFramework then return end
			icon.instance.Size = UDim2.fromScale(0, 0)
			icon.instance.Visible = true

			local tween = icon:Tween(tweenInfo, {
				Size = baseSize
			})

			if not dontYield then tween.Completed:Wait() end
		end)

		local title = ui:AddInstance("TextLabel", {
			Position = UDim2.fromScale(.5, 1),
			TextColor3 = PALETTE.PRIMARY_TEXT,
			AnchorPoint = Vector2.new(.5, 0),
			Size = UDim2.fromScale(1, .45),
			FontFace = PALETTE.PRIMARY_FONT,
			BackgroundTransparency = 1,
			TextTransparency = .7,
			TextScaled = true,
			Text = "Your Hub"
		})

		framework.utils.tables.insert(titles, title)
		icon = ui:AddInstance("TextButton", {
			BackgroundColor3 = PALETTE.PRIMARY,
			Position = UDim2.fromScale(.75, .15),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = .15,
			AutoButtonColor = false,
			Visible = false,
			Size = baseSize,
			Text = ""

		}, ui:AddInstance("UIGradient", {
			Rotation = 45,
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, PALETTE.SECONDARY),
				ColorSequenceKeypoint.new(1, PALETTE.PRIMARY)
			})

		}), ui:AddComponent("Logo", {
			Id = "Logo_2",

			Position = UDim2.fromScale(.5, .5),
			AnchorPoint = Vector2.new(.5, .5),
			Size = UDim2.fromScale(.7, .7),
			ImageTransparency = .15

		}), title, ui:AddInstance("UICorner", {
			CornerRadius = UDim.new(1, 0)

		}), ui:AddInstance("UIAspectRatioConstraint")):SetDraggable(true)

		local holdable = framework.utils.inputs.buttons.holdable(icon, false)
		holdable.OnShortPress:Connect(closeIcon)

		icon.open = openIcon
		icon.close = closeIcon
		onClosed:Connect(openIcon)
	end

	ui.setTitle = framework.protected:GCProtect(function(title: string)
		for _, v in ipairs(titles) do
			v.instance.Text = title
		end
	end)

	ui.setLogo = framework.protected:GCProtect(function(logo)
		local s, err = pcall(function()
			local c = framework.protected:GetUndetectedContent(logo, true)
			ui:Get("Logo_1").instance.ImageContent = c
			ui:Get("Logo_2").instance.ImageContent = c
		end)

		if not s then
			local c = framework.protected:ProtectAsset(logo)
			ui:Get("Logo_1").instance.Image = c
			ui:Get("Logo_2").instance.Image = c
		end
	end)

	ui.show = framework.protected:GCProtect(function(open: boolean)
		ui:SetEnabled(true);
		(open and main or icon).open()
	end)

	ui.hide = framework.protected:GCProtect(function(dontYield: boolean)
		main.close(dontYield)
		icon.close(dontYield)
		ui:SetEnabled(false)
	end)

	local inner = ui:Get("InnerCombo")
	local innerPos = inner.instance.Position
	local innerOut = UDim2.fromScale(.5, -.525)
	local list = inner.instance:FindFirstChildWhichIsA("ScrollingFrame")

	local pluginframe = nil
	ui.setPluginFrame = framework.protected:GCProtect(function(inst: instance)
		pluginframe = inst
	end)

	local last = framework.protected:GCProtect({})
	ui.toggleCombo = framework.protected:GCProtect(LPH_JIT(function(enabled: boolean, args: {string}, selected: string, callback: (string), ispill: boolean)
		if enabled then
			combo:SetParent(SCRIPT_MODE and main or pluginframe)
			if #last > 0 then return end
			local pressed = false

			local pills = args
			if ispill then
				args = {}
				for k, _ in pairs(pills) do
					framework.utils.tables.insert(args, k)
				end
			end

			for i, v in pairs(args) do
				local sel = v == selected or pills[v]

				framework.utils.tables.insert(last, ui:AddInstance("ImageButton", {
					BackgroundColor3 = sel and PALETTE.PRIMARY or PALETTE.SECONDARY_LIGHT,
					Size = UDim2.new(.9, 0, 0, ui.LINE_THICKNESS *8),
					BackgroundTransparency = .75,
					LayoutOrder = i,
					Parent = list,

					MouseButton1Click =function()
						if pressed then return end
						pressed = true

						task.spawn(callback, v)
						ui.toggleCombo(false)
					end

				}, ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					FontFace = PALETTE.PRIMARY_FONT,
					Size = UDim2.fromScale(.91, .6),
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = v

				}), ui:AddInstance("UIStroke", {
					Color = sel and PALETTE.PRIMARY or PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.3, 0)
				})))
			end

			inner.instance.Position = innerOut
			combo.instance.Visible = true
		end

		inner:Tween(tweenInfo, {
			Position = enabled and innerPos or innerOut
		})

		combo:Tween(tweenInfo, {
			BackgroundTransparency = enabled and .5 or 1,
			Visible = enabled

		}).Completed:Wait()
		if not enabled then
			for _, v in ipairs(last) do
				v:Remove()
			end

			framework.utils.tables.clear(last)
		end
	end))

	ui.setPageTitle = framework.protected:GCProtect(function(name: string)
		pageTitle.instance.Text = name
	end)

	return ui, cont
end)

local library = framework.protected:GCProtect(function(...)
	local ui, cont = loadInterface()

	local main, navbar, pageLayout, pageList do
		navbar = ui:AddInstance("ScrollingFrame", {
			ScrollingDirection = Enum.ScrollingDirection.Y,
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollBarImageColor3 = PALETTE.PRIMARY,
			CanvasSize = UDim2.fromScale(0, 0),
			Position = UDim2.fromScale(0, .5),
			AnchorPoint = Vector2.new(0, .5),
			Size = UDim2.fromScale(1, .975),
			BackgroundTransparency = 1,
			ScrollBarThickness = 2

		}, ui:AddInstance("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, ui.LINE_THICKNESS),
			SortOrder = Enum.SortOrder.LayoutOrder
		}))

		pageLayout = ui:AddInstance("UIPageLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			EasingDirection = Enum.EasingDirection.Out,
			SortOrder = Enum.SortOrder.LayoutOrder,
			EasingStyle = Enum.EasingStyle.Linear,
			ScrollWheelInputEnabled = false,
			GamepadInputEnabled = false,
			Padding = UDim.new(.025, 0),
			TouchInputEnabled = false,
			TweenTime = .2
		})

		pageList = ui:AddInstance("Frame", {
			Size = UDim2.fromScale(.915, 1),
			BackgroundTransparency = 1,
			ClipsDescendants = true

		}, pageLayout)

		main = ui:AddInstance("CanvasGroup", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Parent = cont

		}, ui:AddInstance("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1

		}, ui:AddInstance("Frame", {
			--BackgroundColor3 = PALETTE.SECONDARY,
			Size = UDim2.fromScale(.075, 1),
			BackgroundTransparency = 1, --.7,
			LayoutOrder = -1

		}, navbar), pageList, ui:AddInstance("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(.01, 0)

		})))
	end

	ui.setPluginFrame(main)
	ui.detach = framework.protected:GCProtect(function(parent: {any})
		SCRIPT_MODE = false
		main:SetParent(parent)
	end)

	ui.attach = framework.protected:GCProtect(function()
		SCRIPT_MODE = true
		main:SetParent(cont)
	end)

	local pages = {}
	local selectPage, lastPage do
		selectPage = framework.protected:GCProtect(function(index: number)
			if lastPage == index then return end
			index = index or lastPage

			lastPage = index
			for i, v in ipairs(pages) do
				local t = 1
				if i == index then
					pageLayout.instance:JumpTo(v[1].Page.instance)
					ui.setPageTitle(v[2].Name)
					v[2].OnOpened:Fire()
					t = .5
				end

				v[1].Button.instance.BackgroundTransparency = t
			end
		end)
	end

	local library = {} do
		function library:SetTitle(title: string)
			ui.setTitle(title)
		end

		function library:SetLogo(logo: string)
			ui.setLogo(logo)
		end

		function library:SetEnabled(status: boolean)
			(status and ui.show or ui.hide)()
		end

		function library:AddPage(name: string, icon: string, index: number)
			local meta, page, data = {}, {}, {}		
			
			local uilist = ui:AddInstance("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, ui.LINE_THICKNESS),
				SortOrder = Enum.SortOrder.LayoutOrder
			})
			
			local pagew = ui:AddInstance("ScrollingFrame", {
				ScrollingDirection = Enum.ScrollingDirection.Y,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarImageColor3 = PALETTE.PRIMARY,
				ScrollBarThickness = ui.LINE_THICKNESS,
				CanvasSize = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Parent = pageList

			}, uilist)
			
			uilist.instance:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(framework.protected:GCProtect(function()
				pagew.instance.CanvasSize = UDim2.fromOffset(0, ui.LINE_THICKNESS *12 * (#pagew.instance:GetChildren() -1))
			end))

			local pageIcon = ui:AddInstance("ImageLabel", {
				Position = UDim2.fromScale(.5, .5),
				AnchorPoint = Vector2.new(.5, .5),
				Size = UDim2.fromScale(.7, .7),
				BackgroundTransparency = 1,
				Image = icon
			})

			local buttonw = ui:AddInstance("TextButton", {
				BackgroundColor3 = PALETTE.PRIMARY,
				Size = UDim2.fromScale(.8, .8),
				BackgroundTransparency = 1,
				Parent = navbar,
				Text = "",

				MouseButton1Click = function()
					selectPage(table.find(pages, data))
				end,

			}, pageIcon, ui:AddInstance("UICorner", {
				CornerRadius = UDim.new(.25, 0)

			}), ui:AddInstance("UIAspectRatioConstraint", {
				DominantAxis = Enum.DominantAxis.Width
			}))

			page.Name = name
			page.Icon = icon
			page.OnOpened = framework.signals.newEvent()

			-----------------------------------------------

			function page:Select()
				library:SelectPage(self)
			end

			function page:Remove()
				buttonw:Remove()
				pagew:Remove()
			end

			function page:AddTextBox(title: string, description: string, layoutOrder: number?)
				local tb = {}

				title = title or "Value:"
				description = description or "TextBox description"
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local textbox = ui:AddInstance("TextBox", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.5, .55),
					AnchorPoint = Vector2.new(.5, .5),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					FontFace = PALETTE.SECONDARY_FONT,
					Size = UDim2.fromScale(.875, .6),
					PlaceholderText = "Value...",
					BackgroundTransparency = 1,
					ClearTextOnFocus = false,
					TextScaled = true,
					Text = ""
				})

				local component = ui:AddInstance("Frame", {
					BackgroundColor3 = PALETTE.SECONDARY,
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, ui:AddInstance("Frame", {
					Position = UDim2.fromScale(.975, .5),
					Size = UDim2.fromScale(.225, .5),
					AnchorPoint = Vector2.new(1, .5),
					BackgroundTransparency = 1

				}, textbox, ui:AddInstance("UIStroke", {
					Color = PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.3, 0)

				})), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				tb.Text = ""
				tb.Title = title
				tb.ClearTextOnFocus = false
				tb.LayoutOrder = layoutOrder
				tb.Descrioption = description
				tb.Focused = textbox.instance.Focused
				tb.FocusLost = textbox.instance.FocusLost
				tb.TextChanged = textbox.instance:GetPropertyChangedSignal("Text")

				-----------------------------------------------

				function tb:Remove()
					component:Remove()
				end

				framework.protected:ProtectTable(tb)
				local meta = framework.utils.tables.customProperties(tb, function(k)
					if k == "Text" then
						return textbox.instance.Text
					end

					return false

				end, function(k, v)
					if k == "Text" then
						textbox.instance.Text = v

					elseif k == "Title" then
						title.instance.Text = v

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "ClearTextOnFocus" then
						textbox.instance.ClearTextOnFocus = v and true or false


					else return false end
					return true
				end)

				return meta
			end

			function page:AddNumericUpDown(title: string, description: string, default: number?, min: number?, max: number?, increment: number?, layoutOrder: number?)
				local nud = {}

				title = title or "Value:"
				description = description or "Description"
				max = max or framework.utils.maths.huge
				min = min or -framework.utils.maths.huge

				default = default or 0
				increment = increment or 1
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local event = framework.signals.newEvent()

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local textbox = ui:AddInstance("TextBox", {
					Position = UDim2.fromScale(.5, .55),
					AnchorPoint = Vector2.new(.5, .5),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					FontFace = PALETTE.SECONDARY_FONT,
					Size = UDim2.fromScale(.95, .6),
					PlaceholderText = "Value...",
					BackgroundTransparency = 1,
					ClearTextOnFocus = true,
					TextScaled = true,
					Text = default
				})

				local setNum = framework.protected:GCProtect(function(num: number)
					num = framework.utils.maths.clamp(num, nud.Min, nud.Max)
					if nud.Value ~= num then
						textbox.instance.Text = num
						nud.Value = num

						event:Fire(num)
					end
				end)

				local process
				local stop = framework.protected:GCProtect(function()
					if process then task.cancel(process) end
				end)

				local up = ui:AddComponent("RoundTextBtn", {
					Position = UDim2.fromScale(.975, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.4, .4),
					Text = "+",

					MouseButton1Up = stop
				})

				local down = ui:AddComponent("RoundTextBtn", {
					Position = UDim2.fromScale(.737, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.4, .4),
					Text = "−",

					MouseButton1Up = stop
				})

				local component = ui:AddInstance("Frame", {
					BackgroundColor3 = PALETTE.SECONDARY,
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, ui:AddInstance("Frame", {
					Position = UDim2.fromScale(.925, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.175, .5),
					BackgroundTransparency = 1

				}, textbox, ui:AddInstance("UIStroke", {
					Color = PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.3, 0)

				})), down, up, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				local hup = framework.utils.inputs.buttons.holdable(up)
				hup.OnShortPress:Connect(framework.protected:GCProtect(function()
					setNum(nud.Value +nud.Increment)
				end))

				hup.OnLongPress:Connect(framework.protected:GCProtect(function()
					local tim = .5
					process = task.spawn(function()
						while true do
							setNum(nud.Value +nud.Increment)
							task.wait(tim)

							tim -= .1
							tim = tim < .1 and .1 or tim
						end
					end)
				end))

				local hdown = framework.utils.inputs.buttons.holdable(down)
				hdown.OnShortPress:Connect(framework.protected:GCProtect(function()
					setNum(nud.Value -nud.Increment)
				end))

				hdown.OnLongPress:Connect(framework.protected:GCProtect(function()
					local tim = .5
					process = task.spawn(function()
						while true do
							setNum(nud.Value -nud.Increment)
							task.wait(tim)

							tim -= .1
							tim = tim < .1 and .1 or tim
						end
					end)
				end))

				nud.Title = title
				nud.Description = description
				nud.ClearTextOnFocus = true
				nud.LayoutOrder = layoutOrder
				nud.NumberChanged = event
				nud.Value = default
				nud.Max = max
				nud.Min = min
				nud.Increment = increment

				textbox.instance.Focused:Connect(framework.protected:GCProtect(function()
					nud.Value = textbox.instance.Text
				end))

				textbox.instance.FocusLost:Connect(framework.protected:GCProtect(function()
					local num = tonumber(textbox.instance.Text)
					if not num then
						textbox.instance.Text = nud.Value
					else
						setNum(num)
					end
				end))

				function nud:Remove()
					component:Remove()
				end

				framework.protected:ProtectTable(nud)
				local meta = framework.utils.tables.customProperties(nud, function(k)
					return false

				end, function(k, v)
					if k == "Title" then
						title.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "ClearTextOnFocus" then
						textbox.instance.ClearTextOnFocus = v and true or false

					elseif k == "FastIncrement" or k == "Increment" or k == "Max" or k == "Min" then
						return true

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "Value" then
						setNum(v)

					else return false end
					return true
				end)

				return meta
			end

			function page:AddSlider(title: string, description: string, default: number?, min: number?, max: number?, layoutOrder: number?)
				local sld = {}

				title = title or "Value:"
				description = description or "Slider Description"
				max = max or framework.utils.maths.huge
				min = min or -framework.utils.maths.huge

				default = default or 0
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local slider = ui:AddInstance("TextButton", {
					BackgroundColor3 = PALETTE.PRIMARY,
					AutoButtonColor = false,
					Text = ""

				}, ui:AddInstance("Frame", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					Position = UDim2.fromScale(1, .5),
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.new(0, 1000, 1, 0) -- Leave the x to high offest otherwise the AspectRation on Y its not going to work and the object will scale if the slider is little

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				}), ui:AddInstance("UIAspectRatioConstraint", {
					DominantAxis = Enum.DominantAxis.Height
				})))

				local component = ui:AddInstance("Frame", {
					BackgroundColor3 = PALETTE.SECONDARY,
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, ui:AddInstance("CanvasGroup", {
					Position = UDim2.fromScale(.975, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.3, .25),
					BackgroundTransparency = 1,
					ClipsDescendants = true

				}, slider, ui:AddInstance("UIStroke", {
					Color = PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				})), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				local eventUpdate = framework.signals.newEvent()
				local eventChanded = framework.signals.newEvent()

				local input = framework.utils.inputs.sliders.horizontal({slider}, framework.utils.maths.clamp((default -min)/(max - min), 0, 1))
				local setByPercent = framework.protected:GCProtect(function(percent: number)
					local val = framework.utils.maths.clamp(sld.Min +percent *(sld.Max -sld.Min), sld.Min, sld.Max)
					sld.Value = val
					return val
				end)

				input.OnPercentageUpdated:Connect(framework.protected:GCProtect(function(p: number)
					eventUpdate:Fire(setByPercent(p))
				end))
				input.OnPercentageChanged:Connect(framework.protected:GCProtect(function(p: number)
					eventChanded:Fire(setByPercent(p))
				end))

				sld.Title = title
				sld.Description = description
				sld.LayoutOrder = layoutOrder
				sld.ValueUpdated = eventUpdate
				sld.ValueChanged = eventChanded
				sld.Value = default
				sld.Max = max
				sld.Min = min

				function sld:Remove()
					component:Remove()
				end

				framework.protected:ProtectTable(sld)
				local meta = framework.utils.tables.customProperties(sld, function(k)
					return false

				end, function(k, v)
					if k == "Title" then
						title.instance.Text = v

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "Max" or k == "Min" then
						return true

					elseif k == "Value" then
						setByPercent(framework.utils.maths.clamp((v -sld.Min)/(sld.Max - sld.Min), 0, 1))

					else return false end
					return true
				end)

				return meta
			end

			function page:AddToggle(title: string?, description: string?, default: boolean?, layoutOrder: number?)
				local tog = {}
				local toggle

				title = title or "Value:"
				default = default and true or false
				description = description or "Tap to toggle"
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local indicator = ui:AddInstance("Frame", {
					BackgroundColor3 = PALETTE.PRIMARY_TEXT,
					AnchorPoint = Vector2.new(.5, .5),
					Size = UDim2.fromScale(.825, .825)

				}, ui:AddInstance("UIAspectRatioConstraint"), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)
				}))

					--[[local background = ui:AddInstance("Frame", {
						BackgroundColor3 = PALETTE.PRIMARY,
						Position = UDim2.fromScale(0, .5),
						AnchorPoint = Vector2.new(1, .5),
						Size = UDim2.fromScale(1, 1),
						ZIndex = 0
					})
					
					local component = ui:AddInstance("Frame", {
						Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
						BackgroundColor3 = PALETTE.SECONDARY,
						BackgroundTransparency = .5,
						LayoutOrder = layoutOrder,
						Parent = pagew

					}, title, desc, ui:AddInstance("CanvasGroup", {
						Position = UDim2.fromScale(.95, .5),
						AnchorPoint = Vector2.new(1, .5),
						Size = UDim2.fromScale(.075, .4),
						BackgroundTransparency = 1,
						ClipsDescendants = true
						
					}, ui:AddInstance("ImageButton", {
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						Image = "",

						MouseButton1Click = framework.protected:GCProtect(function()
							if not tog.Enabled then return end
							toggle(not tog.Status)
						end)

					}, indicator, background), ui:AddInstance("UIStroke", {
						Color = PALETTE.SECONDARY_LIGHT,
						Thickness = 2

					}), ui:AddInstance("UICorner", {
						CornerRadius = UDim.new(1, 0)

					})) , ui:AddInstance("UICorner", {
						CornerRadius = UDim.new(.15, 0)
					}))]]

				local btn = ui:AddInstance("ImageButton", {
					BackgroundTransparency = default and 0 or 1,
					Position = UDim2.fromScale(.975, .5),
					BackgroundColor3 = PALETTE.PRIMARY,
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.1, .5),
					Image = "",

					MouseButton1Click = framework.protected:GCProtect(function()
						if not tog.Enabled then return end
						toggle(not tog.Status)
					end)

				}, indicator, ui:AddInstance("UIStroke", {
					Color = PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)

				}))

				local component = ui:AddInstance("Frame", {
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundColor3 = PALETTE.SECONDARY,
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, btn, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				local offPos = UDim2.new(0, indicator.instance.AbsoluteSize.X/2 +ui.LINE_THICKNESS/2, .5, 0)
				local onPos = UDim2.new(1, -indicator.instance.AbsoluteSize.X/2 -ui.LINE_THICKNESS/2, .5, 0)
				indicator.instance.Position = default and onPos or offPos

				local event = framework.signals.newEvent()
				toggle = framework.protected:GCProtect(function(status: boolean)
					tog.Status = status
					event:Fire(status)

					indicator:Tween(tweenInfo, {
						Position = status and onPos or offPos
					})

					btn:Tween(tweenInfo, {
						BackgroundTransparency = status and 0 or 1
					})
				end)

				tog.Title = title
				tog.Enabled = true
				tog.OnToggle = event
				tog.Status = default
				tog.Description = description
				tog.LayoutOrder = layoutOrder

				function tog:Remove()
					component:Remove()
				end

				framework.protected:ProtectTable(tog)
				local meta = framework.utils.tables.customProperties(tog, function(k)
					return false

				end, function(k, v)
					if k == "Title"  then
						title.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "Status" then
						toggle(v)

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "Enabled" then
					else return false end
					return true
				end)

				return meta
			end

			function page:AddComboBox(title: string, description: string?, options: {string}?, layoutOrder: number?)
				if not options or #options < 1 then
					framework.console.error("ComboBox, at least 1 parameter required in options")
				end

				local cmb = {}

				title = title or "Value:"
				description = description or "Choose an option"
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local selection = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.085, .5),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					AnchorPoint = Vector2.new(0, .5),
					FontFace = PALETTE.PRIMARY_FONT,
					Size = UDim2.fromScale(.65, .6),
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = options[1]
				})

				local event = framework.signals.newEvent()
				local setSelection = framework.protected:GCProtect(function(value: string)
					if cmb.Selected == value then return end
					cmb.Selected = value
					selection.instance.Text = value
					event:Fire(value)
				end) 

				local button = ui:AddInstance("ImageButton", {
					Position = UDim2.fromScale(.975, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.15, .5),
					BackgroundTransparency = 1,
					Image = "",

					MouseButton1Click = framework.protected:GCProtect(function()
						ui.toggleCombo(true, cmb.Options, cmb.Selected, setSelection)
					end)

				}, selection, ui:AddInstance("TextLabel", {
					Position = UDim2.fromScale(.95, .5),
					AnchorPoint = Vector2.new(1, .5),
					FontFace = PALETTE.PRIMARY_FONT,
					Size = UDim2.fromScale(.2, .5),
					TextColor3 = PALETTE.PRIMARY,
					BackgroundTransparency = 1,
					TextScaled = true,
					Rotation = 90,
					Text = ">"

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.3, 0)

				}), ui:AddInstance("UIStroke", {
					Color = PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}))

				local component = ui:AddInstance("Frame", {
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundColor3 = PALETTE.SECONDARY,
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, button, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				cmb.Title = title
				cmb.Enabled = true
				cmb.Options = options
				cmb.OnChanged = event
				cmb.Selected = options[1]
				cmb.Description = description
				cmb.LayoutOrder = layoutOrder

				function cmb:Remove()
					component:Remove()
				end

				framework.protected:ProtectTable(cmb)
				local meta = framework.utils.tables.customProperties(cmb, function(k)
					return false

				end, function(k, v)
					if k == "Title"  then
						title.instance.Text = v

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "Options" then
						if typeof(v) ~= "table" or #v < 1 then
							framework.console.error("ComboBox, at least 1 parameter required in options")
						end

					elseif k == "Selected" then
						setSelection(v)

					elseif k == "Enabled" then
						button.instance.Interactable = v

					else return false end
					return true
				end)

				return meta
			end

			--[[
			function page:AddPillBox(title: string, description: string?, items: {string}?, layoutOrder: number?)
				local pil = {}

				title = title or "Value:"
				description = description or "Select items"
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local list = ui:AddInstance("Frame", {
					Position = UDim2.fromScale(.05, .5),
					AnchorPoint = Vector2.new(0, .5),
					Size = UDim2.fromScale(.8, .8),
					BackgroundTransparency = .75
				})

				local setitems = framework.protected:GCProtect(function(items: {any})
					local listed = {}
					for k, v in pairs(items) do		
						if typeof(k) == "string" then
							framework.utils.tables.insert(listed, k)
							if pil.Items[k] then continue end
							pil.Items[k] = v and true or false

						elseif not pil.Items[v] then
							framework.utils.tables.insert(listed, v)
							pil.Items[v] = false
						end
					end

					for k, _ in ipairs(pil.Items) do
						if not framework.utils.tables.find(listed, k) then
							pil.Items[k] = nil
						end
					end
				end)

				local toggleitem = framework.protected:GCProtect(function(item: string)
					pil.Items[item] = not pil.Items[item]
				end)

				local button = ui:AddInstance("ImageButton", {
					Position = UDim2.fromScale(.975, .5),
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.25, .5),
					BackgroundTransparency = 1,
					Image = "",

					MouseButton1Click = framework.protected:GCProtect(function()
						ui.toggleCombo(true, pil.Items, nil, toggleitem, true)
					end)

				}, list, ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Right,
					Position = UDim2.fromScale(.95, .5),
					AnchorPoint = Vector2.new(1, .5),
					FontFace = PALETTE.PRIMARY_FONT,
					Size = UDim2.fromScale(.25, .5),
					TextColor3 = PALETTE.PRIMARY,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = "+"

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.3, 0)

				}), ui:AddInstance("UIStroke", {
					Color = PALETTE.SECONDARY_LIGHT,
					Thickness = 2

				}))

				local component = ui:AddInstance("Frame", {
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundColor3 = PALETTE.SECONDARY,
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, button, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				pil.Items = {}
				pil.Title = title
				pil.Enabled = true
				pil.Description = description
				pil.LayoutOrder = layoutOrder
				setitems(items)

				function pil:Remove()
					component:Remove()
				end

				function pil:SetItem(name: string, selected: boolean)
					pil.Items[name] = selected and true or false
				end

				framework.protected:ProtectTable(pil)
				local meta = framework.utils.tables.customProperties(pil, function(k)
					return false

				end, function(k, v)
					if k == "Title"  then
						title.instance.Text = v

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "Items" then
						setitems(v)

					elseif k == "Enabled" then
						button.instance.Interactable = v

					else return false end
					return true
				end)

				return meta
			end]]

			function page:AddButton(title: string, description: string, action: string, layoutOrder: number?)
				local btn = {}

				title = title or "Value:"
				description = description or "Button Description"
				action = action or "Press"
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .15),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .4),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.85, .25),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.SECONDARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local button = ui:AddInstance("ImageButton", {
					Position = UDim2.fromScale(.975, .5),
					BackgroundColor3 = PALETTE.PRIMARY,
					AnchorPoint = Vector2.new(1, .5),
					Size = UDim2.fromScale(.125, .5),
					Image = "",

				}, ui:AddInstance("TextLabel", {
					Position = UDim2.fromScale(.5, .5),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					AnchorPoint = Vector2.new(.5, .5),
					FontFace = PALETTE.PRIMARY_FONT,
					Size = UDim2.fromScale(.9, .6),
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = action

				}), ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.3, 0)
				}))

				local component = ui:AddInstance("Frame", {
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *10),
					BackgroundColor3 = PALETTE.SECONDARY,
					BackgroundTransparency = .5,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc, button, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(.25, 0)
				}))

				btn.Title = title
				btn.Description = description
				btn.Enabled = true
				btn.LayoutOrder = layoutOrder
				btn.OnClick = button.instance.MouseButton1Click
				btn.OnPress = button.instance.MouseButton1Down
				btn.OnRelease = button.instance.MouseButton1Up

				function btn:Remove()
					component:Remove()
				end

				framework.protected:ProtectTable(btn)
				local meta = framework.utils.tables.customProperties(btn, function(k)
					return false

				end, function(k, v)
					if k == "Title"  then
						title.instance.Text = v

					elseif k == "LayoutOrder" then
						component.instance.LayoutOrder = v

					elseif k == "Enabled" then
						button.instance.Interactable = v

					elseif k == "Description" then
						desc.instance.Text = v

					else return false end
					return true
				end)

				return meta
			end

			function page:AddSplitter(title: string, layoutOrder: number?)
				local sp = {}

				title = title or ""
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .0),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(.275, .65),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.HEAVY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = 0.25,
					TextScaled = true,
					Text = title
				})

				local split = ui:AddInstance("Frame", {
					Size = UDim2.new(.975, 0, 0, ui.LINE_THICKNESS *4),
					BackgroundTransparency = 1,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, ui:AddInstance("Frame", {
					BackgroundColor3 = PALETTE.PRIMARY,
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),
					Size = UDim2.fromScale(1, .1),
					BackgroundTransparency = .15

				}, ui:AddInstance("UICorner", {
					CornerRadius = UDim.new(1, 0)
				})))

				sp.Title = title
				sp.LayoutOrder = layoutOrder

				-----------------------------------------------

				function sp:Remove()
					split:Remove()
				end

				framework.protected:ProtectTable(sp)
				local meta = framework.utils.tables.customProperties(sp, function(k)
					return false

				end, function(k, v)
					if k == "Title" then
						title.instance.Text = v

					elseif k == "LayoutOrder" then
						split.instance.LayoutOrder = v

					else return false end
					return true
				end)

				return meta
			end

			function page:AddCategoryTitle(title: string, description: string, layoutOrder: number?)
				local sp = {}

				title = title or "Title"
				description = description or "This is the section description"
				layoutOrder = layoutOrder or #pagew.instance:GetChildren() -1

				local title = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, 0.05),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(1, .55),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.PRIMARY_FONT,
					BackgroundTransparency = 1,
					TextScaled = true,
					Text = title
				})

				local desc = ui:AddInstance("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.fromScale(.025, .6),
					TextColor3 = PALETTE.PRIMARY_TEXT,
					Size = UDim2.fromScale(1, .35),
					AnchorPoint = Vector2.new(0, 0),
					FontFace = PALETTE.PRIMARY_FONT,
					BackgroundTransparency = 1,
					TextTransparency = .5,
					TextScaled = true,
					Text = description
				})

				local split = ui:AddInstance("Frame", {
					Size = UDim2.new(1, 0, 0.15, 0),
					BackgroundTransparency = 1,
					LayoutOrder = layoutOrder,
					Parent = pagew

				}, title, desc)

				sp.Title = title
				sp.Description = description
				sp.LayoutOrder = layoutOrder

				-----------------------------------------------

				function sp:Remove()
					split:Remove()
				end

				framework.protected:ProtectTable(sp)
				local meta = framework.utils.tables.customProperties(sp, function(k)
					return false

				end, function(k, v)
					if k == "Title" then
						title.instance.Text = v

					elseif k == "Description" then
						desc.instance.Text = v

					elseif k == "LayoutOrder" then
						split.instance.LayoutOrder = v

					else return false end
					return true
				end)

				return meta
			end

			-----------------------------------------------

			framework.protected:ProtectTable(page)
			meta = framework.utils.tables.customProperties(page, function(k)
				return false

			end,  function(k, v)
				if k == "Name" then
				elseif k == "Icon" then
					pageIcon.instance.Image = framework.protected:ProtectAsset(v)

				else return false end
				return true
			end)

			data = {{
				Button = buttonw,
				Page = pagew
			}, meta}

			if index and #pages >= index  then
				local new = {}
				for i, v in ipairs(pages) do
					if i < index then
						new[i] = v
					else
						new[i +1] = v
					end
				end

				pages[index] = data
				pages = new
			else
				table.insert(pages, data)
			end

			if not lastPage then
				self:SelectPage(1)
			end

			return meta
		end

		function library:GetPages()
			return pages
		end

		function library:GetPageByName(name: string)
			for _, v in ipairs(pages) do
				if v[2].Name == name then
					return v[2]
				end
			end
		end

		function library:SelectPage(index: number|page)
			if not tonumber(index) then
				index = table.find(pages, index)
			end

			if index and index > 0 and index <= #pages then
				selectPage(index)
			end
		end

		function library:RemovePage(index: number|page)
			local newList = {}
			for i, v in ipairs(pages) do
				if index == i or index == v[2] then
					v[2]:Remove()
				else
					framework.utils.tables.insert(newList, v)
				end
			end

			pages = newList
			selectPage()
		end
	end

	framework.protected:ProtectTable(library)
	task.defer(onLoaded.Fire, onLoaded, ui, ...)
	return library
end)

function loader:Load(source: (library: {any}) -> any|string, ...)
	source = typeof(source) == "function"
		and source or framework.env.loadstring(source)

	return source(library(...),
		framework.env.DeepProtectedCopy({}, framework.env.oldEnv),
		...)
end

framework.protected:ProtectTable(loader)
return loader
