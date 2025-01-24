-- Gui to Lua
-- Version: 3.2 - Exp

-- Instances:

local Main = {
	Main = Instance.new("ScreenGui"),
	FloatingIcon = Instance.new("ImageButton"),
	UICorner = Instance.new("UICorner"),
	UIPadding = Instance.new("UIPadding"),
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint"),
	FloatingIconImage = Instance.new("ImageLabel"),
	MainWindow = Instance.new("Frame"),
	UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint"),
	UICorner_2 = Instance.new("UICorner"),
	UIPadding_2 = Instance.new("UIPadding"),
	TopBar = Instance.new("Frame"),
	TopBar_UICorner = Instance.new("UICorner"),
	AppTitle = Instance.new("Frame"),
	AppTitle_UIListLayout = Instance.new("UIListLayout"),
	AppTitle_Text = Instance.new("TextLabel"),
	AppTitle_Logo = Instance.new("ImageButton"),
	AppInfo = Instance.new("Frame"),
	AppVersion_Text = Instance.new("TextLabel"),
	AppVersion = Instance.new("TextLabel"),
	CloseButton = Instance.new("ImageButton"),
	Separator = Instance.new("Frame"),
	SideBar = Instance.new("Frame"),
	PageIndicator = Instance.new("Frame"),
	Navigation = Instance.new("Frame"),
	NavBar = Instance.new("Frame"),
	SideBar_UIListLayout = Instance.new("UIListLayout"),
	SideBar_UIPadding = Instance.new("UIPadding"),
	NavBar_Home = Instance.new("TextButton"),
	Text = Instance.new("TextLabel"),
	NavBar_HomeIMG = Instance.new("ImageButton"),
	SideBar_UIListLayout_2 = Instance.new("UIListLayout"),
	SideBar_UIPadding_2 = Instance.new("UIPadding"),
	NavBar_Executor = Instance.new("TextButton"),
	Text_2 = Instance.new("TextLabel"),
	NavBar_HomeIMG_2 = Instance.new("ImageButton"),
	NavBar_Console = Instance.new("TextButton"),
	Text_3 = Instance.new("TextLabel"),
	NavBar_HomeIMG_3 = Instance.new("ImageButton"),
	NavBar_Scripts = Instance.new("TextButton"),
	Text_4 = Instance.new("TextLabel"),
	NavBar_HomeIMG_4 = Instance.new("ImageButton"),
	NavBar_Settings = Instance.new("TextButton"),
	Text_5 = Instance.new("TextLabel"),
	NavBar_HomeIMG_5 = Instance.new("ImageButton"),
	SideBar_UIPadding_7 = Instance.new("UIPadding"),
	Content = Instance.new("Frame"),
	Home = Instance.new("Frame"),
	UIPadding_3 = Instance.new("UIPadding"),
	Text_6 = Instance.new("TextLabel"),
	Text_7 = Instance.new("TextLabel"),
	Text_8 = Instance.new("TextLabel"),
	Text_9 = Instance.new("TextLabel"),
	YouTubeButton = Instance.new("TextButton"),
	UIListLayout = Instance.new("UIListLayout"),
	UIPadding_4 = Instance.new("UIPadding"),
	Youtube = Instance.new("ImageLabel"),
	UICorner_6 = Instance.new("UICorner"),
	Skills = Instance.new("TextLabel"),
	DiscordButton = Instance.new("TextButton"),
	Youtube_2 = Instance.new("ImageLabel"),
	Skills_2 = Instance.new("TextLabel"),
	SPDMButton = Instance.new("TextButton"),
	UIListLayout_3 = Instance.new("UIListLayout"),
	Youtube_3 = Instance.new("ImageLabel"),
	Skills_3 = Instance.new("TextLabel"),
	Text_10 = Instance.new("TextLabel"),
	Text_11 = Instance.new("TextLabel"),
	Text_12 = Instance.new("TextLabel"),
	Text_13 = Instance.new("TextLabel"),
	DecoratorDOT = Instance.new("Frame"),
	DecoratorDOT_2 = Instance.new("Frame"),
	Main_UIPageLayout = Instance.new("UIPageLayout"),
	Executor = Instance.new("Frame"),
	ScrollingFrame = Instance.new("ScrollingFrame"),
	MainEditor = Instance.new("TextBox"),
	UICorner_14 = Instance.new("UICorner"),
	UIPadding_8 = Instance.new("UIPadding"),
	LineNumberFrame = Instance.new("Frame"),
	LineTemplate = Instance.new("TextLabel"),
	UIPadding_9 = Instance.new("UIPadding"),
	BottomBar = Instance.new("Frame"),
	UIListLayout_4 = Instance.new("UIListLayout"),
	MainExecuteButton = Instance.new("TextButton"),
	UIPadding_10 = Instance.new("UIPadding"),
	UICorner_16 = Instance.new("UICorner"),
	MainClearButton = Instance.new("TextButton"),
	UIPadding_11 = Instance.new("UIPadding"),
	CopyButton = Instance.new("TextButton"),
	UIPadding_12 = Instance.new("UIPadding"),
	PasteButton = Instance.new("TextButton"),
	UIPadding_13 = Instance.new("UIPadding"),
	HydraHub = Instance.new("Frame"),
	Text_14 = Instance.new("TextLabel"),
	Text_15 = Instance.new("TextLabel"),
	Text_16 = Instance.new("TextLabel"),
	Text_17 = Instance.new("TextLabel"),
	HubExecute = Instance.new("TextButton"),
	Console = Instance.new("Frame"),
	Text_18 = Instance.new("TextLabel"),
	Text_19 = Instance.new("TextLabel"),
	PopupModal = Instance.new("Frame"),
	YesNoPopupWindow = Instance.new("Frame"),
	YesNo_PopupTitle = Instance.new("TextLabel"),
	UIPadding_17 = Instance.new("UIPadding"),
	YesNo_PopupText = Instance.new("TextLabel"),
	YesButton = Instance.new("TextButton"),
	UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint"),
	NoButton = Instance.new("TextButton"),
	UpdateDetectedWithRoblox = Instance.new("Frame"),
	UpdateArceusXRobloxButton = Instance.new("TextButton"),
	UIPadding_21 = Instance.new("UIPadding"),
	PopupTitle = Instance.new("TextLabel"),
	PopupTitle_2 = Instance.new("TextLabel"),
	RedSeparator = Instance.new("Frame"),
	PopupTitle_3 = Instance.new("TextLabel"),
	KeySystem_AppLogo = Instance.new("ImageLabel"),
	PopupTitle_4 = Instance.new("TextLabel"),
	PopupTitle_5 = Instance.new("TextLabel"),
	Logo = Instance.new("ImageLabel"),
	PopupTitle_6 = Instance.new("TextLabel"),
	PastRobloxVersion = Instance.new("TextLabel"),
	UIGradient = Instance.new("UIGradient"),
	NewRobloxVersion = Instance.new("TextLabel"),
	UIGradient_2 = Instance.new("UIGradient"),
	PopupTitle_7 = Instance.new("TextLabel"),
	PopupTitle_8 = Instance.new("TextLabel"),
	KeySystem_ExitButton2 = Instance.new("TextButton"),
	UIPadding_22 = Instance.new("UIPadding"),
	UpdateDetected = Instance.new("Frame"),
	UpdateArceusXButton = Instance.new("TextButton"),
	PopupTitle_9 = Instance.new("TextLabel"),
	PopupTitle_10 = Instance.new("TextLabel"),
	PopupTitle_11 = Instance.new("TextLabel"),
	RedSeparator_2 = Instance.new("Frame"),
	PopupTitle_12 = Instance.new("TextLabel"),
	KeySystem_AppLogo_2 = Instance.new("ImageLabel"),
	PopupTitle_13 = Instance.new("TextLabel"),
	PopupTitle_14 = Instance.new("TextLabel"),
	Logo_2 = Instance.new("ImageLabel"),
	PopupTitle_15 = Instance.new("TextLabel"),
	ArceusPastVersion = Instance.new("TextLabel"),
	UIGradient_3 = Instance.new("UIGradient"),
	ArceusNewVersion = Instance.new("TextLabel"),
	UIGradient_4 = Instance.new("UIGradient"),
	OR = Instance.new("TextLabel"),
	KeySystem = Instance.new("Frame"),
	KeySystem_CheckButton = Instance.new("TextButton"),
	PopupTitle_16 = Instance.new("TextLabel"),
	PopupTitle_17 = Instance.new("TextLabel"),
	RedSeparator_3 = Instance.new("Frame"),
	KeySystem_AppLogo_3 = Instance.new("ImageLabel"),
	UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint"),
	PopupTitle_20 = Instance.new("TextLabel"),
	PopupTitle_22 = Instance.new("TextLabel"),
	KeySystem_ExitButton = Instance.new("TextButton"),
	KeySystem_GetKeyButton = Instance.new("TextButton"),
	Logo_4 = Instance.new("ImageLabel"),
	KeyStatus = Instance.new("TextLabel"),
	PopupTitle_23 = Instance.new("TextLabel"),
	Keysystem_Keybox = Instance.new("TextBox"),
	UIStroke = Instance.new("UIStroke"),
	UIPadding_30 = Instance.new("UIPadding"),
	PopupTitle_24 = Instance.new("TextLabel"),
	Toast = Instance.new("TextButton"),
	UIAspectRatioConstraint_22 = Instance.new("UIAspectRatioConstraint"),
	UICorner_34 = Instance.new("UICorner"),
	UIListLayout_5 = Instance.new("UIListLayout"),
	UIPadding_31 = Instance.new("UIPadding"),
	ToastExpiringBar = Instance.new("Frame"),
	ToastBar = Instance.new("Frame"),
	UIGradient_5 = Instance.new("UIGradient"),
	ToastDescription = Instance.new("TextLabel"),
	ToastTitle = Instance.new("TextLabel"),
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

-- Arceus adapter
loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/refs/heads/main/adapter.lua"))()

--[[
		[ LURES WARE ]
		- spdmteam.com
]]

local CURRENT_VERSION = "1.0.0"
local tsuo_loaded = false
Main = Main or {}

-- Fake Classes / Modules
local scriptscontroller
local authentication
local cloudscripts
local scripthub
local executor
local rconsole
local elements
local configs
local storage
local sliders
local buttons
local popups
local pages
local misc

local testing_toast
local testing_decompiler

rconsole = {
	print = function(text)
		if rconsoleprint then
			rconsoleprint(text)
			return true
		end

		if isStudio then
			print(text)
		end

		return false
	end,

	info = function(text)
		if rconsoleinfo then
			rconsoleinfo(text)
			return true
		end

		if isStudio then
			print(text)
		end

		return false
	end,

	warn = function(text)
		if rconsolewarn then
			rconsolewarn(text)
			return true
		end

		if isStudio then
			warn(text)
		end

		return false
	end,

	error = function(text)
		if rconsoleerr then
			rconsoleerr(text)
			return true
		end

		if isStudio then
			error(text)
		end

		return false
	end,

	clear = function()
		if rconsoleclear then
			rconsoleclear()
			return true
		end

		return false
	end,
}

--[[
		CUSTOM FUNCTIONS
]]

local syn = syn
local arceus = arceus or {}
local fakeenv = {
	arceus = {
		garbage = {}
	},
	Instance = {}
}

local getgenv = getgenv or function()
	rconsole.warn("Fake getenv called!")
	return fakeenv
end

local clonefunction = function(funct: funct)
	if not funct then
		return nil
	end

	if clonefunction then
		return clonefunction(funct)
	end

	return function(...)
		return typeof(funct) == "function" and funct(...) or funct
	end
end

local newcclosure = newcclosure or function(...)
	rconsole.warn("Fake newcclosure called!")
	return ...
end

local hookfunction = hookfunction or function(...)
	rconsole.warn("Fake hookfunction called!")
	return ...
end

local hookmetamethod = hookmetamethod or function(...)
	rconsole.warn("Fake hookmetamethod called!")
	return ...
end

local cloneref = cloneref or function(...)
	rconsole.warn("Fake cloneref called!")
	return ...
end

local getgc = getgc or function(...)
	rconsole.warn("Fake getgc called!")
	return {}
end

local setreadonly = setreadonly or function(...)
	rconsole.warn("Fake setreadonly called!")
	return ...
end

local sethiddenproperty = sethiddenproperty or function(...)
	rconsole.warn("Fake newcclosure called!")
	return ...
end

local getnamecallmethod = getnamecallmethod or function(...)
	rconsole.warn("Fake getnamecallmethod called!")
	return ""
end

local protectfunction = protectfunction or function(...)
	return ...
end

local isiosdevice = clonefunction(arceus.isiosdevice) or clonefunction(arceus.is_ios) or function()
	return false 
end

local isvng = clonefunction(arceus.is_vng) or function()
	return false
end

-- [[ TEMPORARY SHIT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ]]
if isiosdevice() then
	local oldnmc
	local contentProvider = game:GetService("ContentProvider")

	for k,v in pairs(getgc(true)) do
		if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and (rawget(v,"indexInstance"))[1] == "kick" then
			v.tvk = {"kick", function()
				return game.Workspace:WaitForChild("")
			end}
		end
	end

	oldnmc = hookmetamethod(game, "__namecall", function(self, ...)
		local args = {...}
		local method = getnamecallmethod()

		if self == contentProvider and (method == "PreloadAsync" or method == "preloadAsync") and table.find(args[1], game.CoreGui) then
			return {}
		end

		return oldnmc(self, ...)
	end)

	local oldf
	oldf = hookfunction(contentProvider.PreloadAsync, function(self, ...)
		local args = {...}

		if table.find(args[1], game.CoreGui) then
			return {}
		end

		return oldf(self, ...)
	end)

	local placeId = game.PlaceId
	local games = {
		emergency = {
			[2534724415] = true,
			[6417675492] = true,
			[11845704379] = true,
			[15885203328] = true
		}
	}

	if games.emergency[placeId] then
		local playerService = cloneref(game:GetService("Players"));
		local localPlayer = playerService.LocalPlayer;

		local set_thread_identity = (typeof(syn) == "table" and syn.set_thread_identity) or (setidentity or setthreadcontext);
		local hookfunc = (replaceclosure or hookfunction);

		local last_script_hash = "60f741d6331abb59d37583fea790c929735a119c77f7e25216942e906079e766a217a57670a6d1fb9a12899b4b9245f1";

		local function bypassFunc()
			repeat
				wait();
			until (localPlayer.Character and localPlayer.Character:FindFirstChild("Interaction Handler"));

			set_thread_identity(2);

			local getTextFunc = rawget(rawget(require(localPlayer.Character["Interaction Handler"].InteractionActions), "Locker"), "GetText");

			set_thread_identity(7);

			if (typeof(syn) == "table" or executescript) then
				if (getscripthash(localPlayer.Character["Interaction Handler"].InteractionActions) ~= last_script_hash) then
					if (not isfile("warning.data")) then
						writefile("warning.data", "");
						return localPlayer:Kick("the anticheat appears to have updated, please re-execute if you want to use it anyway.\n\nThe bypass might be patched.");    
					end;
				end;
			end

			if (not getTextFunc) then
				for i, v in next, getgc() do
					if (typeof(v) ~= "function") then continue end;

					if (getinfo(v).name == "GetText") then
						getTextFunc = v;
						break;
					end;
				end;

				if (not getTextFunc) then
					return localPlayer:Kick("failed to find required functions - this normally means the game has updated.");
				end;
			end;

			local tfunc;
			for i, v in next, getupvalues(getTextFunc) do
				if (typeof(v) ~= "function") then continue end;

				if (getinfo(v).name == "O") then
					tfunc = v;
					break;
				end;
			end;

			if (not tfunc) then
				tfunc = getupvalue(getTextFunc, 15);
				if (typeof(tfunc) ~= "function" or #getinfo(tfunc).name ~= 1) then
					return localPlayer:Kick("failed to find required functions (2) - this normally means the game has updated.")
				end
			end;

			local old_q;old_q = hookfunc(tfunc, function(...) 
				local ret = old_q(...);
				if (typeof(ret) == "function" and islclosure(ret)) then
					local old;old = hookfunc(ret, function(...)
						local nfunc = debug.info(2, "f");
						if (not nfunc or debug.info(nfunc, "s") == "[C]") then
							return wait(9e9);    
						end;
						local cfunc = debug.getinfo(nfunc).name;
						if (not cfunc or cfunc == "") then
							return old(...);    
						end;
						if (cfunc == "pcall") then
							return wait(9e9);
						end;
						return old(...);
					end)
				end;
				return ret;
			end);
		end;

		bypassFunc();
		localPlayer.CharacterAdded:Connect(bypassFunc)
	end
end

local openurl = clonefunction(arceus.openurl) or nil
local getversion = clonefunction(arceus.getversion) or nil
local ispermissiongranted = clonefunction(arceus.ispermissiongranted) or nil

local isarceusfolder = clonefunction(arceus.isarceusfolder) or nil
local makearceusfolder = clonefunction(arceus.makearceusfolder) or nil
local deletearceusfolder = clonefunction(arceus.deletearceusfolder) or nil

local getfilesize = clonefunction(arceus.getfilesize) or nil
local isarceusfile = clonefunction(arceus.isarceusfile) or nil
--local loadarceusfile = clonefunction(arceus.loadarceusfile) or nil
local readarceusfile = clonefunction(arceus.readarceusfile) or nil
local writearceusfile = clonefunction(arceus.writearceusfile) or nil
local listarceusfiles = clonefunction(arceus.listarceusfiles) or nil
local deletearceusfile = clonefunction(arceus.deletearceusfile) or nil

local iscustomasset = clonefunction(arceus.iscustomasset) or nil
local writecustomasset = clonefunction(arceus.writecustomasset) or nil
local deletecustomasset = clonefunction(arceus.deletecustomasset) or nil
local retrievecustomasset = clonefunction(arceus.retrievecustomasset) or nil

protectfunction(openurl)
protectfunction(getversion)
protectfunction(getfilesize)
protectfunction(isarceusfile)
protectfunction(iscustomasset)
protectfunction(readarceusfile)
protectfunction(isarceusfolder)
protectfunction(writearceusfile)
protectfunction(listarceusfiles)
protectfunction(writecustomasset)
protectfunction(deletearceusfile)
protectfunction(makearceusfolder)
protectfunction(deletecustomasset)
protectfunction(deletearceusfolder)
protectfunction(retrievecustomasset)
protectfunction(ispermissiongranted)

getgenv().arceus = nil

--[[
		[ GLOBALS ]
]]

local RBX_ANALITYCS_SERVICE = cloneref(game:GetService("RbxAnalyticsService"))
local MARKETPLACE_SERVICE = cloneref(game:GetService("MarketplaceService"))
local USER_INPUT_SERVICE = cloneref(game:GetService("UserInputService"))
local TELEPORT_SERVICE = cloneref(game:GetService("TeleportService"))
local TWEEN_SERVICE = cloneref(game:GetService("TweenService"))
local HTTP_SERVICE = cloneref(game:GetService("HttpService"))
local RUN_SERVICE = cloneref(game:GetService("RunService"))
local PLAYERS = cloneref(game:GetService("Players"))
local isStudio = RUN_SERVICE:IsStudio()

local gethwid = isiosdevice() and function() 
	return RBX_ANALITYCS_SERVICE:GetClientId()
end or (gethwid or get_hwid or nil)

local request = http_request or request or nil
local base64_encode = crypt and (crypt.base64encode or crypt.base64_encode or crypt.base64.encode or nil) or nil
local base64_decode = crypt and (crypt.base64decode or crypt.base64_decode or crypt.base64.decode or nil) or nil

--[[
		[ TOAST ]
]]

do
	--local lastIndex = 999999
	--local lastToasts = {}

	local show = function(text: string, isLong: boolean, title: string)
		if tonumber(isLong) then
			local num = tonumber(isLong)
			isLong = num == 1 and true or false
		end

		isLong = isLong and true or false

		--

		local newToast = Main.Toast:Clone()
		misc.protectInstances(newToast)
		--newToast.Name = randString()

		newToast:FindFirstChildWhichIsA("TextLabel"):Destroy()
		newToast:FindFirstChildWhichIsA("TextLabel"):Destroy()

		local description = Main.ToastDescription:Clone()
		misc.protectInstances(description)
		--description.Name = randString()
		description.Text = text

		if title then
			local label = Main.ToastTitle:Clone()
			misc.protectInstances(label)
			--label.Name = randString()
			label.Text = title
			label.Parent = newToast
		else
			description.Size = UDim2.fromScale(1, 0.9)
		end

		description.Parent = newToast
		if not getgenv().arceus.garbage.toastIndex then
			getgenv().arceus.garbage.toastIndex = 999999
		end

		if not getgenv().arceus.garbage.toasts then
			getgenv().arceus.garbage.toasts = {}
		end

		newToast.ZIndex = getgenv().arceus.garbage.toastIndex
		getgenv().arceus.garbage.toastIndex -= 1

		local toastContainer = newToast:FindFirstChildWhichIsA("Frame")
		local toastBar = toastContainer:FindFirstChildWhichIsA("Frame")
		toastBar.Size = UDim2.fromScale(0, 1)

		local ogSize = Main.Toast.Size
		local finalPosition = UDim2.fromScale(0.7, 0.725)
		local ogPosition = UDim2.fromScale(0.7 + ogSize.X.Scale * 1.25, 0.725)

		newToast.Position = ogPosition
		newToast.Parent = Main.Main
		newToast.Visible = true

		getgenv().arceus.garbage.toasts[newToast] = newToast.ZIndex
		pages.handleCustomDrag(newToast)

		local offset = UDim2.fromScale(0, ogSize.Y.Scale * 1.25)
		for v, _ in pairs(getgenv().arceus.garbage.toasts) do
			local pos = nil

			if v.Position == finalPosition then
				pos = finalPosition - offset

			elseif v.Position == finalPosition - offset then
				pos = finalPosition - offset - offset

			elseif v.Position == finalPosition - offset - offset then
				pos = finalPosition - offset - offset - offset

			end

			if pos then
				TWEEN_SERVICE:Create(v, TweenInfo.new(
					0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0
					), { Position = pos }):Play()
			end
		end

		--

		TWEEN_SERVICE:Create(newToast, TweenInfo.new(
			0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0
			), { Position = finalPosition }):Play()

		local running = true
		local duration = isLong and 5 or 3
		local lenght = toastContainer.Size.X.Scale/duration

		task.wait(0.5)

		misc.renderer.pushToRendering(function(delta, renderId)
			if running then
				toastBar.Size = toastBar.Size + UDim2.fromScale(lenght * delta, 0)

				if toastBar.Size.X.Scale >= 1 then
					misc.renderer.removeFromRendering(renderId)

					getgenv().arceus.garbage.toasts[newToast] = nil
					TWEEN_SERVICE:Create(newToast, TweenInfo.new(
						0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0
						), { Position = UDim2.new(ogPosition.X.Scale, 0, newToast.Position.Y.Scale, newToast.Position.Y.Offset) }):Play()

					task.wait(0.5)
					newToast:Destroy()
				end
			end
		end)

		newToast.MouseButton1Down:Connect(function()
			running = false
		end)

		newToast.MouseButton1Up:Connect(function()
			running = true
		end)
	end

	getgenv().show_toast = show --newcclosure(show)
	testing_toast = show
end

local showtoast = clonefunction(show_toast) or testing_toast -- Custom toast
getgenv().arceus = {
	show_toast = showtoast, -- Custom toast
	garbage = {}
}

local function closeGui()
	misc.renderer.stopRenddering()
	Main.Main:Destroy()
	script:Destroy()
end

local function deepCopy(data)
	local Copy = {}
	for k,v in pairs(data) do
		Copy[k] = typeof(v) == "table" and deepCopy(v) or v
	end

	return Copy
end

-- Libraries

misc = {
	clipboard = {
		set = function(str: string)
			str = tostring(str) or "Not a String"

			if setclipboard then
				setclipboard(str)
				misc.toast.short("Info", "Copied to clipboard!")
				return true
			end

			if toclipboard then
				toclipboard(str)
				misc.toast.short("Info", "Copied to clipboard!")
				return true
			end

			if isStudio then
				misc.toast.short("Info", "Copied to clipboard!")
			end

			rconsole.warn("This exploit does not support clipboard functions!")
			return false
		end,

		get = function()
			if getclipboard then
				return getclipboard() or ""
			end

			rconsole.warn("This exploit does not support clipboard functions!")
			return "Unable to get the clipboard!"
		end,
	},

	renderer = {
		data = {
			removedFromRendering = Instance.new("BindableEvent"),
			connection = nil,
			id_counter = 0,
			to_remove = {},
			functions = {},
			paused = {}
		},

		pauseFromRendering = function(id: number)
			misc.renderer.data.paused[id] = true
		end,

		resumeFromRendering = function(id: number)
			misc.renderer.data.paused[id] = nil
		end,

		removeFromRendering = function(id: number)		
			if misc.renderer.data.functions[id] then			
				misc.renderer.data.to_remove[id] = true
			end
		end,

		pushToRendering = function(funct)
			misc.renderer.data.id_counter += 1
			local new_id = "r" .. misc.renderer.data.id_counter

			misc.renderer.data.functions[new_id] = funct

			return new_id
		end,

		startRendering = function()
			if misc.renderer.data.connection then
				rconsole.warn("Rendered already connected!")
				return
			end

			misc.renderer.data.connection = RUN_SERVICE.RenderStepped:Connect(function(delta)
				pcall(function()
					for id, v in pairs(misc.renderer.data.functions) do
						if not misc.renderer.data.paused[id] then
							v(delta, id)
						end
					end

					local removed = false
					for id, v in pairs(misc.renderer.data.to_remove) do
						misc.renderer.data.functions[id] = nil
						misc.renderer.data.to_remove[id] = nil
						removed = true
					end

					if removed then
						misc.renderer.data.removedFromRendering:Fire()
					end
				end)
			end)
		end,

		stopRenddering = function()
			if misc.renderer.data.connection then
				misc.renderer.data.connection:Disconnect()
				misc.renderer.data.connection = nil
			end
		end,
	},

	crypt = {
		base64 = {
			encode = base64_encode or function(data: string)
				local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
				return ((data:gsub('.', function(x) 
					local r,b='',x:byte()
					for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
					return r;
				end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
					if (#x < 6) then return '' end
					local c=0
					for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
					return b:sub(c+1,c+1)
				end)..({ '', '==', '=' })[#data%3+1])
			end,

			decode = base64_decode or function(data: string)
				local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
				data = string.gsub(data, '[^'..b..'=]', '')
				return (data:gsub('.', function(x)
					if (x == '=') then return '' end
					local r,f='',(b:find(x)-1)
					for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
					return r;
				end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
					if (#x ~= 8) then return '' end
					local c=0
					for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
					return string.char(c)
				end))
			end
		},

		encryptDecrypt = function(data: string, key: string)
			local output = {}

			for i = 1, #data do
				local charValue = string.byte(data, i)
				local keyValue = string.byte(key, (i - 1) % 3 + 1)
				table.insert(output, string.char(bit32.bxor(charValue, keyValue)))
			end

			return table.concat(output)
		end
	},

	tables = {
		value_changed = function(values: table, funct)
			local proxy = {}
			local meta = {}

			meta.__index = values
			meta.__newindex = function(t, k, v)
				funct(t, k, v)
			end

			return setmetatable(proxy, meta)
		end
	},

	toast = {
		data = {
			send_toast = function(text: string, isLong: boolean, title: string)
				if showtoast then
					showtoast(text, isLong, title)
					return true
				end

				if isStudio then
					print(isLong and "LONG" or "SHORT", "POPUP:", text)
				end

				return false
			end
		},

		short = function(title: string, text: string)
			return misc.toast.data.send_toast(text, false, title)
		end,

		long = function(title: string, text: string)
			return misc.toast.data.send_toast(text, true, title)
		end
	},

	protectInstances = function(parent: Instance)
		parent.Name = randString()
		for _, child in ipairs(parent:GetDescendants()) do
			child.Name = randString()
		end
	end,
}

storage = {
	data = {
		types = {
			Gui = "Gui",
			Configs = "Configs",
			Workspace = "Workspace",
			ScriptHub = "ScriptHub",
			Temporary = "Temporary",
			Autoexecute = "Autoexecute"
		},

		fileType = {
			-- Public
			Workspace = "Workspace",
			ScriptHub = "Script Hub",
			Autoexecute = "Autoexec",

			-- Private
			Configs = "Configs",
			Gui = "Configs/Gui",
			Temporary = "Configs/Temporary",
		},

		scan_files = function(directory: string, recursive: boolean)
			local succ, files = pcall(function()
				return listarceusfiles(directory)
			end)

			local results = {}
			if not succ or not files then
				return false
			end

			for _, file in ipairs(files) do
				if file:sub(1, 1) == "/" then
					file = file:sub(2)
				end

				if isarceusfolder(file) then
					if recursive then
						local newDir = directory .. "/" .. file
						local children = storage.data.scan_files(newDir, true)

						if children then
							for _, child in ipairs(children) do							
								table.insert(results, newDir .. "/" .. child)
							end
						end
					else
						table.insert(results, file)
					end
				else
					table.insert(results, file)
				end
			end

			return results
		end,

		get_duplicated_file_path = function(path: string, counter: number)
			counter = tonumber(counter) or 0
			counter += 1

			local splitted = path:split(".")
			local ext = splitted[#splitted]
			local all = splitted[#splitted -1]
			local next_name = all .. " (" .. counter .. ")." .. ext

			if isarceusfile(next_name) then
				return storage.data.get_duplicated_file_path(path, counter)
			end

			return next_name
		end,
	},

	getFilePath = function(fileType: string, fileName: string)
		local path = storage.data.fileType[fileType]

		if path then
			if isarceusfolder and not isarceusfolder(path) then
				makearceusfolder(path)
			end

			local s, e = fileName:find(path)
			if s and s == 1 then
				fileName = fileName:sub(e+1)
			end

			local pattern = "%s/%s"
			if fileName == "" or fileName:sub(1, 1) == "/" then
				pattern = "%s%s"
			end

			return string.format(pattern, path, fileName)
		end

		return nil
	end,

	isFolder = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfolder then
			return nil
		end

		return isarceusfolder(path)
	end,

	saveFile = function(fileType: string, name: string, body: string, overwrite: boolean, key: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfile or not writearceusfile or not tostring(body) then
			return false
		end

		body = tostring(body)
		if isarceusfile(path) and not overwrite then
			path = storage.data.get_duplicated_file_path(path, nil)
		end

		if key then
			body = misc.crypt.encryptDecrypt(body, key)
		end

		writearceusfile(path, body)
		return true
	end,

	readFile = function(fileType: string, name: string, key: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfile or not readarceusfile then
			return false
		end

		if isarceusfile(path) then
			local data = readarceusfile(path)

			if key then
				data = misc.crypt.encryptDecrypt(data, key)
			end

			return data
		end

		return false
	end,

	loadFile = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not listarceusfiles or not isarceusfile or not loadarceusfile then
			return false
		end

		if isarceusfile(path) then
			loadarceusfile(path)
			return true
		end

		return false
	end,

	getFileSize = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfile or not getfilesize then
			return false
		end

		if isarceusfile(path) then
			return getfilesize(path)
		end

		return false
	end,

	-- autoexecute/   
	listFiles = function(fileType: string, startPath: string, recursive: boolean)
		local path = storage.getFilePath(fileType, startPath or "")

		if not path or not listarceusfiles or not isarceusfolder then
			return false
		end

		return storage.data.scan_files(path, recursive)
	end,

	saveJsonFile = function(fileType: string, name: string, body: table, overwrite: boolean, key: string)
		if typeof(body) ~= "table" then
			return false
		end

		local success, content = pcall(function()
			return HTTP_SERVICE:JSONEncode(body)
		end)

		if success then
			return storage.saveFile(fileType, name, content, overwrite, key)
		else
			rconsole.warn("Error while encoding json file: " .. content)
		end

		return false
	end,

	readJsonFile = function(fileType: string, name: string, key: string)
		local json = storage.readFile(fileType, name, key)
		if not json then
			return false
		end

		local success, content = pcall(function()
			return HTTP_SERVICE:JSONDecode(json)
		end)

		if not success then
			rconsole.warn("Error while decoding json file: " .. content)
			return false
		end

		return typeof(content) == "table" and content or false
	end,

	saveFileFromUrl = function(fileType: string, name: string, url: string, overwrite: boolean, key: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfile then
			return false
		end

		if isarceusfile(path) and not overwrite then
			return false
		end

		local success, data = pcall(function()
			return game:HttpGet(url, true)
		end)

		local result = nil
		if success then
			result = storage.saveFile(fileType, name, data, overwrite, key)
		else
			rconsole.warn("Error saving file from url: " .. result)
		end

		return result
	end,

	saveAssetFromUrl = function(fileType: string, name: string, url: string, overwrite: boolean)
		local path = storage.getFilePath(fileType, name)

		if not path or not iscustomasset then
			return false
		end

		if iscustomasset(path) and not overwrite then
			return false
		end

		local success, data = pcall(function()
			return game:HttpGet(url, true)
		end)

		local result = nil
		if success then
			result = storage.saveFileAsAsset(fileType, name, data, overwrite)
		else
			rconsole.warn("Error saving file from url: " .. data)
		end

		return result
	end,

	saveFileAsAsset = function(fileType: string, name: string, body: string, overwrite: boolean)
		local path = storage.getFilePath(fileType, name)

		if not path or not iscustomasset or not writecustomasset then
			return false
		end

		if iscustomasset(path) and not overwrite then
			return false
		end

		return writecustomasset(path, body)
	end,

	loadFileAsAsset = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not iscustomasset or not retrievecustomasset then
			return false
		end

		if iscustomasset(path) then
			return retrievecustomasset(path)
		end

		return false
	end,

	removeFile = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfile or not deletearceusfile then
			return false
		end

		if isarceusfile(path) then
			deletearceusfile(path)
			return true
		end

		return false
	end,

	createFolder = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfolder or not makearceusfolder then
			return false
		end

		if isarceusfolder(path) then
			return false
		end

		makearceusfolder(path)

		return true
	end,

	removeFolder = function(fileType: string, name: string)
		local path = storage.getFilePath(fileType, name)

		if not path or not isarceusfolder or not deletearceusfolder then
			return false
		end

		if isarceusfolder(path) then
			deletearceusfolder(path)
			return true
		end

		return false
	end,

	clearTempData = function()
		local path = storage.data.fileType["Temporary"]

		if isarceusfolder and deletearceusfolder and makearceusfolder then
			if isarceusfolder(path) then
				deletearceusfolder(path)
			end

			makearceusfolder(path)
		end

		if iscustomasset and deletecustomasset then
			if iscustomasset(path) then -- Checks folders too
				deletecustomasset(path)
			end
		end

		return true
	end,

	clearGuiData = function()
		local path = storage.data.fileType["Gui"]

		if isarceusfolder and deletearceusfolder and makearceusfolder then
			if isarceusfolder(path) then
				deletearceusfolder(path)
			end

			makearceusfolder(path)
		end

		if iscustomasset and deletecustomasset then
			if iscustomasset(path) then -- Checks folders too
				deletecustomasset(path)
			end
		end

		return true
	end
}

authentication = {
	isKeyless = function()
		if true then -- Disabled
			return false
		end

		local success, data = pcall(function()
			return game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Costumers/Flags/workink-keyless", true)
		end)

		if success then
			data = data:gsub("[%s\n]", ""):lower()
			if data == "true" then
				return true
			end
		else
			rconsole.error("Unable to fetch keyless page: " .. data)
		end

		return false
	end,

	isUpdated = function()
		if true then -- Disabled
			return true, select(2, identifyexecutor())
		end

		local success, data = pcall(function()
			local url = "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/version"
			if isiosdevice() then
				url = "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/ios-version"
			elseif isvng() then
				url = "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/version-vng"
			end

			return game:HttpGet(url, true)
		end)

		if success then
			local current = select(2, identifyexecutor()) or false
			data = data:gsub("[%s\n]", ""):lower()			

			if current and data == current:lower() then
				return true, current
			else
				if not current then
					rconsole.warn("Cannot check the installed exploit version!")
				end

				return false, data
			end
		else
			rconsole.error("Unable to fetch version page: " .. data)
		end

		return false, nil
	end,

	isAuthenticated = function(key: string)
		if true then -- Disabled
			return true
		end

		key = key or storage.readFile(storage.data.fileType.Configs, "auth.hy", "hydraauth")
		if not key then
			return false
		end

		storage.saveFile(storage.data.fileType.Configs, "auth.hy", key, true, "hydraauth")

		local status, result = pcall(function() 
			return game:HttpGet(string.format("https://hydraware.online/api/validate?key=%s&hwid=%s", key, gethwid()), true);
		end);

		if status then
			local found = string.find(result, "Valid key")
			if found then
				return true
			end
		end

		return false
	end,

	getKey = function()
		misc.clipboard.set(string.format("https://hydraware.online/api/getkey/proceed-hwid?hwid=%s", gethwid()))
	end
}

--[[
		[ STORAGE ] & [ UI UPDATE CHECK ]
]]

storage.clearTempData() -- Call before GUI Load

do
	local coding_key = "TWVersion"
	local file_name = "version.tw"

	local oldVersion = storage.readFile(storage.data.types.Configs, file_name, coding_key)
	if oldVersion then
		if oldVersion ~= CURRENT_VERSION then
			storage.clearGuiData()
		end
	end
end

configs = {
	data = {
		file_name = "configs.tw",
		coding_key = "TWConfigs",

		confs = nil,
		default = nil,
		connections = {},
		real_confs = nil,

		def_check = function(name)
			if configs.data.default and configs.data.default[name] == nil then
				rconsole.warn("Additional settings are not allowed when loaded with settings table!")
				return false
			end

			return true
		end,

		check = function()
			if not configs.data.real_confs then
				configs.loadSettings({}, false)
			end
		end,
	},

	loadSettings = function(properties: table, removeExtra: boolean)
		local data = storage.readJsonFile(storage.data.types.Configs, configs.data.file_name, configs.data.coding_key)
		local default = {}

		for k, v in pairs(properties) do
			default[k] = v[1]

			if v[2] then
				configs.data.connections[k] = v[2]
			end
		end

		local conf = deepCopy(default)

		if data then
			for k, v in pairs(properties) do
				if data[k] == nil then
					data[k] = default[k]
				end
			end

			if removeExtra then
				for k, v in pairs(data) do
					if default[k] == nil then
						data[k] = nil
					end
				end
			end

			conf = deepCopy(data)
		else
			rconsole.warn("Unable to read saved configs correctly!")
		end

		-- Load settings
		for k, v in pairs(conf) do
			if configs.data.connections[k] then
				configs.data.connections[k](v)
			end
		end

		configs.data.real_confs = conf
		configs.data.default = deepCopy(default)
		configs.data.confs = misc.tables.value_changed(configs.data.real_confs, function(t, k, v)
			if not configs.data.real_confs[k] or typeof(configs.data.real_confs[k]) == typeof(v) or v == nil then
				if configs.data.real_confs[k] ~= v then
					configs.data.real_confs[k] = v

					if configs.data.connections[k] then
						configs.data.connections[k](v)
					end

					task.spawn(function()
						configs.saveSettings()
					end)
				end
			end
		end)
	end,

	saveSettings = function()
		configs.data.check()
		storage.saveJsonFile(storage.data.types.Configs, configs.data.file_name, configs.data.real_confs, true, configs.data.coding_key)
	end,

	connectSetting = function(name: string, funct: funct)
		configs.data.check()

		if not configs.data.def_check(name) then
			return
		end

		if configs.data.connections[name] then
			rconsole.warn("Setting: " .. name .. " is already connected!")
			return
		end

		configs.data.connections[name] = funct
	end,

	overwriteSetting = function(name: string, value: any) -- Can change type
		configs.data.check()

		if not configs.data.def_check(name) then
			return
		end

		if configs.data.confs[name] then
			configs.data.confs[name] = nil
			configs.data.confs[name] = value
		end
	end,

	removeSetting = function(name: string)
		configs.data.check()

		if not configs.data.def_check(name) then
			return
		end

		if configs.data.confs[name] then
			configs.data.confs[name] = nil
		end

		if configs.data.connections[name] then
			configs.data.connections[name] = nil
		end
	end,

	setSetting = function(name: string, value: any)
		configs.data.check()

		if not configs.data.def_check(name) then
			return
		end

		-- Only sets if the type matches or its nil
		configs.data.confs[name] = value
	end,

	getSetting = function(name: string)
		configs.data.check()

		return configs.data.real_confs[name]
	end
}

popups = {
	data = {
		loaded = {},
		created = {},
		current_values = {},
		current_active = "",
		last_active = nil,

		types = {
			["YesNo"] = "YesNo",
			["UpdateDetected"] = "UpdateDetected",
			["UpdateDetectedWithRoblox"] = "UpdateDetectedWithRoblox"
		},

		open = function(frame, name, ...)
			popups.data.current_values = {...}
			popups.data.current_active = name

			local oldFrame = popups.data.last_active
			if oldFrame then
				oldFrame.Visible = false
			end

			popups.data.last_active = frame
			frame.Visible = true
		end,

		setup = function(bindable: BindableEvent, name: string, frame: Frame, positive: GuiButton, negative: GuiButton)
			if popups.data.loaded[name] then
				return
			end

			popups.data.loaded[name] = true

			if bindable then
				bindable.Event:Connect(function()
					frame.Visible = false
				end)

				if negative then
					negative.MouseButton1Click:Connect(function()
						if name == popups.data.current_active then
							bindable:Fire(false, table.unpack(popups.data.current_values))
						end
					end)
				end

				if positive then
					positive.MouseButton1Click:Connect(function()
						if name == popups.data.current_active then
							bindable:Fire(true, table.unpack(popups.data.current_values))
						end
					end)
				end
			end
		end,

		popups = {
			["YesNo"] = function(bindable: BindableEvent, name: string, title: string, text: string, ...)
				local frame = Main.YesNoPopupWindow
				Main.YesNo_PopupTitle.Text = title
				Main.YesNo_PopupText.Text = text

				popups.data.open(frame, name, ...)
				popups.data.setup(bindable, name, frame, Main.YesButton, Main.NoButton)
			end,

			["UpdateDetected"] = function(bindable: BindableEvent, name: string, old: string, ...)
				local frame = Main.UpdateDetected		
				Main.ArceusPastVersion.Text = "v" .. old
				Main.ArceusNewVersion.Text = "v" .. CURRENT_VERSION

				popups.data.open(frame, name, ...)
				popups.data.setup(bindable, name, frame, nil, Main.UpdateArceusXButton)
			end,

			["UpdateDetectedWithRoblox"] = function(bindable: BindableEvent, name: string, new: string, ...)
				local frame = Main.UpdateDetectedWithRoblox
				Main.PastRobloxVersion.Text = "v" .. (getversion and getversion()) or "Unknown"
				Main.NewRobloxVersion.Text = "v" .. new

				popups.data.open(frame, name, new, ...)
				if popups.data.loaded[name] then -- One time load
					return
				end

				Main.UpdateArceusXRobloxButton.MouseButton1Click:Connect(function()
					misc.clipboard.set("")			
				end)

				popups.data.setup(bindable, name, frame, nil, Main.KeySystem_ExitButton2)
			end
		},
	},

	create = function(popupType: string, name: string)
		if not popups.data.popups[popupType] or popups.data.created[name] then
			return nil
		end

		local bindable = Instance.new("BindableEvent")
		bindable.Event:Connect(function()
			--if popupType ~= "UpdateDetectedWithRoblox" then
			--Main.FloatingIcon.Visible = false
			Main.PopupModal.Visible = false
			Main.MainWindow.Visible = popupType ~= "UpdateDetectedWithRoblox"
			--end
		end)

		local data = {
			OnResponse = bindable,
			Show = function(...)
				popups.data.popups[popupType](bindable, name, ...)
				Main.MainWindow.Visible = false
				Main.PopupModal.Visible = true
			end
		}

		popups.data.created[name] = data
		return data
	end,

	get = function(name)
		return popups.data.created[name]
	end,
}

executor = {
	data = {
		coding_key = "AXExecutor",
		file_name = "tabs.ax",
		tab_count = 0,

		highlither = nil,
		editor_tabs = {},
		editor_objects = {},
		editor_added = Instance.new("BindableEvent"),

		get_line_height = function(editor: TextBox)
			local clone = editor:Clone()
			misc.protectInstances(clone)
			--clone.Name = randString()
			clone.Visible = false
			clone.Text = "RescaleBypass"

			clone.Parent = editor
			local lineHeight = clone.TextBounds.Y

			clone:Destroy()
			return lineHeight
		end,

		update_scrolling_position = function(editor: TextBox)
			local scrollingFrame = editor.Parent
			if scrollingFrame and scrollingFrame:IsA("ScrollingFrame") then
				-- Calcola la riga corrente basandoti sulla posizione del cursore
				local textBeforeCursor = editor.Text:sub(1, editor.CursorPosition)
				local currentLine = #textBeforeCursor:split("\n")
				local lineHeight = executor.data.get_line_height(editor)

				-- Calcola la posizione Y della riga corrente
				local currentLineYPosition = (currentLine - 1) * lineHeight

				-- Ottieni la posizione Y attuale e l'altezza visibile dello ScrollingFrame
				local scrollYPosition = scrollingFrame.CanvasPosition.Y
				local visibleHeight = scrollingFrame.AbsoluteWindowSize.Y

				-- Calcola i limiti superiore e inferiore della viewport più un buffer di alcune linee
				local scrollBuffer = lineHeight*1.5  -- buffer per 3 linee
				local upperBound = scrollYPosition + lineHeight
				local lowerBound = scrollYPosition + visibleHeight - scrollBuffer

				-- Aggiusta la posizione dello ScrollingFrame solo se il cursore è fuori dai limiti
				if currentLineYPosition < upperBound then
					-- Il cursore è sopra l'area visibile, scrolla verso l'alto
					scrollingFrame.CanvasPosition = Vector2.new(0, currentLineYPosition-scrollBuffer)
				elseif currentLineYPosition > lowerBound then
					-- Il cursore è sotto l'area visibile, scrolla verso il basso
					scrollingFrame.CanvasPosition = Vector2.new(0, currentLineYPosition - visibleHeight + scrollBuffer)
				end
			end
		end,

		update_lines = function(editor: TextBox, linesFrame: Frame)
			local lines = editor.Text:split("\n")
			local numLines = #lines

			for _, child in ipairs(linesFrame:GetChildren()) do
				if child:IsA("TextLabel") and child ~= Main.LineTemplate then
					child:Destroy()
				end
			end

			local lineHeight = executor.data.get_line_height(editor)

			for i = 1, numLines do
				local label = Main.LineTemplate:Clone()
				misc.protectInstances(label)
				--label.Name = randString()

				label.Text = tostring(i)
				label.Size = UDim2.new(0.9, 0, 0, lineHeight)  -- Imposta l'altezza in pixel
				label.Position = UDim2.new(0, 0, 0, (i - 1) * lineHeight)

				label.Parent = linesFrame
				label.Visible = true
			end

			local scrollingFrame = editor.Parent
			if scrollingFrame and scrollingFrame:IsA("ScrollingFrame") then
				scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, (numLines +.5) * lineHeight)
				executor.data.update_scrolling_position(editor)
			end
		end,

		load_highlighter = function()
				--[[
		TYPES
]]


--[[
		UTILITY
]]

			local utility = {}
			function utility.sanitizeRichText(s: string): string
				return string.gsub(
					string.gsub(string.gsub(string.gsub(string.gsub(s, "&", "&amp;"), "<", "&lt;"), ">", "&gt;"), '"', "&quot;"),
					"'",
					"&apos;"
				)
			end

			function utility.convertTabsToSpaces(s: string): string
				return string.gsub(s, "\t", "    ")
			end

			function utility.removeControlChars(s: string): string
				return string.gsub(s, "[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+", "")
			end

			function utility.getInnerAbsoluteSize(textObject): Vector2
				local fullSize = textObject.AbsoluteSize

				local padding: UIPadding? = textObject:FindFirstChildWhichIsA("UIPadding")
				if padding then
					local offsetX = padding.PaddingLeft.Offset + padding.PaddingRight.Offset
					local scaleX = (fullSize.X * padding.PaddingLeft.Scale) + (fullSize.X * padding.PaddingRight.Scale)
					local offsetY = padding.PaddingTop.Offset + padding.PaddingBottom.Offset
					local scaleY = (fullSize.Y * padding.PaddingTop.Scale) + (fullSize.Y * padding.PaddingBottom.Scale)
					return Vector2.new(fullSize.X - (scaleX + offsetX), fullSize.Y - (scaleY + offsetY))
				else
					return fullSize
				end
			end

			function utility.getTextBounds(textObject): Vector2
				if textObject.ContentText == "" then
					return Vector2.zero
				end

				local textBounds = textObject.TextBounds

				-- Wait for TextBounds to be non-NaN and non-zero because Roblox
				while (textBounds.Y ~= textBounds.Y) or (textBounds.Y < 1) do
					task.wait()
					textBounds = textObject.TextBounds
				end
				return textBounds
			end

			local DEFAULT_TOKEN_COLORS = {
				["background"] = Color3.fromRGB(47, 47, 47),
				["iden"] = Color3.fromRGB(234, 234, 234),
				["keyword"] = Color3.fromRGB(215, 174, 255),
				["builtin"] = Color3.fromRGB(131, 206, 255),
				["string"] = Color3.fromRGB(196, 255, 193),
				["number"] = Color3.fromRGB(255, 125, 125),
				["comment"] = Color3.fromRGB(140, 140, 155),
				["operator"] = Color3.fromRGB(255, 239, 148),
				["custom"] = Color3.fromRGB(119, 122, 255),
			}

--[[
		THEMES
]]

			local theme = {
				tokenColors = {},
				tokenRichTextFormatter = {},
			}

			function theme.setColors(tokenColors)
				assert(type(tokenColors) == "table", "Theme.updateColors expects a table")

				for tokenName, color in tokenColors do
					theme.tokenColors[tokenName] = color
				end
			end

			function theme.getColoredRichText(color: Color3, text: string): string
				return '<font color="#' .. color:ToHex() .. '">' .. text .. "</font>"
			end

			function theme.getColor(tokenName): Color3
				return theme.tokenColors[tokenName]
			end

			function theme.matchStudioSettings(refreshCallback: () -> ()): boolean
				local success = pcall(function()
					-- When not used in a Studio plugin, this will error
					-- and the pcall will just silently return
					local studio = settings().Studio
					local studioTheme = studio.Theme

					local function getTokens()
						return {
							["background"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBackground),
							["iden"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptText),
							["keyword"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptKeyword),
							["builtin"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBuiltInFunction),
							["string"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptString),
							["number"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptNumber),
							["comment"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptComment),
							["operator"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptOperator),
							["custom"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBool),
						}
					end

					theme.setColors(getTokens())
					studio.ThemeChanged:Connect(function()
						studioTheme = studio.Theme
						theme.setColors(getTokens())
						refreshCallback()
					end)
				end)
				return success
			end

			-- Initialize
			theme.setColors(DEFAULT_TOKEN_COLORS)

--[[
		LANGUAGE
]]

			local language = {
				keyword = {
					["and"] = "keyword",
					["break"] = "keyword",
					["continue"] = "keyword",
					["do"] = "keyword",
					["else"] = "keyword",
					["elseif"] = "keyword",
					["end"] = "keyword",
					["export"] = "keyword",
					["false"] = "keyword",
					["for"] = "keyword",
					["function"] = "keyword",
					["if"] = "keyword",
					["in"] = "keyword",
					["local"] = "keyword",
					["nil"] = "keyword",
					["not"] = "keyword",
					["or"] = "keyword",
					["repeat"] = "keyword",
					["return"] = "keyword",
					["self"] = "keyword",
					["then"] = "keyword",
					["true"] = "keyword",
					["type"] = "keyword",
					["typeof"] = "keyword",
					["until"] = "keyword",
					["while"] = "keyword",
				},

				builtin = {
					-- Luau Functions
					["assert"] = "function",
					["error"] = "function",
					["getfenv"] = "function",
					["getmetatable"] = "function",
					["ipairs"] = "function",
					["loadstring"] = "function",
					["newproxy"] = "function",
					["next"] = "function",
					["pairs"] = "function",
					["pcall"] = "function",
					["print"] = "function",
					["rawequal"] = "function",
					["rawget"] = "function",
					["rawlen"] = "function",
					["rawset"] = "function",
					["select"] = "function",
					["setfenv"] = "function",
					["setmetatable"] = "function",
					["tonumber"] = "function",
					["tostring"] = "function",
					["unpack"] = "function",
					["xpcall"] = "function",

					-- Luau Functions (Deprecated)
					["collectgarbage"] = "function",

					-- Luau Variables
					["_G"] = "table",
					["_VERSION"] = "string",

					-- Luau Tables
					["bit32"] = "table",
					["coroutine"] = "table",
					["debug"] = "table",
					["math"] = "table",
					["os"] = "table",
					["string"] = "table",
					["table"] = "table",
					["utf8"] = "table",

					-- Roblox Functions
					["DebuggerManager"] = "function",
					["delay"] = "function",
					["gcinfo"] = "function",
					["PluginManager"] = "function",
					["require"] = "function",
					["settings"] = "function",
					["spawn"] = "function",
					["tick"] = "function",
					["time"] = "function",
					["UserSettings"] = "function",
					["wait"] = "function",
					["warn"] = "function",

					-- Roblox Functions (Deprecated)
					["Delay"] = "function",
					["ElapsedTime"] = "function",
					["elapsedTime"] = "function",
					["printidentity"] = "function",
					["Spawn"] = "function",
					["Stats"] = "function",
					["stats"] = "function",
					["Version"] = "function",
					["version"] = "function",
					["Wait"] = "function",
					["ypcall"] = "function",

					-- Roblox Variables
					["game"] = "Instance",
					["plugin"] = "Instance",
					["script"] = "Instance",
					["shared"] = "Instance",
					["workspace"] = "Instance",

					-- Roblox Variables (Deprecated)
					["Game"] = "Instance",
					["Workspace"] = "Instance",

					-- Roblox Tables
					["Axes"] = "table",
					["BrickColor"] = "table",
					["CatalogSearchParams"] = "table",
					["CFrame"] = "table",
					["Color3"] = "table",
					["ColorSequence"] = "table",
					["ColorSequenceKeypoint"] = "table",
					["DateTime"] = "table",
					["DockWidgetPluginGuiInfo"] = "table",
					["Enum"] = "table",
					["Faces"] = "table",
					["FloatCurveKey"] = "table",
					["Font"] = "table",
					["Instance"] = "table",
					["NumberRange"] = "table",
					["NumberSequence"] = "table",
					["NumberSequenceKeypoint"] = "table",
					["OverlapParams"] = "table",
					["PathWaypoint"] = "table",
					["PhysicalProperties"] = "table",
					["Random"] = "table",
					["Ray"] = "table",
					["RaycastParams"] = "table",
					["Rect"] = "table",
					["Region3"] = "table",
					["Region3int16"] = "table",
					["RotationCurveKey"] = "table",
					["SharedTable"] = "table",
					["task"] = "table",
					["TweenInfo"] = "table",
					["UDim"] = "table",
					["UDim2"] = "table",
					["Vector2"] = "table",
					["Vector2int16"] = "table",
					["Vector3"] = "table",
					["Vector3int16"] = "table",
				},

				libraries = {

					-- Luau Libraries
					bit32 = {
						arshift = "function",
						band = "function",
						bnot = "function",
						bor = "function",
						btest = "function",
						bxor = "function",
						countlz = "function",
						countrz = "function",
						extract = "function",
						lrotate = "function",
						lshift = "function",
						replace = "function",
						rrotate = "function",
						rshift = "function",
					},

					coroutine = {
						close = "function",
						create = "function",
						isyieldable = "function",
						resume = "function",
						running = "function",
						status = "function",
						wrap = "function",
						yield = "function",
					},

					debug = {
						dumpheap = "function",
						getmemorycategory = "function",
						info = "function",
						loadmodule = "function",
						profilebegin = "function",
						profileend = "function",
						resetmemorycategory = "function",
						setmemorycategory = "function",
						traceback = "function",
					},

					math = {
						abs = "function",
						acos = "function",
						asin = "function",
						atan2 = "function",
						atan = "function",
						ceil = "function",
						clamp = "function",
						cos = "function",
						cosh = "function",
						deg = "function",
						exp = "function",
						floor = "function",
						fmod = "function",
						frexp = "function",
						ldexp = "function",
						log10 = "function",
						log = "function",
						max = "function",
						min = "function",
						modf = "function",
						noise = "function",
						pow = "function",
						rad = "function",
						random = "function",
						randomseed = "function",
						round = "function",
						sign = "function",
						sin = "function",
						sinh = "function",
						sqrt = "function",
						tan = "function",
						tanh = "function",

						huge = "number",
						pi = "number",
					},

					os = {
						clock = "function",
						date = "function",
						difftime = "function",
						time = "function",
					},

					string = {
						byte = "function",
						char = "function",
						find = "function",
						format = "function",
						gmatch = "function",
						gsub = "function",
						len = "function",
						lower = "function",
						match = "function",
						pack = "function",
						packsize = "function",
						rep = "function",
						reverse = "function",
						split = "function",
						sub = "function",
						unpack = "function",
						upper = "function",
					},

					table = {
						clear = "function",
						clone = "function",
						concat = "function",
						create = "function",
						find = "function",
						foreach = "function",
						foreachi = "function",
						freeze = "function",
						getn = "function",
						insert = "function",
						isfrozen = "function",
						maxn = "function",
						move = "function",
						pack = "function",
						remove = "function",
						sort = "function",
						unpack = "function",
					},

					utf8 = {
						char = "function",
						codepoint = "function",
						codes = "function",
						graphemes = "function",
						len = "function",
						nfcnormalize = "function",
						nfdnormalize = "function",
						offset = "function",

						charpattern = "string",
					},

					-- Roblox Libraries
					Axes = {
						new = "function",
					},

					BrickColor = {
						Black = "function",
						Blue = "function",
						DarkGray = "function",
						Gray = "function",
						Green = "function",
						new = "function",
						New = "function",
						palette = "function",
						Random = "function",
						random = "function",
						Red = "function",
						White = "function",
						Yellow = "function",
					},

					CatalogSearchParams = {
						new = "function",
					},

					CFrame = {
						Angles = "function",
						fromAxisAngle = "function",
						fromEulerAngles = "function",
						fromEulerAnglesXYZ = "function",
						fromEulerAnglesYXZ = "function",
						fromMatrix = "function",
						fromOrientation = "function",
						lookAt = "function",
						new = "function",

						identity = "CFrame",
					},

					Color3 = {
						fromHex = "function",
						fromHSV = "function",
						fromRGB = "function",
						new = "function",
						toHSV = "function",
					},

					ColorSequence = {
						new = "function",
					},

					ColorSequenceKeypoint = {
						new = "function",
					},

					DateTime = {
						fromIsoDate = "function",
						fromLocalTime = "function",
						fromUniversalTime = "function",
						fromUnixTimestamp = "function",
						fromUnixTimestampMillis = "function",
						now = "function",
					},

					DockWidgetPluginGuiInfo = {
						new = "function",
					},

					Enum = {},

					Faces = {
						new = "function",
					},

					FloatCurveKey = {
						new = "function",
					},

					Font = {
						fromEnum = "function",
						fromId = "function",
						fromName = "function",
						new = "function",
					},

					Instance = {
						new = "function",
					},

					NumberRange = {
						new = "function",
					},

					NumberSequence = {
						new = "function",
					},

					NumberSequenceKeypoint = {
						new = "function",
					},

					OverlapParams = {
						new = "function",
					},

					PathWaypoint = {
						new = "function",
					},

					PhysicalProperties = {
						new = "function",
					},

					Random = {
						new = "function",
					},

					Ray = {
						new = "function",
					},

					RaycastParams = {
						new = "function",
					},

					Rect = {
						new = "function",
					},

					Region3 = {
						new = "function",
					},

					Region3int16 = {
						new = "function",
					},

					RotationCurveKey = {
						new = "function",
					},

					SharedTable = {
						clear = "function",
						clone = "function",
						cloneAndFreeze = "function",
						increment = "function",
						isFrozen = "function",
						new = "function",
						size = "function",
						update = "function",
					},

					task = {
						cancel = "function",
						defer = "function",
						delay = "function",
						desynchronize = "function",
						spawn = "function",
						synchronize = "function",
						wait = "function",
					},

					TweenInfo = {
						new = "function",
					},

					UDim = {
						new = "function",
					},

					UDim2 = {
						fromOffset = "function",
						fromScale = "function",
						new = "function",
					},

					Vector2 = {
						new = "function",

						one = "Vector2",
						xAxis = "Vector2",
						yAxis = "Vector2",
						zero = "Vector2",
					},

					Vector2int16 = {
						new = "function",
					},

					Vector3 = {
						fromAxis = "function",
						FromAxis = "function",
						fromNormalId = "function",
						FromNormalId = "function",
						new = "function",

						one = "Vector3",
						xAxis = "Vector3",
						yAxis = "Vector3",
						zAxis = "Vector3",
						zero = "Vector3",
					},

					Vector3int16 = {
						new = "function",
					},
				},
			}

			-- Filling up language.libraries.Enum table
			local enumLibraryTable = language.libraries.Enum

			for _, enum in ipairs(Enum:GetEnums()) do
				--TODO: Remove tostring from here once there is a better way to get the name of an Enum
				enumLibraryTable[tostring(enum)] = "Enum"
			end

--[[
		LEXER
]]

--[=[
	Lexical scanner for creating a sequence of tokens from Lua source code.
	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight
	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------- Original Penlight lexer author
		ryanjmulder <https://github.com/ryanjmulder> ------------- Penlight lexer contributer
		mpeterv <https://github.com/mpeterv> --------------------- Penlight lexer contributer
		Tieske <https://github.com/Tieske> ----------------------- Penlight lexer contributer
		boatbomber <https://github.com/boatbomber> --------------- Roblox port, added builtin token,
		                                                           added patterns for incomplete syntax, bug fixes,
		                                                           behavior changes, token optimization, thread optimization
		                                                           Added lexer.navigator() for non-sequential reads
		Sleitnick <https://github.com/Sleitnick> ----------------- Roblox optimizations
		howmanysmall <https://github.com/howmanysmall> ----------- Lua + Roblox optimizations

	List of possible tokens:
		- iden
		- keyword
		- builtin
		- string
		- number
		- comment
		- operator
--]=]

			local lexer = {}

			local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+"
			local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+"
			local NUMBER_A = "0[xX][%da-fA-F_]+"
			local NUMBER_B = "0[bB][01_]+"
			local NUMBER_C = "%d+%.?%d*[eE][%+%-]?%d+"
			local NUMBER_D = "%d+[%._]?[%d_eE]*"
			local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+"
			local BRACKETS = "[%[%]]+" -- needs to be separate pattern from other operators or it'll mess up multiline strings
			local IDEN = "[%a_][%w_]*"
			local STRING_EMPTY = "(['\"])%1" --Empty String
			local STRING_PLAIN = "(['\"])[^\n]-([^\\]%1)" --TODO: Handle escaping escapes
			local STRING_INTER = "`[^\n]-`"
			local STRING_INCOMP_A = "(['\"]).-\n" --Incompleted String with next line
			local STRING_INCOMP_B = "(['\"])[^\n]*" --Incompleted String without next line
			local STRING_MULTI = "%[(=*)%[.-%]%1%]" --Multiline-String
			local STRING_MULTI_INCOMP = "%[=*%[.-.*" --Incompleted Multiline-String
			local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]" --Completed Multiline-Comment
			local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*" --Incompleted Multiline-Comment
			local COMMENT_PLAIN = "%-%-.-\n" --Completed Singleline-Comment
			local COMMENT_INCOMP = "%-%-.*" --Incompleted Singleline-Comment
			-- local TYPED_VAR = ":%s*([%w%?%| \t]+%s*)" --Typed variable, parameter, function

			local lang = language
			local lua_keyword = lang.keyword
			local lua_builtin = lang.builtin
			local lua_libraries = lang.libraries

			lexer.language = lang

			local lua_matches = {
				-- Indentifiers
				{ Prefix .. IDEN .. Suffix, "var" },

				-- Numbers
				{ Prefix .. NUMBER_A .. Suffix, "number" },
				{ Prefix .. NUMBER_B .. Suffix, "number" },
				{ Prefix .. NUMBER_C .. Suffix, "number" },
				{ Prefix .. NUMBER_D .. Suffix, "number" },

				-- Strings
				{ Prefix .. STRING_EMPTY .. Suffix, "string" },
				{ Prefix .. STRING_PLAIN .. Suffix, "string" },
				{ Prefix .. STRING_INCOMP_A .. Suffix, "string" },
				{ Prefix .. STRING_INCOMP_B .. Suffix, "string" },
				{ Prefix .. STRING_MULTI .. Suffix, "string" },
				{ Prefix .. STRING_MULTI_INCOMP .. Suffix, "string" },
				{ Prefix .. STRING_INTER .. Suffix, "string_inter" },

				-- Comments
				{ Prefix .. COMMENT_MULTI .. Suffix, "comment" },
				{ Prefix .. COMMENT_MULTI_INCOMP .. Suffix, "comment" },
				{ Prefix .. COMMENT_PLAIN .. Suffix, "comment" },
				{ Prefix .. COMMENT_INCOMP .. Suffix, "comment" },

				-- Operators
				{ Prefix .. OPERATORS .. Suffix, "operator" },
				{ Prefix .. BRACKETS .. Suffix, "operator" },

				-- Unicode
				{ Prefix .. UNICODE .. Suffix, "iden" },

				-- Unknown
				{ "^.", "iden" },
			}

			-- To reduce the amount of table indexing during lexing, we separate the matches now
			local PATTERNS, TOKENS = {}, {}
			for i, m in lua_matches do
				PATTERNS[i] = m[1]
				TOKENS[i] = m[2]
			end

			--- Create a plain token iterator from a string.
			-- @tparam string s a string.

			function lexer.scan(s: string)
				local index = 1
				local size = #s
				local previousContent1, previousContent2, previousContent3, previousToken = "", "", "", ""

				local thread = coroutine.create(function()
					while index <= size do
						local matched = false
						for tokenType, pattern in ipairs(PATTERNS) do
							-- Find match
							local start, finish = string.find(s, pattern, index)
							if start == nil then
								continue
							end

							-- Move head
							index = finish + 1
							matched = true

							-- Gather results
							local content = string.sub(s, start, finish)
							local rawToken = TOKENS[tokenType]
							local processedToken = rawToken

							-- Process token
							if rawToken == "var" then
								-- Since we merge spaces into the tok, we need to remove them
								-- in order to check the actual word it contains
								local cleanContent = string.gsub(content, Cleaner, "")

								if lua_keyword[cleanContent] then
									processedToken = "keyword"
								elseif lua_builtin[cleanContent] then
									processedToken = "builtin"
								elseif string.find(previousContent1, "%.[%s%c]*$") and previousToken ~= "comment" then
									-- The previous was a . so we need to special case indexing things
									local parent = string.gsub(previousContent2, Cleaner, "")
									local lib = lua_libraries[parent]
									if lib and lib[cleanContent] and not string.find(previousContent3, "%.[%s%c]*$") then
										-- Indexing a builtin lib with existing item, treat as a builtin
										processedToken = "builtin"
									else
										-- Indexing a non builtin, can't be treated as a keyword/builtin
										processedToken = "iden"
									end
									-- print("indexing",parent,"with",cleanTok,"as",t2)
								else
									processedToken = "iden"
								end
							elseif rawToken == "string_inter" then
								if not string.find(content, "[^\\]{") then
									-- This inter string doesnt actually have any inters
									processedToken = "string"
								else
									-- We're gonna do our own yields, so the main loop won't need to
									-- Our yields will be a mix of string and whatever is inside the inters
									processedToken = nil

									local isString = true
									local subIndex = 1
									local subSize = #content
									while subIndex <= subSize do
										-- Find next brace
										local subStart, subFinish = string.find(content, "^.-[^\\][{}]", subIndex)
										if subStart == nil then
											-- No more braces, all string
											coroutine.yield("string", string.sub(content, subIndex))
											break
										end

										if isString then
											-- We are currently a string
											subIndex = subFinish + 1
											coroutine.yield("string", string.sub(content, subStart, subFinish))

											-- This brace opens code
											isString = false
										else
											-- We are currently in code
											subIndex = subFinish
											local subContent = string.sub(content, subStart, subFinish - 1)
											for innerToken, innerContent in lexer.scan(subContent) do
												coroutine.yield(innerToken, innerContent)
											end

											-- This brace opens string/closes code
											isString = true
										end
									end
								end
							end

							-- Record last 3 tokens for the indexing context check
							previousContent3 = previousContent2
							previousContent2 = previousContent1
							previousContent1 = content
							previousToken = processedToken or rawToken
							if processedToken then
								coroutine.yield(processedToken, content)
							end
							break
						end

						-- No matches found
						if not matched then
							return
						end
					end

					-- Completed the scan
					return
				end)

				return function()
					if coroutine.status(thread) == "dead" then
						return
					end

					local success, token, content = coroutine.resume(thread)
					if success and token then
						return token, content
					end

					return
				end
			end

			function lexer.navigator()
				local nav = {
					Source = "",
					TokenCache = table.create(50),

					_RealIndex = 0,
					_UserIndex = 0,
					_ScanThread = nil,
				}

				function nav:Destroy()
					self.Source = nil
					self._RealIndex = nil
					self._UserIndex = nil
					self.TokenCache = nil
					self._ScanThread = nil
				end

				function nav:SetSource(SourceString)
					self.Source = SourceString

					self._RealIndex = 0
					self._UserIndex = 0
					table.clear(self.TokenCache)

					self._ScanThread = coroutine.create(function()
						for Token, Src in lexer.scan(self.Source) do
							self._RealIndex += 1
							self.TokenCache[self._RealIndex] = { Token, Src }
							coroutine.yield(Token, Src)
						end
					end)
				end

				function nav.Next()
					nav._UserIndex += 1

					if nav._RealIndex >= nav._UserIndex then
						-- Already scanned, return cached
						return table.unpack(nav.TokenCache[nav._UserIndex])
					else
						if coroutine.status(nav._ScanThread) == "dead" then
							-- Scan thread dead
							return
						else
							local success, token, src = coroutine.resume(nav._ScanThread)
							if success and token then
								-- Scanned new data
								return token, src
							else
								-- Lex completed
								return
							end
						end
					end
				end

				function nav.Peek(PeekAmount)
					local GoalIndex = nav._UserIndex + PeekAmount

					if nav._RealIndex >= GoalIndex then
						-- Already scanned, return cached
						if GoalIndex > 0 then
							return table.unpack(nav.TokenCache[GoalIndex])
						else
							-- Invalid peek
							return
						end
					else
						if coroutine.status(nav._ScanThread) == "dead" then
							-- Scan thread dead
							return
						else
							local IterationsAway = GoalIndex - nav._RealIndex

							local success, token, src = nil, nil, nil

							for _ = 1, IterationsAway do
								success, token, src = coroutine.resume(nav._ScanThread)
								if not (success or token) then
									-- Lex completed
									break
								end
							end

							return token, src
						end
					end
				end

				return nav
			end

--[[
		HIGHLIGHTER
]]

			local highlight_enabled = true
			local Highlighter = {
				defaultLexer = lexer,

				_textObjectData = {},
				_cleanups = {}
			}

--[[
	Gathers the info that is needed in order to set up a line label.
]]
			function Highlighter._getLabelingInfo(textObject)
				local data = Highlighter._textObjectData[textObject]
				if not data then
					return
				end

				local src = utility.convertTabsToSpaces(utility.removeControlChars(textObject.Text))
				local numLines = #string.split(src, "\n")
				if numLines == 0 then
					return
				end

				local textBounds = utility.getTextBounds(textObject)
				local textHeight = textBounds.Y / numLines

				return {
					data = data,
					numLines = numLines,
					textBounds = textBounds,
					textHeight = textHeight,
					innerAbsoluteSize = utility.getInnerAbsoluteSize(textObject),
					textColor = theme.getColor("iden"),
					textFont = textObject.FontFace,
					textSize = textObject.TextSize,
					labelSize = UDim2.new(1, 0, 0, math.ceil(textHeight)),
				}
			end

--[[
	Aligns and matches the line labels to the textObject.
]]
			function Highlighter._alignLabels(textObject)
				local labelingInfo = Highlighter._getLabelingInfo(textObject)
				if not labelingInfo then
					return
				end

				for lineNumber, lineLabel in labelingInfo.data.Labels do
					-- Align line label
					lineLabel.TextColor3 = labelingInfo.textColor
					lineLabel.FontFace = labelingInfo.textFont
					lineLabel.TextSize = labelingInfo.textSize
					lineLabel.Size = labelingInfo.labelSize
					lineLabel.Position =
						UDim2.fromScale(0, labelingInfo.textHeight * (lineNumber - 1) / labelingInfo.innerAbsoluteSize.Y)
				end
			end

--[[
	Creates and populates the line labels with the appropriate rich text.
]]
			function Highlighter._populateLabels(props)
				-- Gather props
				local textObject = props.textObject
				local src = highlight_enabled and utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text)) or ""
				local lexer = props.lexer or Highlighter.defaultLexer
				local customLang = props.customLang
				local forceUpdate = props.forceUpdate

				-- Avoid updating when unnecessary
				local data = Highlighter._textObjectData[textObject]
				if (data == nil) or (data.Text == src) then
					if forceUpdate ~= true then
						return
					end
				end

				-- Ensure textObject matches sanitized src
				if highlight_enabled then
					textObject.Text = src
				end

				local lineLabels = data.Labels
				local previousLines = data.Lines

				local lines = string.split(src, "\n")

				data.Lines = lines
				data.Text = src
				data.Lexer = lexer
				data.CustomLang = customLang

				-- Shortcut empty textObjects
				if src == "" then
					for l = 1, #lineLabels do
						if lineLabels[l].Text == "" then
							continue
						end
						lineLabels[l].Text = ""
					end
					return
				end

				local idenColor = theme.getColor("iden")
				local labelingInfo = Highlighter._getLabelingInfo(textObject)

				local richTextBuffer, bufferIndex, lineNumber = table.create(5), 0, 1
				for token, content: string in lexer.scan(src) do
					local Color = if customLang and customLang[content]
						then theme.getColor("custom")
						else theme.getColor(token) or idenColor

					local tokenLines = string.split(utility.sanitizeRichText(content), "\n")

					for l, tokenLine in tokenLines do
						-- Find line label
						local lineLabel = lineLabels[lineNumber]
						if not lineLabel then
							local newLabel = Instance.new("TextLabel")
							misc.protectInstances(newLabel)
							--newLabel.Name = randString() --"Line_" .. lineNumber
							newLabel.AutoLocalize = false
							newLabel.RichText = true
							newLabel.BackgroundTransparency = 1
							newLabel.Text = ""
							newLabel.TextXAlignment = Enum.TextXAlignment.Left
							newLabel.TextYAlignment = Enum.TextYAlignment.Top
							newLabel.TextColor3 = labelingInfo.textColor
							newLabel.FontFace = labelingInfo.textFont
							newLabel.TextSize = labelingInfo.textSize
							newLabel.Size = labelingInfo.labelSize
							newLabel.Position = UDim2.fromScale(0, labelingInfo.textHeight * (lineNumber - 1) / labelingInfo.innerAbsoluteSize.Y)

							newLabel.Parent = textObject:FindFirstChildWhichIsA("Folder")
							lineLabels[lineNumber] = newLabel
							lineLabel = newLabel
						end

						-- If multiline token, then set line & move to next
						if l > 1 then
							if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
								-- Set line
								lineLabels[lineNumber].Text = table.concat(richTextBuffer)
							end
							-- Move to next line
							lineNumber += 1
							bufferIndex = 0
							table.clear(richTextBuffer)
						end

						-- If changed, add token to line
						if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
							bufferIndex += 1
							-- Only add RichText tags when the color is non-default and the characters are non-whitespace
							if Color ~= idenColor and string.find(tokenLine, "[%S%C]") then
								richTextBuffer[bufferIndex] = theme.getColoredRichText(Color, tokenLine)
							else
								richTextBuffer[bufferIndex] = tokenLine
							end
						end
					end
				end

				-- Set final line
				if richTextBuffer[1] and lineLabels[lineNumber] then
					lineLabels[lineNumber].Text = table.concat(richTextBuffer)
				end

				-- Clear unused line labels
				for l = lineNumber + 1, #lineLabels do
					if lineLabels[l].Text == "" then
						continue
					end
					lineLabels[l].Text = ""
				end
			end

--[[
	Highlights the given textObject with the given props and returns a cleanup function.
	Highlighting will automatically update when needed, so the cleanup function will disconnect
	those connections and remove all labels.
]]
			function Highlighter.highlight(props): () -> ()
				-- Gather props
				local textObject = props.textObject
				local src = utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text))
				local lexer = props.lexer or Highlighter.defaultLexer
				local customLang = props.customLang

				-- Avoid updating when unnecessary
				if Highlighter._cleanups[textObject] then
					-- Already been initialized, so just update
					Highlighter._populateLabels(props)
					Highlighter._alignLabels(textObject)
					return Highlighter._cleanups[textObject]
				end

				-- Ensure valid object properties
				textObject.RichText = false
				if highlight_enabled then
					textObject.Text = src
				end

				textObject.TextXAlignment = Enum.TextXAlignment.Left
				textObject.TextYAlignment = Enum.TextYAlignment.Top
				textObject.BackgroundColor3 = theme.getColor("background")
				textObject.TextColor3 = theme.getColor("iden")
				textObject.TextTransparency = 0.5

				-- Build the highlight labels
				local lineFolder = textObject:FindFirstChildWhichIsA("Folder") --textObject:FindFirstChild("SyntaxHighlights")
				if lineFolder == nil then
					local newLineFolder = Instance.new("Folder")
					misc.protectInstances(newLineFolder)
					--newLineFolder.Name = randString() -- "SyntaxHighlights"
					newLineFolder.Parent = textObject

					lineFolder = newLineFolder
				end

				local data = {
					Text = "",
					Labels = {},
					Lines = {},
					Lexer = lexer,
					CustomLang = customLang,
				}
				Highlighter._textObjectData[textObject] = data

				-- Add a cleanup handler for this textObject
				local connections: { [string]: RBXScriptConnection } = {}
				local function cleanup()
					lineFolder:Destroy()

					Highlighter._textObjectData[textObject] = nil
					Highlighter._cleanups[textObject] = nil

					for _key, connection in connections do
						connection:Disconnect()
					end
					table.clear(connections)
				end
				Highlighter._cleanups[textObject] = cleanup

				connections["AncestryChanged"] = textObject.AncestryChanged:Connect(function()
					if textObject.Parent then
						return
					end

					cleanup()
				end)
				connections["TextChanged"] = textObject:GetPropertyChangedSignal("Text"):Connect(function()
					Highlighter._populateLabels(props)
				end)
				connections["TextBoundsChanged"] = textObject:GetPropertyChangedSignal("TextBounds"):Connect(function()
					Highlighter._alignLabels(textObject)
				end)
				connections["AbsoluteSizeChanged"] = textObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					Highlighter._alignLabels(textObject)
				end)
				connections["FontFaceChanged"] = textObject:GetPropertyChangedSignal("FontFace"):Connect(function()
					Highlighter._alignLabels(textObject)
				end)

				-- Ax Edit
				connections["Focused"] = textObject.Focused:Connect(function()
					highlight_enabled = false
					Highlighter._populateLabels(props)
					Highlighter._alignLabels(textObject)
				end)
				connections["FocusLost"] = textObject.FocusLost:Connect(function()
					highlight_enabled = true
					Highlighter._populateLabels(props)
					Highlighter._alignLabels(textObject)
				end)

				-- Populate the labels
				Highlighter._populateLabels(props)
				Highlighter._alignLabels(textObject)

				return cleanup
			end

--[[
	Refreshes all highlighted textObjects. Used when the theme changes.
]]
			function Highlighter.refresh(): ()
				-- Rehighlight existing labels using latest colors
				for textObject, data in Highlighter._textObjectData do
					for _, lineLabel in data.Labels do
						lineLabel.TextColor3 = theme.getColor("iden")
					end

					Highlighter.highlight({
						textObject = textObject,
						forceUpdate = true,
						src = data.Text,
						lexer = data.Lexer,
						customLang = data.CustomLang,
					})
				end
			end

--[[
	Sets the token colors to the given colors and refreshes all highlighted textObjects.
]]
			function Highlighter.setTokenColors(colors): ()
				theme.setColors(colors)

				Highlighter.refresh()
			end

--[[
	Gets a token color by name.
	Mainly useful for setting "background" token color on other UI objects behind your text.
]]
			function Highlighter.getTokenColor(tokenName): Color3
				return theme.getColor(tokenName)
			end

--[[
	Matches the token colors to the Studio theme settings and refreshes all highlighted textObjects.
	Does nothing when not run in a Studio plugin.
]]
			function Highlighter.matchStudioSettings(): ()
				local applied = theme.matchStudioSettings(Highlighter.refresh)
				if applied then
					Highlighter.refresh()
				end
			end

			executor.data.highlighter = Highlighter
			return Highlighter
		end,
	},

	push = function(source: string, noConfirm: boolean, safetyAdvice: string)
		source = tostring(source) or "-- Source is not a string"

		if not tsuo_loaded then
			return
		end

		if not safetyAdvice and (noConfirm or not configs.getSetting("ConfirmationPopup")) then
			if executecode then
				executecode(source)
				misc.toast.short("Info", "Script executed!")
			else
				task.spawn(loadstring(source))
				rconsole.warn("Script executed using loadstring, this exploit doesnt support executecode function!")
				misc.toast.short("Info", "Script executed!")
			end
		else
			local popup = popups.get("executor")
			if popup then
				local tit, msg = "Execute", "Do you want to execute this script?"

				if safetyAdvice then
					tit = "Warning!"
					msg = safetyAdvice
				end

				popup.Show(tit, msg, source)
			end
		end
	end,

	pushclipboard = function(noConfirm: boolean)
		if not tsuo_loaded then
			return
		end

		if noConfirm or not configs.getSetting("ConfirmationPopup") then
			if executeclipboard then
				local succ, err = pcall(function()
					executeclipboard()
					misc.toast.short("Info", "Script executed!")
				end)

				if not succ then
					misc.toast.short("Error", "Script failed to execute!")
				end
			end
		else
			local popup = popups.get("clipexecutor")
			if popup then
				popup.Show("Execute clipboard", "Do you want to execute the script from your clipboard?")
			end
		end
	end,

	addEditor = function(editor: TextBox, execute: GuiButton, lines: Frame)
		if executor.data.editor_objects[editor] or executor.data.editor_objects[execute] or executor.data.editor_objects[lines] then
			return false
		end		

		executor.data.editor_objects[editor] = true
		local highlighter = executor.data.highlighter
		if not highlighter then
			highlighter = executor.data.load_highlighter()
		end	

		if execute then
			executor.data.editor_objects[execute] = true
			local holdable = buttons.holdable(execute, false)

			holdable.ShortClick.Event:Connect(function()
				if configs.getSetting("ConfirmationPopup") then
					if editor.Text ~= "" then
						executor.push(editor.Text, false)
					end
				else
					misc.toast.short("Info", "Hold the button to execute!")
				end
			end)

			holdable.LongClick.Event:Connect(function()
				if editor.Text ~= "" then
					executor.push(editor.Text, false)
				end
			end)
		end

		if lines then
			executor.data.editor_objects[lines] = true

			editor:GetPropertyChangedSignal("Text"):Connect(function()
				executor.data.update_lines(editor, lines)
			end)	
			executor.data.update_lines(editor, lines)
		end

		editor.FocusLost:Connect(function()
			executor.data.update_scrolling_position(editor)
		end)

		editor:GetPropertyChangedSignal("CursorPosition"):Connect(function()
			executor.data.update_scrolling_position(editor)
		end)

		highlighter.highlight({
			textObject = editor
		})

		return editor
	end
}

pages = {
	data = {
		handled_page_dragging = {},
		handled_page_layouts = {},
		mainwindow_pages = {},

		current_page = 0,
		last_nav_page = 1,
		pages_per_bar = 4,
		custom_swipe_treshold = 0.15,
	},

	handlePageLayout = function(pageLayout: UIPageLayout, onPageChanged: funct, indicator: Frame, customSwipe: boolean, prevButtons: list, nextButtons: list)
		local indicators = {}

		if pages.data.handled_page_layouts[pageLayout] then
			return
		end

		local counter = 0
		pages.data.handled_page_layouts[pageLayout] = {}
		for _, page in ipairs(pageLayout.Parent:GetChildren()) do
			if (page:IsA("Frame") or page:IsA("GuiButton") or page:IsA("TextLabel") or page:IsA("TextBox") or page:IsA("ImageLabel")) and page.Visible then
				pages.data.handled_page_layouts[pageLayout][page] = counter--page.LayoutOrder
				counter += 1
			end
		end

		pageLayout.Stopped:Connect(function(page)
			local pageNum = pages.data.handled_page_layouts[pageLayout][page]
			if pageNum then -- Prevents nil page on load
				pageNum += 1

				if onPageChanged then
					onPageChanged(pageNum)
				end
			end
		end)

		if prevButtons then
			for _, button in ipairs(prevButtons) do
				button.MouseButton1Click:Connect(function()
					pageLayout:Previous()
				end)
			end
		end

		if nextButtons then
			for _, button in ipairs(nextButtons) do
				button.MouseButton1Click:Connect(function()
					pageLayout:Next()
				end)
			end
		end

		if customSwipe then
			local container = pageLayout.Parent
			local initialTouchPosition = nil

			container.Active = true
			pageLayout.TouchInputEnabled = false

			container.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch then
					initialTouchPosition = input.Position
				end
			end)

			USER_INPUT_SERVICE.TouchEnded:Connect(function(input, processed)
				if processed or not container.Active then
					return
				end

				if input.UserInputType == Enum.UserInputType.Touch and initialTouchPosition then
					local delta = input.Position - initialTouchPosition
					local swipeThreshold

					if pageLayout.FillDirection == Enum.FillDirection.Horizontal then
						swipeThreshold = container.AbsoluteSize.X * pages.data.custom_swipe_treshold
						if math.abs(delta.X) > swipeThreshold then
							if delta.X > 0 then
								pageLayout:Previous()
							else
								pageLayout:Next()
							end
						end
					else
						swipeThreshold = container.AbsoluteSize.Y * pages.data.custom_swipe_treshold
						if math.abs(delta.Y) > swipeThreshold then
							if delta.Y > 0 then 
								pageLayout:Previous()
							else
								pageLayout:Next()
							end
						end
					end

					initialTouchPosition = nil
				end
			end)
		end
	end,

	addPage = function(button: GuiButton, page: GuiObject)
		table.insert(pages.data.mainwindow_pages, { element = button })
		local pageNum = #pages.data.mainwindow_pages
		page.LayoutOrder = pageNum -1

		if pageNum == 1 then
			pages.setMainPageByIndex(1)
		end

		button.MouseButton1Click:Connect(function()
			for _, v in ipairs(Main.NavBar:GetChildren()) do
				if v:IsA("GuiButton") then
					v.BackgroundTransparency = 1
				end
			end

			button.BackgroundTransparency = 0.85
			pages.setMainPageByIndex(pageNum)
		end)
	end,

	setMainPageByIndex = function(page: number)
		local mainPages = pages.data.mainwindow_pages
		page = page or pages.data.current_page

		page = page < 1 and 1 or page
		page = page > #mainPages and #mainPages or page
		page = page

		local elem = mainPages[page].element
		local space = Main.NavBar.AbsoluteSize.X * Main.SideBar_UIListLayout.Padding.Scale
		local pageIndex = page -1

		TWEEN_SERVICE:Create(Main.PageIndicator, TweenInfo.new(
			1.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0	
			), { Position = UDim2.new(0, (elem.AbsoluteSize.X + space) * (pageIndex % pages.data.pages_per_bar +1) - elem.AbsoluteSize.X - space + Main.PageIndicator.AbsoluteSize.X, 0.9, 0)}):Play()

		if page == pages.data.current_page then
			return
		end

		pages.data.current_page = page
		Main.Main_UIPageLayout:JumpToIndex(pageIndex)
	end,

	handleCustomDrag = function(object: GuiObject)
		local lastMousePos, dragging, startPos, viewportSize
		pages.data.handled_page_dragging[object] = true
		object.Draggable = false
		object.Active = true

		local function Update(dt, renderId)
			if not object.Active or not object.Visible then
				return
			end

			if not object then
				misc.renderer.removeFromRendering(renderId)
			end

			local camera = game.Workspace.CurrentCamera
			viewportSize = camera.ViewportSize

			if not dragging or not startPos or not lastMousePos then
				return
			end

			local delta = (lastMousePos - USER_INPUT_SERVICE:GetMouseLocation())
			local xGoal = startPos.X.Offset - delta.X
			local yGoal = startPos.Y.Offset - delta.Y
			local anchor = object.AnchorPoint
			local size = object.AbsoluteSize
			local pos = object.Position

			-- Clamp the position within the screen boundaries
			local xOffsize = size.X - (size.X * anchor.X) - viewportSize.Y * 0.1
			local yOffsize = size.Y - (size.Y * anchor.Y) - viewportSize.Y * 0.1

			xGoal = math.clamp(xGoal, -xOffsize, viewportSize.X + xOffsize)
			yGoal = math.clamp(yGoal, -yOffsize, viewportSize.Y + yOffsize)

			lastMousePos = USER_INPUT_SERVICE:GetMouseLocation()
			startPos = UDim2.new(pos.X.Scale, xGoal, pos.Y.Scale, yGoal)

			object.Position = startPos
		end

		object.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local pos = object.Position
				dragging = true

				startPos = UDim2.fromOffset(pos.X.Scale * viewportSize.X + pos.X.Offset, pos.Y.Scale * viewportSize.Y + pos.Y.Offset) --object.Position
				object.Position = startPos

				lastMousePos = USER_INPUT_SERVICE:GetMouseLocation()

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		return misc.renderer.pushToRendering(Update)
	end,

	isDraggable = function(object: GuiObject)
		return pages.data.handled_page_dragging[object] or object.Draggable
	end
}

buttons = {
	data = {
		drag_min = 15,
		long_click_time = 0.5,
		multi_click_time = 0.35,

		has_been_dragged = function(lastPos: UDim2, newPos: UDim2)
			if not lastPos or not newPos then
				return false
			end

			return math.abs((lastPos - newPos).Magnitude) > buttons.data.drag_min
		end,
	},

	holdable = function(button: GuiButton, waitForRelease: boolean)
		local clickFetch = Instance.new("BindableEvent")
		local shortClick = Instance.new("BindableEvent")
		local longClick = Instance.new("BindableEvent")
		local lastPress = nil
		local enabled = true
		local lastPos = nil

		button.MouseButton1Down:Connect(function()
			if not enabled then
				return
			end

			lastPos = button.AbsolutePosition
			lastPress = os.clock()

			if not waitForRelease then
				task.spawn(function()
					local exit = false

					local callback
					callback = clickFetch.Event:Connect(function()
						if not exit then
							shortClick:Fire(button, os.clock() - lastPress)
							exit = true
						end
					end)

					task.wait(buttons.data.long_click_time + 0.05)

					if not exit then
						exit = true
						if pages.isDraggable(button) and buttons.data.has_been_dragged(lastPos, button.AbsolutePosition) then
							return
						end

						longClick:Fire(button, os.clock() - lastPress)
					end
				end)
			end
		end)

		button.MouseButton1Up:Connect(function()
			if not enabled then
				return
			end

			if pages.isDraggable(button) and buttons.data.has_been_dragged(lastPos, button.AbsolutePosition) then
				return
			end

			if not waitForRelease then
				clickFetch:Fire()
				return
			end

			local clickTime = os.clock() - lastPress
			if lastPress and clickTime >= buttons.data.long_click_time then
				longClick:Fire(button, clickTime)
			else
				shortClick:Fire(button, clickTime)
			end
		end)

		local main = {
			ShortClick = shortClick, 
			LongClick = longClick,
			Enabled = enabled,
			Button = button
		}

		return misc.tables.value_changed(main, function(t, k, v)
			if k == "Enabled" and typeof(v) == "boolean" and enabled ~= v then
				main[k] = v
				enabled = v

				misc.animations.elementStatus(button, v)
			end
		end)
	end
}

-- End of libraries

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

Main.Main.Name = randString()
Main.Main.IgnoreGuiInset = true
Main.Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.FloatingIcon.Name = randString()
Main.FloatingIcon.AnchorPoint = Vector2.new(0.5, 0.5)
Main.FloatingIcon.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
Main.FloatingIcon.BackgroundTransparency = 0.5
Main.FloatingIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.FloatingIcon.BorderSizePixel = 0
Main.FloatingIcon.Position = UDim2.new(0.8, 0, 0.7, 0)
Main.FloatingIcon.Size = UDim2.new(0.104, 0, 0.185, 0)
Main.FloatingIcon.Visible = false
Main.FloatingIcon.ZIndex = -5
Main.FloatingIcon.ImageTransparency = 1

Main.UICorner.CornerRadius = UDim.new(1, 0)
Main.UICorner.Name = randString()

Main.UIPadding.Name = randString()
Main.UIPadding.PaddingBottom = UDim.new(0.15, 0)
Main.UIPadding.PaddingLeft = UDim.new(0.15, 0)
Main.UIPadding.PaddingRight = UDim.new(0.15, 0)
Main.UIPadding.PaddingTop = UDim.new(0.15, 0)

Main.UIAspectRatioConstraint.Name = randString()

Main.FloatingIconImage.Name = randString()
Main.FloatingIconImage.AnchorPoint = Vector2.new(0.5, 0.5)
Main.FloatingIconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.FloatingIconImage.BackgroundTransparency = 1
Main.FloatingIconImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.FloatingIconImage.BorderSizePixel = 0
Main.FloatingIconImage.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.FloatingIconImage.Size = UDim2.new(1, 0, 1, 0)
Main.FloatingIconImage.Image = loadImage("rbxassetid://92969664581353", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/5e1e13e796089584a62e2930664b484564631c50/Images/Floating%20icon.png")

Main.MainWindow.Name = randString()
Main.MainWindow.AnchorPoint = Vector2.new(0.5, 0.5)
Main.MainWindow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.MainWindow.BackgroundTransparency = 0.15
Main.MainWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.MainWindow.BorderSizePixel = 0
Main.MainWindow.ClipsDescendants = true
Main.MainWindow.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.MainWindow.Size = UDim2.new(0.65, 0, 0.65, 0)

Main.UIAspectRatioConstraint_2.Name = randString()
Main.UIAspectRatioConstraint_2.AspectRatio = 1.728

Main.UICorner_2.CornerRadius = UDim.new(0.05, 0)
Main.UICorner_2.Name = randString()

Main.UIPadding_2.Name = randString()
Main.UIPadding_2.PaddingBottom = UDim.new(0.06, 0)
Main.UIPadding_2.PaddingLeft = UDim.new(0.035, 0)
Main.UIPadding_2.PaddingRight = UDim.new(0.035, 0)
Main.UIPadding_2.PaddingTop = UDim.new(0.025, 0)

Main.TopBar.Name = randString()
Main.TopBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Main.TopBar.BackgroundTransparency = 1
Main.TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TopBar.BorderSizePixel = 0
Main.TopBar.Position = UDim2.new(0, 0, 0, 0)
Main.TopBar.Size = UDim2.new(1, 0, 0.138, 0)

Main.TopBar_UICorner.CornerRadius = UDim.new(0.25, 0)
Main.TopBar_UICorner.Name = randString()

Main.AppTitle.Name = randString()
Main.AppTitle.AnchorPoint = Vector2.new(0, 0.5)
Main.AppTitle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Main.AppTitle.BackgroundTransparency = 1
Main.AppTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.AppTitle.BorderSizePixel = 0
Main.AppTitle.LayoutOrder = 1
Main.AppTitle.Position = UDim2.new(0.372, 0, 0.5, 0)
Main.AppTitle.Size = UDim2.new(0.254, 0, 1, 0)

Main.AppTitle_UIListLayout.Name = randString()
Main.AppTitle_UIListLayout.FillDirection = Enum.FillDirection.Horizontal
Main.AppTitle_UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.AppTitle_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Main.AppTitle_UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
Main.AppTitle_UIListLayout.Padding = UDim.new(0.1, 0)

Main.AppTitle_Text.Name = randString()
Main.AppTitle_Text.AnchorPoint = Vector2.new(1, 1)
Main.AppTitle_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.AppTitle_Text.BackgroundTransparency = 1
Main.AppTitle_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.AppTitle_Text.BorderSizePixel = 0
Main.AppTitle_Text.Position = UDim2.new(-0.212, 0, 1.594, 0)
Main.AppTitle_Text.Size = UDim2.new(0.676, 0, 0.6, 0)
Main.AppTitle_Text.Font = Enum.Font.Unknown
Main.AppTitle_Text.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.AppTitle_Text.Text = "Lures Ware"
Main.AppTitle_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.AppTitle_Text.TextScaled = true
Main.AppTitle_Text.TextSize = 14
Main.AppTitle_Text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.AppTitle_Text.TextWrapped = true

Main.AppTitle_Logo.Name = randString()
Main.AppTitle_Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Main.AppTitle_Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.AppTitle_Logo.BackgroundTransparency = 1
Main.AppTitle_Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.AppTitle_Logo.BorderSizePixel = 0
Main.AppTitle_Logo.LayoutOrder = -1
Main.AppTitle_Logo.Position = UDim2.new(-0.48, 0, 0.5, 0)
Main.AppTitle_Logo.Size = UDim2.new(0.268, 0, 0.99, 0)
Main.AppTitle_Logo.Image = loadImage("rbxassetid://92969664581353", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Images/Logo%20NEO.png")

Main.AppInfo.Name = randString()
Main.AppInfo.AnchorPoint = Vector2.new(0, 0.5)
Main.AppInfo.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Main.AppInfo.BackgroundTransparency = 1
Main.AppInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.AppInfo.BorderSizePixel = 0
Main.AppInfo.Position = UDim2.new(0, 0, 0.5, 0)
Main.AppInfo.Size = UDim2.new(0.107, 0, 0.75, 0)

Main.AppVersion_Text.Name = randString()
Main.AppVersion_Text.AnchorPoint = Vector2.new(0.5, 0.5)
Main.AppVersion_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.AppVersion_Text.BackgroundTransparency = 1
Main.AppVersion_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.AppVersion_Text.BorderSizePixel = 0
Main.AppVersion_Text.Position = UDim2.new(0.5, 0, 0.35, 0)
Main.AppVersion_Text.Size = UDim2.new(0.676, 0, 0.4, 0)
Main.AppVersion_Text.Font = Enum.Font.SourceSansBold
Main.AppVersion_Text.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.AppVersion_Text.Text = "Version"
Main.AppVersion_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.AppVersion_Text.TextScaled = true
Main.AppVersion_Text.TextSize = 14
Main.AppVersion_Text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.AppVersion_Text.TextTransparency = 0.2
Main.AppVersion_Text.TextWrapped = true

Main.AppVersion.Name = randString()
Main.AppVersion.AnchorPoint = Vector2.new(0.5, 1)
Main.AppVersion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.AppVersion.BackgroundTransparency = 1
Main.AppVersion.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.AppVersion.BorderSizePixel = 0
Main.AppVersion.Position = UDim2.new(0.5, 0, 1, 0)
Main.AppVersion.Size = UDim2.new(0.676, 0, 0.6, 0)
Main.AppVersion.Font = Enum.Font.SourceSansBold
Main.AppVersion.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.AppVersion.Text = "1.0.0"
Main.AppVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.AppVersion.TextScaled = true
Main.AppVersion.TextSize = 14
Main.AppVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.AppVersion.TextWrapped = true

Main.CloseButton.Name = randString()
Main.CloseButton.AnchorPoint = Vector2.new(1, 0.5)
Main.CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.CloseButton.BackgroundTransparency = 1
Main.CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.CloseButton.BorderSizePixel = 0
Main.CloseButton.LayoutOrder = 2
Main.CloseButton.Position = UDim2.new(1.005, 0, 0.5, 0)
Main.CloseButton.Size = UDim2.new(0.5, 0, 0.5, 0)
Main.CloseButton.Image = loadImage("rbxassetid://14925930646", nil)

Main.Separator.Name = randString()
Main.Separator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Separator.BackgroundTransparency = 0.25
Main.Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Separator.BorderSizePixel = 0
Main.Separator.Position = UDim2.new(-0.038, 0, 0.15, 0)
Main.Separator.Size = UDim2.new(1.075, 0, 0.005, 0)

Main.SideBar.Name = randString()
Main.SideBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Main.SideBar.BackgroundTransparency = 1
Main.SideBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.SideBar.BorderSizePixel = 0
Main.SideBar.ClipsDescendants = true
Main.SideBar.Position = UDim2.new(0, 0, 0.185, 0)
Main.SideBar.Size = UDim2.new(1, 0, 0.125, 0)

Main.PageIndicator.Name = randString()
Main.PageIndicator.AnchorPoint = Vector2.new(0, 0.5)
Main.PageIndicator.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.PageIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PageIndicator.BorderSizePixel = 0
Main.PageIndicator.Position = UDim2.new(0.077, 0, 0.9, 0)
Main.PageIndicator.Size = UDim2.new(0.081, 0, 0.15, 0)
Main.PageIndicator.ZIndex = 500

Main.Navigation.Name = randString()
Main.Navigation.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Main.Navigation.BackgroundTransparency = 1
Main.Navigation.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Navigation.BorderSizePixel = 0
Main.Navigation.ClipsDescendants = true
Main.Navigation.Size = UDim2.new(1, 0, 1, 0)

Main.NavBar.Name = randString()
Main.NavBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.NavBar.BackgroundTransparency = 1
Main.NavBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar.BorderSizePixel = 0
Main.NavBar.Size = UDim2.new(1, 0, 1, 0)

Main.SideBar_UIListLayout.Name = randString()
Main.SideBar_UIListLayout.FillDirection = Enum.FillDirection.Horizontal
Main.SideBar_UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.SideBar_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Main.SideBar_UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
Main.SideBar_UIListLayout.Padding = UDim.new(0.03, 0)

Main.SideBar_UIPadding.Name = randString()
Main.SideBar_UIPadding.PaddingLeft = UDim.new(0.1, 0)
Main.SideBar_UIPadding.PaddingRight = UDim.new(0.1, 0)

Main.NavBar_Home.Name = randString()
Main.NavBar_Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_Home.BackgroundTransparency = 0.85
Main.NavBar_Home.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Home.BorderSizePixel = 0
Main.NavBar_Home.Position = UDim2.new(0.065, 0, 0, 0)
Main.NavBar_Home.Size = UDim2.new(0.3, 0, 1, 0)
Main.NavBar_Home.Font = Enum.Font.SourceSans
Main.NavBar_Home.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.NavBar_Home.Text = ""
Main.NavBar_Home.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Home.TextScaled = true
Main.NavBar_Home.TextSize = 14
Main.NavBar_Home.TextWrapped = true

Main.Text.Name = randString()
Main.Text.AnchorPoint = Vector2.new(1, 1)
Main.Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text.BackgroundTransparency = 1
Main.Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text.BorderSizePixel = 0
Main.Text.LayoutOrder = 1
Main.Text.Position = UDim2.new(0.977, 0, -0.214, 0)
Main.Text.Size = UDim2.new(0.8, 0, 0.95, 0)
Main.Text.Font = Enum.Font.SourceSansSemibold
Main.Text.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Main.Text.Text = "Home"
Main.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text.TextScaled = true
Main.Text.TextSize = 14
Main.Text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text.TextWrapped = true

Main.NavBar_HomeIMG.Name = randString()
Main.NavBar_HomeIMG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_HomeIMG.BackgroundTransparency = 1
Main.NavBar_HomeIMG.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_HomeIMG.BorderSizePixel = 0
Main.NavBar_HomeIMG.Size = UDim2.new(1.15, 0, 1.15, 0)
Main.NavBar_HomeIMG.Image = loadImage("rbxassetid://16548334799", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Images/Nav%20Icons/Home%20icon.png")

Main.SideBar_UIListLayout_2.Name = randString()
Main.SideBar_UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
Main.SideBar_UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.SideBar_UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
Main.SideBar_UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

Main.SideBar_UIPadding_2.Name = randString()
Main.SideBar_UIPadding_2.PaddingBottom = UDim.new(0.15, 0)
Main.SideBar_UIPadding_2.PaddingLeft = UDim.new(0.1, 0)
Main.SideBar_UIPadding_2.PaddingRight = UDim.new(0.1, 0)
Main.SideBar_UIPadding_2.PaddingTop = UDim.new(0.15, 0)

Main.NavBar_Executor.Name = randString()
Main.NavBar_Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_Executor.BackgroundTransparency = 1
Main.NavBar_Executor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Executor.BorderSizePixel = 0
Main.NavBar_Executor.LayoutOrder = 1
Main.NavBar_Executor.Position = UDim2.new(0.065, 0, 0, 0)
Main.NavBar_Executor.Size = UDim2.new(0.3, 0, 1, 0)
Main.NavBar_Executor.Font = Enum.Font.SourceSans
Main.NavBar_Executor.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.NavBar_Executor.Text = ""
Main.NavBar_Executor.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Executor.TextScaled = true
Main.NavBar_Executor.TextSize = 14
Main.NavBar_Executor.TextWrapped = true

Main.Text_2.Name = randString()
Main.Text_2.AnchorPoint = Vector2.new(1, 1)
Main.Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_2.BackgroundTransparency = 1
Main.Text_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_2.BorderSizePixel = 0
Main.Text_2.LayoutOrder = 1
Main.Text_2.Position = UDim2.new(1.125, 0, 1.201, 0)
Main.Text_2.Size = UDim2.new(0.8, 0, 0.95, 0)
Main.Text_2.Font = Enum.Font.SourceSansSemibold
Main.Text_2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Main.Text_2.Text = "Executor"
Main.Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_2.TextScaled = true
Main.Text_2.TextSize = 14
Main.Text_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_2.TextWrapped = true

Main.NavBar_HomeIMG_2.Name = randString()
Main.NavBar_HomeIMG_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_HomeIMG_2.BackgroundTransparency = 1
Main.NavBar_HomeIMG_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_HomeIMG_2.BorderSizePixel = 0
Main.NavBar_HomeIMG_2.Size = UDim2.new(1.15, 0, 1.15, 0)
Main.NavBar_HomeIMG_2.Image = loadImage("rbxassetid://16548411484", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Images/Nav%20Icons/Home%20icon.png")

Main.NavBar_Console.Name = randString()
Main.NavBar_Console.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_Console.BackgroundTransparency = 1
Main.NavBar_Console.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Console.BorderSizePixel = 0
Main.NavBar_Console.LayoutOrder = 2
Main.NavBar_Console.Position = UDim2.new(0.065, 0, 0, 0)
Main.NavBar_Console.Size = UDim2.new(0.3, 0, 1, 0)
Main.NavBar_Console.Font = Enum.Font.SourceSans
Main.NavBar_Console.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.NavBar_Console.Text = ""
Main.NavBar_Console.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Console.TextScaled = true
Main.NavBar_Console.TextSize = 14
Main.NavBar_Console.TextWrapped = true

Main.Text_3.Name = randString()
Main.Text_3.AnchorPoint = Vector2.new(1, 1)
Main.Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_3.BackgroundTransparency = 1
Main.Text_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_3.BorderSizePixel = 0
Main.Text_3.LayoutOrder = 1
Main.Text_3.Position = UDim2.new(1.125, 0, 1.201, 0)
Main.Text_3.Size = UDim2.new(0.8, 0, 0.95, 0)
Main.Text_3.Font = Enum.Font.SourceSansSemibold
Main.Text_3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Main.Text_3.Text = "Console"
Main.Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_3.TextScaled = true
Main.Text_3.TextSize = 14
Main.Text_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_3.TextWrapped = true

Main.NavBar_HomeIMG_3.Name = randString()
Main.NavBar_HomeIMG_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_HomeIMG_3.BackgroundTransparency = 1
Main.NavBar_HomeIMG_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_HomeIMG_3.BorderSizePixel = 0
Main.NavBar_HomeIMG_3.Size = UDim2.new(1.15, 0, 1.15, 0)
Main.NavBar_HomeIMG_3.Image = loadImage("rbxassetid://16548338521", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Images/Nav%20Icons/Home%20icon.png")

Main.NavBar_Scripts.Name = randString()
Main.NavBar_Scripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_Scripts.BackgroundTransparency = 1
Main.NavBar_Scripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Scripts.BorderSizePixel = 0
Main.NavBar_Scripts.LayoutOrder = 3
Main.NavBar_Scripts.Position = UDim2.new(0.065, 0, 0, 0)
Main.NavBar_Scripts.Size = UDim2.new(0.3, 0, 1, 0)
Main.NavBar_Scripts.Font = Enum.Font.SourceSans
Main.NavBar_Scripts.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.NavBar_Scripts.Text = ""
Main.NavBar_Scripts.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Scripts.TextScaled = true
Main.NavBar_Scripts.TextSize = 14
Main.NavBar_Scripts.TextWrapped = true

Main.Text_4.Name = randString()
Main.Text_4.AnchorPoint = Vector2.new(1, 1)
Main.Text_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_4.BackgroundTransparency = 1
Main.Text_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_4.BorderSizePixel = 0
Main.Text_4.LayoutOrder = 1
Main.Text_4.Position = UDim2.new(1.125, 0, 1.201, 0)
Main.Text_4.Size = UDim2.new(0.8, 0, 0.95, 0)
Main.Text_4.Font = Enum.Font.SourceSansSemibold
Main.Text_4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Main.Text_4.Text = "Lures Hub"
Main.Text_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_4.TextScaled = true
Main.Text_4.TextSize = 14
Main.Text_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_4.TextWrapped = true

Main.NavBar_HomeIMG_4.Name = randString()
Main.NavBar_HomeIMG_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_HomeIMG_4.BackgroundTransparency = 1
Main.NavBar_HomeIMG_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_HomeIMG_4.BorderSizePixel = 0
Main.NavBar_HomeIMG_4.Size = UDim2.new(1.15, 0, 1.15, 0)
Main.NavBar_HomeIMG_4.Image = loadImage("rbxassetid://16548339825", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Images/Nav%20Icons/Home%20icon.png")

Main.NavBar_Settings.Name = randString()
Main.NavBar_Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_Settings.BackgroundTransparency = 0.75
Main.NavBar_Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Settings.BorderSizePixel = 0
Main.NavBar_Settings.LayoutOrder = 4
Main.NavBar_Settings.Position = UDim2.new(0.065, 0, 0, 0)
Main.NavBar_Settings.Size = UDim2.new(0.237, 0, 1, 0)
Main.NavBar_Settings.Visible = false
Main.NavBar_Settings.Font = Enum.Font.SourceSans
Main.NavBar_Settings.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.NavBar_Settings.Text = ""
Main.NavBar_Settings.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_Settings.TextScaled = true
Main.NavBar_Settings.TextSize = 14
Main.NavBar_Settings.TextWrapped = true

Main.Text_5.Name = randString()
Main.Text_5.AnchorPoint = Vector2.new(1, 1)
Main.Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_5.BackgroundTransparency = 1
Main.Text_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_5.BorderSizePixel = 0
Main.Text_5.LayoutOrder = 1
Main.Text_5.Position = UDim2.new(1.125, 0, 1.201, 0)
Main.Text_5.Size = UDim2.new(0.655, 0, 1.402, 0)
Main.Text_5.AutomaticSize = Enum.AutomaticSize.Y
Main.Text_5.Font = Enum.Font.Unknown
Main.Text_5.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.Text_5.Text = "Settings"
Main.Text_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_5.TextScaled = true
Main.Text_5.TextSize = 14
Main.Text_5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_5.TextWrapped = true

Main.NavBar_HomeIMG_5.Name = randString()
Main.NavBar_HomeIMG_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NavBar_HomeIMG_5.BackgroundTransparency = 1
Main.NavBar_HomeIMG_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NavBar_HomeIMG_5.BorderSizePixel = 0
Main.NavBar_HomeIMG_5.Size = UDim2.new(1, 0, 1, 0)
Main.NavBar_HomeIMG_5.Image = loadImage("rbxassetid://15055396463", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Images/Nav%20Icons/Home%20icon.png")

Main.SideBar_UIPadding_7.Name = randString()
Main.SideBar_UIPadding_7.PaddingBottom = UDim.new(0.1, 0)
Main.SideBar_UIPadding_7.PaddingLeft = UDim.new(0.02, 0)
Main.SideBar_UIPadding_7.PaddingRight = UDim.new(0.02, 0)
Main.SideBar_UIPadding_7.PaddingTop = UDim.new(0.1, 0)

Main.Content.Name = randString()
Main.Content.AnchorPoint = Vector2.new(0, 1)
Main.Content.BackgroundColor3 = Color3.fromRGB(15, 0, 33)
Main.Content.BackgroundTransparency = 1
Main.Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Content.BorderSizePixel = 0
Main.Content.Position = UDim2.new(0, 0, 1, 0)
Main.Content.Size = UDim2.new(1, 0, 0.658, 0)

Main.Home.Name = randString()
Main.Home.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Home.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Main.Home.BackgroundTransparency = 0.5
Main.Home.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Home.BorderSizePixel = 0
Main.Home.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Home.Size = UDim2.new(1, 0, 1, 0)

Main.UIPadding_3.Name = randString()
Main.UIPadding_3.PaddingBottom = UDim.new(0.05, 0)
Main.UIPadding_3.PaddingLeft = UDim.new(0.025, 0)
Main.UIPadding_3.PaddingRight = UDim.new(0.025, 0)
Main.UIPadding_3.PaddingTop = UDim.new(0.05, 0)

Main.Text_6.Name = randString()
Main.Text_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_6.BackgroundTransparency = 1
Main.Text_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_6.BorderSizePixel = 0
Main.Text_6.Position = UDim2.new(0, 0, 0, 0)
Main.Text_6.Size = UDim2.new(0.5, 0, 0.133, 0)
Main.Text_6.Font = Enum.Font.Unknown
Main.Text_6.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.Text_6.Text = "Welcome in Lures Ware!"
Main.Text_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_6.TextScaled = true
Main.Text_6.TextSize = 14
Main.Text_6.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_6.TextWrapped = true
Main.Text_6.TextXAlignment = Enum.TextXAlignment.Left

Main.Text_7.Name = randString()
Main.Text_7.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_7.BackgroundTransparency = 1
Main.Text_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_7.BorderSizePixel = 0
Main.Text_7.Position = UDim2.new(0, 0, 0.15, 0)
Main.Text_7.Size = UDim2.new(0.179, 0, 0.1, 0)
Main.Text_7.Font = Enum.Font.SourceSansBold
Main.Text_7.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Text_7.Text = "[WELCOME]"
Main.Text_7.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_7.TextScaled = true
Main.Text_7.TextSize = 14
Main.Text_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_7.TextWrapped = true
Main.Text_7.TextXAlignment = Enum.TextXAlignment.Left

Main.Text_8.Name = randString()
Main.Text_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_8.BackgroundTransparency = 1
Main.Text_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_8.BorderSizePixel = 0
Main.Text_8.Position = UDim2.new(0.002, 0, 0.25, 0)
Main.Text_8.Size = UDim2.new(1, 0, 0.396, 0)
Main.Text_8.Font = Enum.Font.SourceSans
Main.Text_8.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.Text_8.Text = "Welcome to Lures Ware! Enjoy a new UI crafted for a better user experience, an enhanced console with improved readability and functionality, a new amazing executor for faster and more efficient script execution, and advanced security measures to protect you and your system."
Main.Text_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_8.TextScaled = true
Main.Text_8.TextSize = 14
Main.Text_8.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_8.TextTransparency = 0.3
Main.Text_8.TextWrapped = true
Main.Text_8.RichText = true
Main.Text_8.TextXAlignment = Enum.TextXAlignment.Left

Main.Text_9.Name = randString()
Main.Text_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_9.BackgroundTransparency = 1
Main.Text_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_9.BorderSizePixel = 0
Main.Text_9.Position = UDim2.new(0, 0, 0.718, 0)
Main.Text_9.Size = UDim2.new(0.179, 0, 0.1, 0)
Main.Text_9.Font = Enum.Font.SourceSansBold
Main.Text_9.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Text_9.Text = "[CONTACTS]"
Main.Text_9.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_9.TextScaled = true
Main.Text_9.TextSize = 14
Main.Text_9.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_9.TextWrapped = true
Main.Text_9.TextXAlignment = Enum.TextXAlignment.Left

Main.YouTubeButton.Name = randString()
Main.YouTubeButton.Active = false
Main.YouTubeButton.AnchorPoint = Vector2.new(0, 1)
Main.YouTubeButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.YouTubeButton.BackgroundTransparency = 0.5
Main.YouTubeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YouTubeButton.BorderSizePixel = 0
Main.YouTubeButton.LayoutOrder = 5
Main.YouTubeButton.Position = UDim2.new(0, 0, 1, 0)
Main.YouTubeButton.Size = UDim2.new(0.245, 0, 0.166, 0)
Main.YouTubeButton.Font = Enum.Font.SourceSans
Main.YouTubeButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.YouTubeButton.Text = ""
Main.YouTubeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.YouTubeButton.TextSize = 14

Main.UIListLayout.Name = randString()
Main.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
Main.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout.Padding = UDim.new(0.075, 0)

Main.UIPadding_4.Name = randString()
Main.UIPadding_4.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_4.PaddingLeft = UDim.new(0.065, 0)
Main.UIPadding_4.PaddingRight = UDim.new(0.05, 0)
Main.UIPadding_4.PaddingTop = UDim.new(0.1, 0)

Main.Youtube.Name = randString()
Main.Youtube.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Youtube.BackgroundTransparency = 1
Main.Youtube.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Youtube.BorderSizePixel = 0
Main.Youtube.Size = UDim2.new(0.9, 0, 0.9, 0)
Main.Youtube.Image = loadImage("rbxassetid://14927083103", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/5e1e13e796089584a62e2930664b484564631c50/Images/Socials/Youtube%20icon.png")
Main.Youtube.ScaleType = Enum.ScaleType.Fit

Main.UICorner_6.CornerRadius = UDim.new(0.2, 0)
Main.UICorner_6.Name = randString()

Main.Skills.Name = randString()
Main.Skills.AnchorPoint = Vector2.new(1, 1)
Main.Skills.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills.BackgroundTransparency = 1
Main.Skills.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Skills.BorderSizePixel = 0
Main.Skills.LayoutOrder = 41
Main.Skills.Position = UDim2.new(1.125, 0, 0.775, 0)
Main.Skills.Size = UDim2.new(0.86, 0, 0.55, 0)
Main.Skills.Font = Enum.Font.Unknown
Main.Skills.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Skills.Text = "@LuresWare"
Main.Skills.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills.TextScaled = true
Main.Skills.TextSize = 14
Main.Skills.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills.TextTransparency = 0.25
Main.Skills.TextWrapped = true
Main.Skills.TextXAlignment = Enum.TextXAlignment.Left

Main.DiscordButton.Name = randString()
Main.DiscordButton.Active = false
Main.DiscordButton.AnchorPoint = Vector2.new(0, 1)
Main.DiscordButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.DiscordButton.BackgroundTransparency = 0.5
Main.DiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.DiscordButton.BorderSizePixel = 0
Main.DiscordButton.LayoutOrder = 5
Main.DiscordButton.Position = UDim2.new(0.276, 0, 1, 0)
Main.DiscordButton.Size = UDim2.new(0.245, 0, 0.166, 0)
Main.DiscordButton.Font = Enum.Font.SourceSans
Main.DiscordButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.DiscordButton.Text = ""
Main.DiscordButton.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.DiscordButton.TextSize = 14

Main.Youtube_2.Name = randString()
Main.Youtube_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Youtube_2.BackgroundTransparency = 1
Main.Youtube_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Youtube_2.BorderSizePixel = 0
Main.Youtube_2.Size = UDim2.new(0.9, 0, 0.9, 0)
Main.Youtube_2.Image = loadImage("rbxassetid://14927080594", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/5e1e13e796089584a62e2930664b484564631c50/Images/Socials/Youtube%20icon.png")
Main.Youtube_2.ScaleType = Enum.ScaleType.Fit

Main.Skills_2.Name = randString()
Main.Skills_2.AnchorPoint = Vector2.new(1, 1)
Main.Skills_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills_2.BackgroundTransparency = 1
Main.Skills_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Skills_2.BorderSizePixel = 0
Main.Skills_2.LayoutOrder = 41
Main.Skills_2.Position = UDim2.new(1.125, 0, 0.775, 0)
Main.Skills_2.Size = UDim2.new(0.86, 0, 0.55, 0)
Main.Skills_2.Font = Enum.Font.Unknown
Main.Skills_2.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Skills_2.Text = "/Lures"
Main.Skills_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills_2.TextScaled = true
Main.Skills_2.TextSize = 14
Main.Skills_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills_2.TextTransparency = 0.25
Main.Skills_2.TextWrapped = true
Main.Skills_2.TextXAlignment = Enum.TextXAlignment.Left

Main.SPDMButton.Name = randString()
Main.SPDMButton.Active = false
Main.SPDMButton.AnchorPoint = Vector2.new(1, 1)
Main.SPDMButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.SPDMButton.BackgroundTransparency = 0.5
Main.SPDMButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.SPDMButton.BorderSizePixel = 0
Main.SPDMButton.LayoutOrder = 5
Main.SPDMButton.Position = UDim2.new(1, 0, 1, 0)
Main.SPDMButton.Size = UDim2.new(0.245, 0, 0.166, 0)
Main.SPDMButton.Font = Enum.Font.SourceSans
Main.SPDMButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.SPDMButton.Text = ""
Main.SPDMButton.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.SPDMButton.TextSize = 14

Main.UIListLayout_3.Name = randString()
Main.UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
Main.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout_3.Padding = UDim.new(0.05, 0)

Main.Youtube_3.Name = randString()
Main.Youtube_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Youtube_3.BackgroundTransparency = 1
Main.Youtube_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Youtube_3.BorderSizePixel = 0
Main.Youtube_3.Size = UDim2.new(0.9, 0, 0.9, 0)
Main.Youtube_3.Image = loadImage("rbxassetid://14915932328", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/5e1e13e796089584a62e2930664b484564631c50/Images/Socials/Youtube%20icon.png")
Main.Youtube_3.ScaleType = Enum.ScaleType.Fit

Main.Skills_3.Name = randString()
Main.Skills_3.AnchorPoint = Vector2.new(1, 1)
Main.Skills_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills_3.BackgroundTransparency = 1
Main.Skills_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Skills_3.BorderSizePixel = 0
Main.Skills_3.LayoutOrder = 41
Main.Skills_3.Position = UDim2.new(1.125, 0, 0.775, 0)
Main.Skills_3.Size = UDim2.new(0.86, 0, 0.6, 0)
Main.Skills_3.Font = Enum.Font.Unknown
Main.Skills_3.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Skills_3.Text = "UI by SPDM"
Main.Skills_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills_3.TextScaled = true
Main.Skills_3.TextSize = 14
Main.Skills_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Skills_3.TextWrapped = true
Main.Skills_3.TextXAlignment = Enum.TextXAlignment.Left

Main.Text_10.Name = randString()
Main.Text_10.AnchorPoint = Vector2.new(1, 0)
Main.Text_10.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_10.BackgroundTransparency = 1
Main.Text_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_10.BorderSizePixel = 0
Main.Text_10.Position = UDim2.new(1, 0, 0.718, 0)
Main.Text_10.Size = UDim2.new(0.179, 0, 0.1, 0)
Main.Text_10.Font = Enum.Font.SourceSansBold
Main.Text_10.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Text_10.Text = "[CREDITS]"
Main.Text_10.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_10.TextScaled = true
Main.Text_10.TextSize = 14
Main.Text_10.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_10.TextWrapped = true
Main.Text_10.TextXAlignment = Enum.TextXAlignment.Right

Main.Text_11.Name = randString()
Main.Text_11.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_11.BackgroundTransparency = 1
Main.Text_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_11.BorderSizePixel = 0
Main.Text_11.Position = UDim2.new(0.167, 0, 0.718, 0)
Main.Text_11.Size = UDim2.new(0.354, 0, 0.1, 0)
Main.Text_11.Font = Enum.Font.Unknown
Main.Text_11.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Main.Text_11.Text = "Need support? Contact us!"
Main.Text_11.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_11.TextScaled = true
Main.Text_11.TextSize = 14
Main.Text_11.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_11.TextTransparency = 0.3
Main.Text_11.TextWrapped = true

Main.Text_12.Name = randString()
Main.Text_12.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_12.BackgroundTransparency = 1
Main.Text_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_12.BorderSizePixel = 0
Main.Text_12.Position = UDim2.new(0.321, 0, 0.15, 0)
Main.Text_12.Size = UDim2.new(0.296, 0, 0.1, 0)
Main.Text_12.Font = Enum.Font.Unknown
Main.Text_12.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Main.Text_12.Text = "v1.0.0"
Main.Text_12.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_12.TextScaled = true
Main.Text_12.TextSize = 14
Main.Text_12.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_12.TextWrapped = true

Main.Text_13.Name = randString()
Main.Text_13.AnchorPoint = Vector2.new(1, 0)
Main.Text_13.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_13.BackgroundTransparency = 1
Main.Text_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_13.BorderSizePixel = 0
Main.Text_13.Position = UDim2.new(1, 0, 0.15, 0)
Main.Text_13.Size = UDim2.new(0.354, 0, 0.1, 0)
Main.Text_13.Font = Enum.Font.Unknown
Main.Text_13.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Main.Text_13.Text = "24 September 2024"
Main.Text_13.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_13.TextScaled = true
Main.Text_13.TextSize = 14
Main.Text_13.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_13.TextWrapped = true

Main.DecoratorDOT.Name = randString()
Main.DecoratorDOT.AnchorPoint = Vector2.new(0.5, 0.5)
Main.DecoratorDOT.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.DecoratorDOT.BackgroundTransparency = 0.5
Main.DecoratorDOT.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.DecoratorDOT.BorderSizePixel = 0
Main.DecoratorDOT.Position = UDim2.new(0.31, 0, 0.194, 0)
Main.DecoratorDOT.Size = UDim2.new(0.05, 0, 0.05, 0)

Main.DecoratorDOT_2.Name = randString()
Main.DecoratorDOT_2.AnchorPoint = Vector2.new(0.5, 0.5)
Main.DecoratorDOT_2.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.DecoratorDOT_2.BackgroundTransparency = 0.5
Main.DecoratorDOT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.DecoratorDOT_2.BorderSizePixel = 0
Main.DecoratorDOT_2.Position = UDim2.new(0.626, 0, 0.194, 0)
Main.DecoratorDOT_2.Size = UDim2.new(0.05, 0, 0.05, 0)

Main.Main_UIPageLayout.Name = randString()
Main.Main_UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.Main_UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
Main.Main_UIPageLayout.Padding = UDim.new(0.2, 0)
Main.Main_UIPageLayout.TouchInputEnabled = false

Main.Executor.Name = randString()
Main.Executor.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Executor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Executor.BackgroundTransparency = 0.3
Main.Executor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Executor.BorderSizePixel = 0
Main.Executor.LayoutOrder = 1
Main.Executor.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Executor.Size = UDim2.new(1, 0, 1, 0)

Main.ScrollingFrame.Name = randString()
Main.ScrollingFrame.Active = true
Main.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ScrollingFrame.BackgroundTransparency = 1
Main.ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ScrollingFrame.BorderSizePixel = 0
Main.ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
Main.ScrollingFrame.Size = UDim2.new(1, 0, 0.835, 0)
Main.ScrollingFrame.AutomaticSize = Enum.AutomaticSize.X
Main.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
Main.ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(176, 176, 176)

Main.MainEditor.Name = randString()
Main.MainEditor.AnchorPoint = Vector2.new(1, 0)
Main.MainEditor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.MainEditor.BackgroundTransparency = 1
Main.MainEditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.MainEditor.BorderSizePixel = 0
Main.MainEditor.ClipsDescendants = true
Main.MainEditor.Position = UDim2.new(1, 0, 0, 0)
Main.MainEditor.Size = UDim2.new(0.951, 0, 1, 0)
Main.MainEditor.ClearTextOnFocus = false
Main.MainEditor.Font = Enum.Font.Code
Main.MainEditor.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.MainEditor.MultiLine = true
Main.MainEditor.PlaceholderText = "Insert text here..."
Main.MainEditor.Text = ""
Main.MainEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.MainEditor.TextSize = 25
Main.MainEditor.RichText = true
Main.MainEditor.TextXAlignment = Enum.TextXAlignment.Left
Main.MainEditor.TextYAlignment = Enum.TextYAlignment.Top

Main.UICorner_14.CornerRadius = UDim.new(0.03, 0)
Main.UICorner_14.Name = randString()

Main.UIPadding_8.Name = randString()
Main.UIPadding_8.PaddingBottom = UDim.new(0, 10)
Main.UIPadding_8.PaddingLeft = UDim.new(0, 15)
Main.UIPadding_8.PaddingRight = UDim.new(0, 15)
Main.UIPadding_8.PaddingTop = UDim.new(0, 10)

Main.LineNumberFrame.Name = randString()
Main.LineNumberFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.LineNumberFrame.BackgroundTransparency = 1
Main.LineNumberFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.LineNumberFrame.BorderSizePixel = 0
Main.LineNumberFrame.Size = UDim2.new(0.05, 0, 1, 0)

Main.LineTemplate.Name = randString()
Main.LineTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.LineTemplate.BackgroundTransparency = 1
Main.LineTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.LineTemplate.BorderSizePixel = 0
Main.LineTemplate.Size = UDim2.new(1, 0, 0.074, 0)
Main.LineTemplate.Visible = false
Main.LineTemplate.Font = Enum.Font.Unknown
Main.LineTemplate.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.LineTemplate.Text = "1"
Main.LineTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.LineTemplate.TextScaled = true
Main.LineTemplate.TextSize = 17
Main.LineTemplate.TextWrapped = true

Main.UIPadding_9.Name = randString()
Main.UIPadding_9.PaddingTop = UDim.new(0, 10)

Main.BottomBar.Name = randString()
Main.BottomBar.AnchorPoint = Vector2.new(0, 1)
Main.BottomBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.BottomBar.BackgroundTransparency = 1
Main.BottomBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BottomBar.BorderSizePixel = 0
Main.BottomBar.LayoutOrder = 2
Main.BottomBar.Position = UDim2.new(0, 0, 1, 0)
Main.BottomBar.Size = UDim2.new(1, 0, 0.15, 0)

Main.UIListLayout_4.Name = randString()
Main.UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
Main.UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.UIListLayout_4.HorizontalFlex = Enum.UIFlexAlignment.Fill
Main.UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout_4.Padding = UDim.new(0.02, 0)

Main.MainExecuteButton.Name = randString()
Main.MainExecuteButton.AnchorPoint = Vector2.new(0, 1)
Main.MainExecuteButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.MainExecuteButton.BackgroundTransparency = 0.3
Main.MainExecuteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.MainExecuteButton.BorderSizePixel = 0
Main.MainExecuteButton.Size = UDim2.new(0.2, 0, 1, 0)
Main.MainExecuteButton.AutomaticSize = Enum.AutomaticSize.X
Main.MainExecuteButton.Font = Enum.Font.SourceSansBold
Main.MainExecuteButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.MainExecuteButton.Text = "Execute"
Main.MainExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.MainExecuteButton.TextScaled = true
Main.MainExecuteButton.TextSize = 14
Main.MainExecuteButton.TextWrapped = true

Main.UIPadding_10.Name = randString()
Main.UIPadding_10.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_10.PaddingLeft = UDim.new(0.05, 0)
Main.UIPadding_10.PaddingRight = UDim.new(0.035, 0)
Main.UIPadding_10.PaddingTop = UDim.new(0.1, 0)

Main.UICorner_16.CornerRadius = UDim.new(0.3, 0)
Main.UICorner_16.Name = randString()

Main.MainClearButton.Name = randString()
Main.MainClearButton.AnchorPoint = Vector2.new(0, 1)
Main.MainClearButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.MainClearButton.BackgroundTransparency = 0.3
Main.MainClearButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.MainClearButton.BorderSizePixel = 0
Main.MainClearButton.Position = UDim2.new(0.616, 0, 0, 0)
Main.MainClearButton.Size = UDim2.new(0.175, 0, 1, 0)
Main.MainClearButton.AutomaticSize = Enum.AutomaticSize.X
Main.MainClearButton.Font = Enum.Font.SourceSansBold
Main.MainClearButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.MainClearButton.Text = "Clear"
Main.MainClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.MainClearButton.TextScaled = true
Main.MainClearButton.TextSize = 14
Main.MainClearButton.TextWrapped = true

Main.UIPadding_11.Name = randString()
Main.UIPadding_11.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_11.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_11.PaddingRight = UDim.new(0.03, 0)
Main.UIPadding_11.PaddingTop = UDim.new(0.1, 0)

Main.CopyButton.Name = randString()
Main.CopyButton.AnchorPoint = Vector2.new(0, 1)
Main.CopyButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.CopyButton.BackgroundTransparency = 0.3
Main.CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.CopyButton.BorderSizePixel = 0
Main.CopyButton.Position = UDim2.new(0.616, 0, 0, 0)
Main.CopyButton.Size = UDim2.new(0.159, 0, 1, 0)
Main.CopyButton.AutomaticSize = Enum.AutomaticSize.X
Main.CopyButton.Font = Enum.Font.SourceSansBold
Main.CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.CopyButton.Text = "Copy"
Main.CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.CopyButton.TextScaled = true
Main.CopyButton.TextSize = 14
Main.CopyButton.TextWrapped = true

Main.UIPadding_12.Name = randString()
Main.UIPadding_12.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_12.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_12.PaddingRight = UDim.new(0.01, 0)
Main.UIPadding_12.PaddingTop = UDim.new(0.1, 0)

Main.PasteButton.Name = randString()
Main.PasteButton.AnchorPoint = Vector2.new(0, 1)
Main.PasteButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.PasteButton.BackgroundTransparency = 0.3
Main.PasteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PasteButton.BorderSizePixel = 0
Main.PasteButton.Position = UDim2.new(0.831, 0, 0, 0)
Main.PasteButton.Size = UDim2.new(0.18, 0, 1, 0)
Main.PasteButton.AutomaticSize = Enum.AutomaticSize.X
Main.PasteButton.Font = Enum.Font.SourceSansBold
Main.PasteButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PasteButton.Text = "Paste"
Main.PasteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PasteButton.TextScaled = true
Main.PasteButton.TextSize = 14
Main.PasteButton.TextWrapped = true

Main.UIPadding_13.Name = randString()
Main.UIPadding_13.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_13.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_13.PaddingRight = UDim.new(0.05, 0)
Main.UIPadding_13.PaddingTop = UDim.new(0.1, 0)

Main.HydraHub.Name = randString()
Main.HydraHub.AnchorPoint = Vector2.new(0.5, 0.5)
Main.HydraHub.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Main.HydraHub.BackgroundTransparency = 0.5
Main.HydraHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.HydraHub.BorderSizePixel = 0
Main.HydraHub.LayoutOrder = 3
Main.HydraHub.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.HydraHub.Size = UDim2.new(1, 0, 1, 0)

Main.Text_14.Name = randString()
Main.Text_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_14.BackgroundTransparency = 1
Main.Text_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_14.BorderSizePixel = 0
Main.Text_14.Position = UDim2.new(0, 0, 0, 0)
Main.Text_14.Size = UDim2.new(0.5, 0, 0.185, 0)
Main.Text_14.Font = Enum.Font.Unknown
Main.Text_14.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.Text_14.Text = "Lures Hub"
Main.Text_14.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_14.TextScaled = true
Main.Text_14.TextSize = 14
Main.Text_14.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_14.TextWrapped = true
Main.Text_14.TextXAlignment = Enum.TextXAlignment.Left

Main.Text_15.Name = randString()
Main.Text_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_15.BackgroundTransparency = 1
Main.Text_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_15.BorderSizePixel = 0
Main.Text_15.Position = UDim2.new(0, 0, 0.185, 0)
Main.Text_15.Size = UDim2.new(0.261, 0, 0.121, 0)
Main.Text_15.Font = Enum.Font.SourceSansBold
Main.Text_15.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Text_15.Text = "What is Lures Hub?"
Main.Text_15.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_15.TextScaled = true
Main.Text_15.TextSize = 14
Main.Text_15.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_15.TextWrapped = true
Main.Text_15.TextXAlignment = Enum.TextXAlignment.Left

Main.Text_16.Name = randString()
Main.Text_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_16.BackgroundTransparency = 1
Main.Text_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_16.BorderSizePixel = 0
Main.Text_16.Position = UDim2.new(0, 0, 0.306, 0)
Main.Text_16.Size = UDim2.new(1, 0, 0.528, 0)
Main.Text_16.Font = Enum.Font.SourceSansSemibold
Main.Text_16.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Main.Text_16.Text = "Lures Hub is a powerful universal script for Roblox games. It offers features like auto farm, kill all, fruit farm, money hack, awakening hack, and devil fruit awakening hack. This powerful tool is designed to significantly enhance the gaming experience by providing a host of features that automate and optimize various aspects of the game."
Main.Text_16.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_16.TextScaled = true
Main.Text_16.TextSize = 14
Main.Text_16.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_16.TextTransparency = 0.5
Main.Text_16.TextWrapped = true
Main.Text_16.RichText = true
Main.Text_16.TextXAlignment = Enum.TextXAlignment.Left
Main.Text_16.TextYAlignment = Enum.TextYAlignment.Top

Main.Text_17.Name = randString()
Main.Text_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_17.BackgroundTransparency = 1
Main.Text_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_17.BorderSizePixel = 0
Main.Text_17.Position = UDim2.new(0.2, 0, 0.069, 0)
Main.Text_17.Size = UDim2.new(0.39, 0, 0.1, 0)
Main.Text_17.Font = Enum.Font.Unknown
Main.Text_17.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Main.Text_17.Text = "HIGHLY RECOMMENDED!"
Main.Text_17.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_17.TextScaled = true
Main.Text_17.TextSize = 14
Main.Text_17.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_17.TextTransparency = 0.3
Main.Text_17.TextWrapped = true

Main.HubExecute.Name = randString()
Main.HubExecute.AnchorPoint = Vector2.new(1, 1)
Main.HubExecute.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.HubExecute.BackgroundTransparency = 0.3
Main.HubExecute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.HubExecute.BorderSizePixel = 0
Main.HubExecute.Position = UDim2.new(1, 0, 1, 0)
Main.HubExecute.Size = UDim2.new(0.262, 0, 0.166, 0)
Main.HubExecute.AutomaticSize = Enum.AutomaticSize.X
Main.HubExecute.Font = Enum.Font.SourceSansBold
Main.HubExecute.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.HubExecute.Text = "Coming soon"
Main.HubExecute.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.HubExecute.TextScaled = true
Main.HubExecute.TextSize = 14
Main.HubExecute.TextWrapped = true

Main.Console.Name = randString()
Main.Console.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Console.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Main.Console.BackgroundTransparency = 0.5
Main.Console.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Console.BorderSizePixel = 0
Main.Console.LayoutOrder = 2
Main.Console.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Console.Size = UDim2.new(1, 0, 1, 0)

Main.Text_18.Name = randString()
Main.Text_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_18.BackgroundTransparency = 1
Main.Text_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_18.BorderSizePixel = 0
Main.Text_18.Position = UDim2.new(0.249, 0, 0.034, 0)
Main.Text_18.Size = UDim2.new(0.5, 0, 0.247, 0)
Main.Text_18.Font = Enum.Font.Unknown
Main.Text_18.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.Text_18.Text = "Console"
Main.Text_18.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_18.TextScaled = true
Main.Text_18.TextSize = 14
Main.Text_18.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_18.TextWrapped = true

Main.Text_19.Name = randString()
Main.Text_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_19.BackgroundTransparency = 1
Main.Text_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Text_19.BorderSizePixel = 0
Main.Text_19.Position = UDim2.new(0.225, 0, 0.308, 0)
Main.Text_19.Size = UDim2.new(0.603, 0, 0.273, 0)
Main.Text_19.Font = Enum.Font.Unknown
Main.Text_19.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Main.Text_19.Text = "COMING SOON! 🤫"
Main.Text_19.TextColor3 = Color3.fromRGB(176, 176, 176)
Main.Text_19.TextScaled = true
Main.Text_19.TextSize = 14
Main.Text_19.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.Text_19.TextWrapped = true

Main.PopupModal.Name = randString()
Main.PopupModal.AnchorPoint = Vector2.new(0.5, 0.5)
Main.PopupModal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupModal.BackgroundTransparency = 0.5
Main.PopupModal.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupModal.BorderSizePixel = 0
Main.PopupModal.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.PopupModal.Size = UDim2.new(1, 0, 1, 0)
Main.PopupModal.Visible = false

Main.YesNoPopupWindow.Name = randString()
Main.YesNoPopupWindow.AnchorPoint = Vector2.new(0.5, 0.5)
Main.YesNoPopupWindow.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
Main.YesNoPopupWindow.BackgroundTransparency = 0.1
Main.YesNoPopupWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesNoPopupWindow.BorderSizePixel = 0
Main.YesNoPopupWindow.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.YesNoPopupWindow.Size = UDim2.new(0.4, 0, 0.5, 0)
Main.YesNoPopupWindow.Visible = false
Main.YesNoPopupWindow.ZIndex = 2

Main.YesNo_PopupTitle.Name = randString()
Main.YesNo_PopupTitle.AnchorPoint = Vector2.new(0.5, 0)
Main.YesNo_PopupTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupTitle.BackgroundTransparency = 1
Main.YesNo_PopupTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesNo_PopupTitle.BorderSizePixel = 0
Main.YesNo_PopupTitle.Position = UDim2.new(0.5, 0, 0, 0)
Main.YesNo_PopupTitle.Size = UDim2.new(1, 0, 0.3, 0)
Main.YesNo_PopupTitle.ZIndex = 2
Main.YesNo_PopupTitle.Font = Enum.Font.SourceSansBold
Main.YesNo_PopupTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.YesNo_PopupTitle.Text = "Confirm script execution"
Main.YesNo_PopupTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupTitle.TextScaled = true
Main.YesNo_PopupTitle.TextSize = 14
Main.YesNo_PopupTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupTitle.TextWrapped = true

Main.UIPadding_17.Name = randString()
Main.UIPadding_17.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_17.PaddingLeft = UDim.new(0.05, 0)
Main.UIPadding_17.PaddingRight = UDim.new(0.05, 0)
Main.UIPadding_17.PaddingTop = UDim.new(0.1, 0)

Main.YesNo_PopupText.Name = randString()
Main.YesNo_PopupText.AnchorPoint = Vector2.new(0.5, 0)
Main.YesNo_PopupText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupText.BackgroundTransparency = 1
Main.YesNo_PopupText.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesNo_PopupText.BorderSizePixel = 0
Main.YesNo_PopupText.Position = UDim2.new(0.492, 0, 0.3, 0)
Main.YesNo_PopupText.Size = UDim2.new(1, 0, 0.275, 0)
Main.YesNo_PopupText.ZIndex = 2
Main.YesNo_PopupText.Font = Enum.Font.SourceSansSemibold
Main.YesNo_PopupText.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Main.YesNo_PopupText.Text = "Are you sure to execute this script?"
Main.YesNo_PopupText.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupText.TextScaled = true
Main.YesNo_PopupText.TextSize = 14
Main.YesNo_PopupText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupText.TextWrapped = true

Main.YesButton.Name = randString()
Main.YesButton.AnchorPoint = Vector2.new(1, 1)
Main.YesButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.YesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesButton.BorderSizePixel = 0
Main.YesButton.Position = UDim2.new(1, 0, 1, 0)
Main.YesButton.Size = UDim2.new(0.475, 0, 0.25, 0)
Main.YesButton.ZIndex = 2
Main.YesButton.Font = Enum.Font.Unknown
Main.YesButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.YesButton.Text = "Yes"
Main.YesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.YesButton.TextScaled = true
Main.YesButton.TextSize = 14
Main.YesButton.TextWrapped = true

Main.UIAspectRatioConstraint_14.Name = randString()
Main.UIAspectRatioConstraint_14.AspectRatio = 2.063

Main.NoButton.Name = randString()
Main.NoButton.AnchorPoint = Vector2.new(0, 1)
Main.NoButton.BackgroundColor3 = Color3.fromRGB(15, 17, 20)
Main.NoButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NoButton.BorderSizePixel = 0
Main.NoButton.Position = UDim2.new(0, 0, 1, 0)
Main.NoButton.Size = UDim2.new(0.475, 0, 0.25, 0)
Main.NoButton.ZIndex = 2
Main.NoButton.Font = Enum.Font.Unknown
Main.NoButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.NoButton.Text = "No"
Main.NoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.NoButton.TextScaled = true
Main.NoButton.TextSize = 14
Main.NoButton.TextWrapped = true

Main.UpdateDetectedWithRoblox.Name = randString()
Main.UpdateDetectedWithRoblox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateDetectedWithRoblox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateDetectedWithRoblox.BorderSizePixel = 0
Main.UpdateDetectedWithRoblox.Size = UDim2.new(1, 0, 1, 0)
Main.UpdateDetectedWithRoblox.Visible = false
Main.UpdateDetectedWithRoblox.ZIndex = 3

Main.UpdateArceusXRobloxButton.Name = randString()
Main.UpdateArceusXRobloxButton.AnchorPoint = Vector2.new(0.5, 1)
Main.UpdateArceusXRobloxButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.UpdateArceusXRobloxButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateArceusXRobloxButton.BorderSizePixel = 0
Main.UpdateArceusXRobloxButton.Position = UDim2.new(0.499, 0, 0.893, 0)
Main.UpdateArceusXRobloxButton.Size = UDim2.new(0.205, 0, 0.102, 0)
Main.UpdateArceusXRobloxButton.ZIndex = 3
Main.UpdateArceusXRobloxButton.Font = Enum.Font.Unknown
Main.UpdateArceusXRobloxButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.UpdateArceusXRobloxButton.Text = "UPDATE"
Main.UpdateArceusXRobloxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.UpdateArceusXRobloxButton.TextScaled = true
Main.UpdateArceusXRobloxButton.TextSize = 14
Main.UpdateArceusXRobloxButton.TextWrapped = true

Main.UIPadding_21.Name = randString()
Main.UIPadding_21.PaddingBottom = UDim.new(0.15, 0)
Main.UIPadding_21.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_21.PaddingRight = UDim.new(0.075, 0)
Main.UIPadding_21.PaddingTop = UDim.new(0.15, 0)

Main.PopupTitle.Name = randString()
Main.PopupTitle.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle.BackgroundTransparency = 1
Main.PopupTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle.BorderSizePixel = 0
Main.PopupTitle.Position = UDim2.new(0.5, 0, 0.306, 0)
Main.PopupTitle.Size = UDim2.new(0.271, 0, 0.071, 0)
Main.PopupTitle.ZIndex = 3
Main.PopupTitle.Font = Enum.Font.Unknown
Main.PopupTitle.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle.Text = "Update Detected!"
Main.PopupTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle.TextScaled = true
Main.PopupTitle.TextSize = 14
Main.PopupTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle.TextWrapped = true

Main.PopupTitle_2.Name = randString()
Main.PopupTitle_2.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_2.BackgroundTransparency = 1
Main.PopupTitle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_2.BorderSizePixel = 0
Main.PopupTitle_2.Position = UDim2.new(0.181, 0, 0.031, 0)
Main.PopupTitle_2.Size = UDim2.new(0.215, 0, 0.078, 0)
Main.PopupTitle_2.ZIndex = 3
Main.PopupTitle_2.Font = Enum.Font.Unknown
Main.PopupTitle_2.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_2.Text = "SPDM Team"
Main.PopupTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_2.TextScaled = true
Main.PopupTitle_2.TextSize = 14
Main.PopupTitle_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_2.TextWrapped = true
Main.PopupTitle_2.TextXAlignment = Enum.TextXAlignment.Left

Main.RedSeparator.Name = randString()
Main.RedSeparator.AnchorPoint = Vector2.new(0.5, 0)
Main.RedSeparator.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Main.RedSeparator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.RedSeparator.BorderSizePixel = 0
Main.RedSeparator.Position = UDim2.new(0.5, 0, 0.405, 0)
Main.RedSeparator.Size = UDim2.new(0.075, 0, 0.015, 0)
Main.RedSeparator.ZIndex = 3

Main.PopupTitle_3.Name = randString()
Main.PopupTitle_3.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_3.BackgroundTransparency = 1
Main.PopupTitle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_3.BorderSizePixel = 0
Main.PopupTitle_3.Position = UDim2.new(0.138, 0, -0.007, 0)
Main.PopupTitle_3.Size = UDim2.new(0.129, 0, 0.048, 0)
Main.PopupTitle_3.ZIndex = 3
Main.PopupTitle_3.Font = Enum.Font.Unknown
Main.PopupTitle_3.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_3.Text = "Powered by:"
Main.PopupTitle_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_3.TextScaled = true
Main.PopupTitle_3.TextSize = 14
Main.PopupTitle_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_3.TextTransparency = 0.2
Main.PopupTitle_3.TextWrapped = true
Main.PopupTitle_3.TextXAlignment = Enum.TextXAlignment.Left

Main.KeySystem_AppLogo.Name = randString()
Main.KeySystem_AppLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_AppLogo.BackgroundTransparency = 1
Main.KeySystem_AppLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_AppLogo.BorderSizePixel = 0
Main.KeySystem_AppLogo.Position = UDim2.new(0.932, 0, -0.008, 0)
Main.KeySystem_AppLogo.Size = UDim2.new(0.07, 0, 0.165, 0)
Main.KeySystem_AppLogo.ZIndex = 3
Main.KeySystem_AppLogo.Image = loadImage("rbxassetid://100067358919085", "")
Main.KeySystem_AppLogo.ScaleType = Enum.ScaleType.Fit

Main.PopupTitle_4.Name = randString()
Main.PopupTitle_4.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_4.BackgroundTransparency = 1
Main.PopupTitle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_4.BorderSizePixel = 0
Main.PopupTitle_4.Position = UDim2.new(0.863, 0, -0.007, 0)
Main.PopupTitle_4.Size = UDim2.new(0.129, 0, 0.048, 0)
Main.PopupTitle_4.ZIndex = 3
Main.PopupTitle_4.Font = Enum.Font.Unknown
Main.PopupTitle_4.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_4.Text = "Update Status"
Main.PopupTitle_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_4.TextScaled = true
Main.PopupTitle_4.TextSize = 14
Main.PopupTitle_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_4.TextTransparency = 0.2
Main.PopupTitle_4.TextWrapped = true
Main.PopupTitle_4.TextXAlignment = Enum.TextXAlignment.Right

Main.PopupTitle_5.Name = randString()
Main.PopupTitle_5.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_5.BackgroundTransparency = 1
Main.PopupTitle_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_5.BorderSizePixel = 0
Main.PopupTitle_5.Position = UDim2.new(0.822, 0, 0.031, 0)
Main.PopupTitle_5.Size = UDim2.new(0.213, 0, 0.078, 0)
Main.PopupTitle_5.ZIndex = 3
Main.PopupTitle_5.Font = Enum.Font.Unknown
Main.PopupTitle_5.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_5.Text = "Lures"
Main.PopupTitle_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_5.TextScaled = true
Main.PopupTitle_5.TextSize = 14
Main.PopupTitle_5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_5.TextWrapped = true
Main.PopupTitle_5.TextXAlignment = Enum.TextXAlignment.Right

Main.Logo.Name = randString()
Main.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Logo.BackgroundTransparency = 1
Main.Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Logo.BorderSizePixel = 0
Main.Logo.Position = UDim2.new(0, 0, 0, 0)
Main.Logo.Size = UDim2.new(0.07, 0, 0.165, 0)
Main.Logo.ZIndex = 3
Main.Logo.Image = loadImage("rbxassetid://14915932328", "")

Main.PopupTitle_6.Name = randString()
Main.PopupTitle_6.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_6.BackgroundTransparency = 1
Main.PopupTitle_6.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.PopupTitle_6.BorderSizePixel = 0
Main.PopupTitle_6.Position = UDim2.new(0.5, 0, 0.677, 0)
Main.PopupTitle_6.Size = UDim2.new(0.177, 0, 0.082, 0)
Main.PopupTitle_6.ZIndex = 3
Main.PopupTitle_6.Font = Enum.Font.Unknown
Main.PopupTitle_6.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_6.Text = "->"
Main.PopupTitle_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_6.TextScaled = true
Main.PopupTitle_6.TextSize = 14
Main.PopupTitle_6.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_6.TextTransparency = 0.25
Main.PopupTitle_6.TextWrapped = true

Main.PastRobloxVersion.Name = randString()
Main.PastRobloxVersion.AnchorPoint = Vector2.new(1, 0)
Main.PastRobloxVersion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PastRobloxVersion.BackgroundTransparency = 1
Main.PastRobloxVersion.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.PastRobloxVersion.BorderSizePixel = 0
Main.PastRobloxVersion.Position = UDim2.new(0.45, 0, 0.667, 0)
Main.PastRobloxVersion.Size = UDim2.new(0.25, 0, 0.1, 0)
Main.PastRobloxVersion.ZIndex = 3
Main.PastRobloxVersion.Font = Enum.Font.Unknown
Main.PastRobloxVersion.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PastRobloxVersion.Text = "v1.0.0"
Main.PastRobloxVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PastRobloxVersion.TextScaled = true
Main.PastRobloxVersion.TextSize = 14
Main.PastRobloxVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PastRobloxVersion.TextTransparency = 0.5
Main.PastRobloxVersion.TextWrapped = true
Main.PastRobloxVersion.TextXAlignment = Enum.TextXAlignment.Right

Main.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
Main.UIGradient.Name = randString()

Main.NewRobloxVersion.Name = randString()
Main.NewRobloxVersion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.NewRobloxVersion.BackgroundTransparency = 1
Main.NewRobloxVersion.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.NewRobloxVersion.BorderSizePixel = 0
Main.NewRobloxVersion.Position = UDim2.new(0.55, 0, 0.667, 0)
Main.NewRobloxVersion.Size = UDim2.new(0.25, 0, 0.1, 0)
Main.NewRobloxVersion.ZIndex = 3
Main.NewRobloxVersion.Font = Enum.Font.Unknown
Main.NewRobloxVersion.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.NewRobloxVersion.Text = "v1.0.1"
Main.NewRobloxVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.NewRobloxVersion.TextScaled = true
Main.NewRobloxVersion.TextSize = 14
Main.NewRobloxVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.NewRobloxVersion.TextWrapped = true
Main.NewRobloxVersion.TextXAlignment = Enum.TextXAlignment.Left

Main.UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(93, 93, 93)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
Main.UIGradient_2.Name = randString()

Main.PopupTitle_7.Name = randString()
Main.PopupTitle_7.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_7.BackgroundTransparency = 1
Main.PopupTitle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_7.BorderSizePixel = 0
Main.PopupTitle_7.Position = UDim2.new(0.5, 0, 0.44, 0)
Main.PopupTitle_7.Size = UDim2.new(0.717, 0, 0.208, 0)
Main.PopupTitle_7.ZIndex = 3
Main.PopupTitle_7.Font = Enum.Font.Unknown
Main.PopupTitle_7.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_7.Text = "Tsuo Ware has detected a new update ready for download. This upgrade will bring improvements in security, stability, and features, and will update Roblox to the latest version. Update now for an enhanced experience!"
Main.PopupTitle_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_7.TextScaled = true
Main.PopupTitle_7.TextSize = 14
Main.PopupTitle_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_7.TextTransparency = 0.1
Main.PopupTitle_7.TextWrapped = true
Main.PopupTitle_7.TextYAlignment = Enum.TextYAlignment.Top

Main.PopupTitle_8.Name = randString()
Main.PopupTitle_8.AnchorPoint = Vector2.new(0.5, 1)
Main.PopupTitle_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_8.BackgroundTransparency = 1
Main.PopupTitle_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_8.BorderSizePixel = 0
Main.PopupTitle_8.Position = UDim2.new(0.5, 0, 0.98, 0)
Main.PopupTitle_8.Size = UDim2.new(0.1, 0, 0.064, 0)
Main.PopupTitle_8.ZIndex = 3
Main.PopupTitle_8.Font = Enum.Font.Unknown
Main.PopupTitle_8.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_8.Text = "or"
Main.PopupTitle_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_8.TextScaled = true
Main.PopupTitle_8.TextSize = 14
Main.PopupTitle_8.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_8.TextWrapped = true

Main.KeySystem_ExitButton2.Name = randString()
Main.KeySystem_ExitButton2.AnchorPoint = Vector2.new(1, 1)
Main.KeySystem_ExitButton2.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
Main.KeySystem_ExitButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_ExitButton2.BorderSizePixel = 0
Main.KeySystem_ExitButton2.Position = UDim2.new(0.562, 0, 1.053, 0)
Main.KeySystem_ExitButton2.Size = UDim2.new(0.124, 0, 0.057, 0)
Main.KeySystem_ExitButton2.ZIndex = 3
Main.KeySystem_ExitButton2.Font = Enum.Font.Unknown
Main.KeySystem_ExitButton2.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.KeySystem_ExitButton2.Text = "Join Roblox"
Main.KeySystem_ExitButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_ExitButton2.TextScaled = true
Main.KeySystem_ExitButton2.TextSize = 14
Main.KeySystem_ExitButton2.TextWrapped = true

Main.UIPadding_22.Name = randString()
Main.UIPadding_22.PaddingBottom = UDim.new(0.2, 0)
Main.UIPadding_22.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_22.PaddingRight = UDim.new(0.075, 0)
Main.UIPadding_22.PaddingTop = UDim.new(0.2, 0)

Main.UpdateDetected.Name = randString()
Main.UpdateDetected.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateDetected.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateDetected.BorderSizePixel = 0
Main.UpdateDetected.Size = UDim2.new(1, 0, 1, 0)
Main.UpdateDetected.Visible = false

Main.UpdateArceusXButton.Name = randString()
Main.UpdateArceusXButton.AnchorPoint = Vector2.new(0.5, 1)
Main.UpdateArceusXButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.UpdateArceusXButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateArceusXButton.BorderSizePixel = 0
Main.UpdateArceusXButton.Position = UDim2.new(0.503, 0, 0.893, 0)
Main.UpdateArceusXButton.Size = UDim2.new(0.205, 0, 0.102, 0)
Main.UpdateArceusXButton.Font = Enum.Font.Unknown
Main.UpdateArceusXButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.UpdateArceusXButton.Text = "CONTINUE"
Main.UpdateArceusXButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.UpdateArceusXButton.TextScaled = true
Main.UpdateArceusXButton.TextSize = 14
Main.UpdateArceusXButton.TextWrapped = true

Main.PopupTitle_9.Name = randString()
Main.PopupTitle_9.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_9.BackgroundTransparency = 1
Main.PopupTitle_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_9.BorderSizePixel = 0
Main.PopupTitle_9.Position = UDim2.new(0.5, 0, 0.306, 0)
Main.PopupTitle_9.Size = UDim2.new(0.271, 0, 0.071, 0)
Main.PopupTitle_9.Font = Enum.Font.Unknown
Main.PopupTitle_9.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_9.Text = "Update Detected!"
Main.PopupTitle_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_9.TextScaled = true
Main.PopupTitle_9.TextSize = 14
Main.PopupTitle_9.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_9.TextWrapped = true

Main.PopupTitle_10.Name = randString()
Main.PopupTitle_10.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_10.BackgroundTransparency = 1
Main.PopupTitle_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_10.BorderSizePixel = 0
Main.PopupTitle_10.Position = UDim2.new(0.5, 0, 0.44, 0)
Main.PopupTitle_10.Size = UDim2.new(0.717, 0, 0.12, 0)
Main.PopupTitle_10.Font = Enum.Font.Unknown
Main.PopupTitle_10.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_10.Text = "Tsuo Ware has just been updated, enjoy the latest enhancements!"
Main.PopupTitle_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_10.TextScaled = true
Main.PopupTitle_10.TextSize = 14
Main.PopupTitle_10.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_10.TextTransparency = 0.1
Main.PopupTitle_10.TextWrapped = true
Main.PopupTitle_10.TextYAlignment = Enum.TextYAlignment.Top

Main.PopupTitle_11.Name = randString()
Main.PopupTitle_11.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_11.BackgroundTransparency = 1
Main.PopupTitle_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_11.BorderSizePixel = 0
Main.PopupTitle_11.Position = UDim2.new(0.181, 0, 0.031, 0)
Main.PopupTitle_11.Size = UDim2.new(0.215, 0, 0.078, 0)
Main.PopupTitle_11.Font = Enum.Font.Unknown
Main.PopupTitle_11.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_11.Text = "SPDM Team"
Main.PopupTitle_11.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_11.TextScaled = true
Main.PopupTitle_11.TextSize = 14
Main.PopupTitle_11.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_11.TextWrapped = true
Main.PopupTitle_11.TextXAlignment = Enum.TextXAlignment.Left

Main.RedSeparator_2.Name = randString()
Main.RedSeparator_2.AnchorPoint = Vector2.new(0.5, 0)
Main.RedSeparator_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Main.RedSeparator_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.RedSeparator_2.BorderSizePixel = 0
Main.RedSeparator_2.Position = UDim2.new(0.5, 0, 0.405, 0)
Main.RedSeparator_2.Size = UDim2.new(0.075, 0, 0.015, 0)

Main.PopupTitle_12.Name = randString()
Main.PopupTitle_12.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_12.BackgroundTransparency = 1
Main.PopupTitle_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_12.BorderSizePixel = 0
Main.PopupTitle_12.Position = UDim2.new(0.138, 0, -0.007, 0)
Main.PopupTitle_12.Size = UDim2.new(0.129, 0, 0.048, 0)
Main.PopupTitle_12.Font = Enum.Font.Unknown
Main.PopupTitle_12.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_12.Text = "Powered by:"
Main.PopupTitle_12.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_12.TextScaled = true
Main.PopupTitle_12.TextSize = 14
Main.PopupTitle_12.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_12.TextTransparency = 0.2
Main.PopupTitle_12.TextWrapped = true
Main.PopupTitle_12.TextXAlignment = Enum.TextXAlignment.Left

Main.KeySystem_AppLogo_2.Name = randString()
Main.KeySystem_AppLogo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_AppLogo_2.BackgroundTransparency = 1
Main.KeySystem_AppLogo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_AppLogo_2.BorderSizePixel = 0
Main.KeySystem_AppLogo_2.Position = UDim2.new(0.932, 0, -0.008, 0)
Main.KeySystem_AppLogo_2.Size = UDim2.new(0.07, 0, 0.165, 0)
Main.KeySystem_AppLogo_2.Image = loadImage("rbxassetid://100067358919085", "")
Main.KeySystem_AppLogo_2.ScaleType = Enum.ScaleType.Fit

Main.PopupTitle_13.Name = randString()
Main.PopupTitle_13.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_13.BackgroundTransparency = 1
Main.PopupTitle_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_13.BorderSizePixel = 0
Main.PopupTitle_13.Position = UDim2.new(0.863, 0, -0.007, 0)
Main.PopupTitle_13.Size = UDim2.new(0.129, 0, 0.048, 0)
Main.PopupTitle_13.Font = Enum.Font.Unknown
Main.PopupTitle_13.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_13.Text = "Update Status"
Main.PopupTitle_13.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_13.TextScaled = true
Main.PopupTitle_13.TextSize = 14
Main.PopupTitle_13.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_13.TextTransparency = 0.2
Main.PopupTitle_13.TextWrapped = true
Main.PopupTitle_13.TextXAlignment = Enum.TextXAlignment.Right

Main.PopupTitle_14.Name = randString()
Main.PopupTitle_14.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_14.BackgroundTransparency = 1
Main.PopupTitle_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_14.BorderSizePixel = 0
Main.PopupTitle_14.Position = UDim2.new(0.822, 0, 0.031, 0)
Main.PopupTitle_14.Size = UDim2.new(0.213, 0, 0.078, 0)
Main.PopupTitle_14.Font = Enum.Font.Unknown
Main.PopupTitle_14.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_14.Text = "Lures"
Main.PopupTitle_14.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_14.TextScaled = true
Main.PopupTitle_14.TextSize = 14
Main.PopupTitle_14.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_14.TextWrapped = true
Main.PopupTitle_14.TextXAlignment = Enum.TextXAlignment.Right

Main.Logo_2.Name = randString()
Main.Logo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Logo_2.BackgroundTransparency = 1
Main.Logo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Logo_2.BorderSizePixel = 0
Main.Logo_2.Position = UDim2.new(0, 0, 0, 0)
Main.Logo_2.Size = UDim2.new(0.07, 0, 0.165, 0)
Main.Logo_2.Image = loadImage("rbxassetid://14915932328", "")

Main.PopupTitle_15.Name = randString()
Main.PopupTitle_15.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_15.BackgroundTransparency = 1
Main.PopupTitle_15.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.PopupTitle_15.BorderSizePixel = 0
Main.PopupTitle_15.Position = UDim2.new(0.5, 0, 0.677, 0)
Main.PopupTitle_15.Size = UDim2.new(0.177, 0, 0.082, 0)
Main.PopupTitle_15.Font = Enum.Font.Unknown
Main.PopupTitle_15.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_15.Text = "->"
Main.PopupTitle_15.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_15.TextScaled = true
Main.PopupTitle_15.TextSize = 14
Main.PopupTitle_15.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_15.TextTransparency = 0.25
Main.PopupTitle_15.TextWrapped = true

Main.ArceusPastVersion.Name = randString()
Main.ArceusPastVersion.AnchorPoint = Vector2.new(1, 0)
Main.ArceusPastVersion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusPastVersion.BackgroundTransparency = 1
Main.ArceusPastVersion.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.ArceusPastVersion.BorderSizePixel = 0
Main.ArceusPastVersion.Position = UDim2.new(0.45, 0, 0.667, 0)
Main.ArceusPastVersion.Size = UDim2.new(0.25, 0, 0.1, 0)
Main.ArceusPastVersion.Font = Enum.Font.Unknown
Main.ArceusPastVersion.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ArceusPastVersion.Text = "v1.0.0"
Main.ArceusPastVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusPastVersion.TextScaled = true
Main.ArceusPastVersion.TextSize = 14
Main.ArceusPastVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusPastVersion.TextTransparency = 0.5
Main.ArceusPastVersion.TextWrapped = true
Main.ArceusPastVersion.TextXAlignment = Enum.TextXAlignment.Right

Main.UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
Main.UIGradient_3.Name = randString()

Main.ArceusNewVersion.Name = randString()
Main.ArceusNewVersion.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Main.ArceusNewVersion.BackgroundTransparency = 1
Main.ArceusNewVersion.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.ArceusNewVersion.BorderSizePixel = 0
Main.ArceusNewVersion.Position = UDim2.new(0.55, 0, 0.667, 0)
Main.ArceusNewVersion.Size = UDim2.new(0.25, 0, 0.1, 0)
Main.ArceusNewVersion.Font = Enum.Font.Unknown
Main.ArceusNewVersion.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ArceusNewVersion.Text = "v1.0.1"
Main.ArceusNewVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusNewVersion.TextScaled = true
Main.ArceusNewVersion.TextSize = 14
Main.ArceusNewVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusNewVersion.TextWrapped = true
Main.ArceusNewVersion.TextXAlignment = Enum.TextXAlignment.Left

Main.UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(84, 84, 84)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
Main.UIGradient_4.Name = randString()

Main.OR.Name = randString()
Main.OR.AnchorPoint = Vector2.new(0.5, 1)
Main.OR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.OR.BackgroundTransparency = 1
Main.OR.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.OR.BorderSizePixel = 0
Main.OR.Position = UDim2.new(0.5, 0, 0.98, 0)
Main.OR.Size = UDim2.new(0.1, 0, 0.064, 0)
Main.OR.Font = Enum.Font.Unknown
Main.OR.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.OR.Text = "or"
Main.OR.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.OR.TextScaled = true
Main.OR.TextSize = 14
Main.OR.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.OR.TextWrapped = true

Main.KeySystem.Name = randString()
Main.KeySystem.AnchorPoint = Vector2.new(0.5, 0.5)
Main.KeySystem.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem.BorderSizePixel = 0
Main.KeySystem.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.KeySystem.Size = UDim2.new(1, 0, 1, 0)
Main.KeySystem.Visible = false
Main.KeySystem.ZIndex = 2

Main.KeySystem_CheckButton.Name = randString()
Main.KeySystem_CheckButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.KeySystem_CheckButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_CheckButton.BorderSizePixel = 0
Main.KeySystem_CheckButton.Position = UDim2.new(0.621, 0, 0.591, 0)
Main.KeySystem_CheckButton.Size = UDim2.new(0.155, 0, 0.101, 0)
Main.KeySystem_CheckButton.ZIndex = 999
Main.KeySystem_CheckButton.Font = Enum.Font.Unknown
Main.KeySystem_CheckButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.KeySystem_CheckButton.Text = "Check"
Main.KeySystem_CheckButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_CheckButton.TextScaled = true
Main.KeySystem_CheckButton.TextSize = 14
Main.KeySystem_CheckButton.TextWrapped = true

Main.PopupTitle_16.Name = randString()
Main.PopupTitle_16.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_16.BackgroundTransparency = 1
Main.PopupTitle_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_16.BorderSizePixel = 0
Main.PopupTitle_16.Position = UDim2.new(0.5, 0, 0.135, 0)
Main.PopupTitle_16.Size = UDim2.new(0.271, 0, 0.071, 0)
Main.PopupTitle_16.Font = Enum.Font.Unknown
Main.PopupTitle_16.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_16.Text = "Key System"
Main.PopupTitle_16.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_16.TextScaled = true
Main.PopupTitle_16.TextSize = 14
Main.PopupTitle_16.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_16.TextWrapped = true

Main.PopupTitle_17.Name = randString()
Main.PopupTitle_17.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_17.BackgroundTransparency = 1
Main.PopupTitle_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_17.BorderSizePixel = 0
Main.PopupTitle_17.Position = UDim2.new(0.5, 0, 0.135, 0)
Main.PopupTitle_17.Size = UDim2.new(0.271, 0, 0.071, 0)
Main.PopupTitle_17.ZIndex = 999
Main.PopupTitle_17.Font = Enum.Font.Unknown
Main.PopupTitle_17.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_17.Text = "Key System"
Main.PopupTitle_17.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_17.TextScaled = true
Main.PopupTitle_17.TextSize = 14
Main.PopupTitle_17.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_17.TextWrapped = true

Main.RedSeparator_3.Name = randString()
Main.RedSeparator_3.AnchorPoint = Vector2.new(0.5, 0)
Main.RedSeparator_3.BackgroundColor3 = Color3.fromRGB(226, 0, 0)
Main.RedSeparator_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.RedSeparator_3.BorderSizePixel = 0
Main.RedSeparator_3.Position = UDim2.new(0.5, 0, 0.234, 0)
Main.RedSeparator_3.Size = UDim2.new(0.075, 0, 0.015, 0)

Main.KeySystem_AppLogo_3.Name = randString()
Main.KeySystem_AppLogo_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_AppLogo_3.BackgroundTransparency = 1
Main.KeySystem_AppLogo_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_AppLogo_3.BorderSizePixel = 0
Main.KeySystem_AppLogo_3.Position = UDim2.new(0.928, 0, -0.053, 0)
Main.KeySystem_AppLogo_3.Size = UDim2.new(0.095, 0, 0.254, 0)
Main.KeySystem_AppLogo_3.Image = loadImage("rbxassetid://100067358919085", "")
Main.KeySystem_AppLogo_3.ScaleType = Enum.ScaleType.Fit

Main.UIAspectRatioConstraint_19.Name = randString()
Main.UIAspectRatioConstraint_19.AspectRatio = 0.935

Main.PopupTitle_20.Name = randString()
Main.PopupTitle_20.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_20.BackgroundTransparency = 1
Main.PopupTitle_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_20.BorderSizePixel = 0
Main.PopupTitle_20.Position = UDim2.new(0.863, 0, -0.007, 0)
Main.PopupTitle_20.Size = UDim2.new(0.129, 0, 0.048, 0)
Main.PopupTitle_20.Font = Enum.Font.Unknown
Main.PopupTitle_20.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_20.Text = "Welcome in:"
Main.PopupTitle_20.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_20.TextScaled = true
Main.PopupTitle_20.TextSize = 14
Main.PopupTitle_20.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_20.TextTransparency = 0.2
Main.PopupTitle_20.TextWrapped = true
Main.PopupTitle_20.TextXAlignment = Enum.TextXAlignment.Right

Main.PopupTitle_22.Name = randString()
Main.PopupTitle_22.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_22.BackgroundTransparency = 1
Main.PopupTitle_22.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.PopupTitle_22.BorderSizePixel = 0
Main.PopupTitle_22.Position = UDim2.new(0.583, 0, 0.422, 0)
Main.PopupTitle_22.Size = UDim2.new(0.436, 0, 0.056, 0)
Main.PopupTitle_22.ZIndex = 999
Main.PopupTitle_22.Font = Enum.Font.Unknown
Main.PopupTitle_22.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_22.Text = "Key Status:"
Main.PopupTitle_22.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_22.TextScaled = true
Main.PopupTitle_22.TextSize = 14
Main.PopupTitle_22.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_22.TextWrapped = true
Main.PopupTitle_22.TextXAlignment = Enum.TextXAlignment.Left

Main.KeySystem_ExitButton.Name = randString()
Main.KeySystem_ExitButton.AnchorPoint = Vector2.new(1, 1)
Main.KeySystem_ExitButton.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Main.KeySystem_ExitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_ExitButton.BorderSizePixel = 0
Main.KeySystem_ExitButton.Position = UDim2.new(0.562, 0, 1.053, 0)
Main.KeySystem_ExitButton.Size = UDim2.new(0.124, 0, 0.057, 0)
Main.KeySystem_ExitButton.ZIndex = 3
Main.KeySystem_ExitButton.Font = Enum.Font.Unknown
Main.KeySystem_ExitButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.KeySystem_ExitButton.Text = "Join Roblox"
Main.KeySystem_ExitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_ExitButton.TextScaled = true
Main.KeySystem_ExitButton.TextSize = 14
Main.KeySystem_ExitButton.TextWrapped = true

Main.KeySystem_GetKeyButton.Name = randString()
Main.KeySystem_GetKeyButton.AnchorPoint = Vector2.new(1, 1)
Main.KeySystem_GetKeyButton.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
Main.KeySystem_GetKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.KeySystem_GetKeyButton.BorderSizePixel = 0
Main.KeySystem_GetKeyButton.Position = UDim2.new(0.628, 0, 0.885, 0)
Main.KeySystem_GetKeyButton.Size = UDim2.new(0.25, 0, 0.1, 0)
Main.KeySystem_GetKeyButton.ZIndex = 3
Main.KeySystem_GetKeyButton.Font = Enum.Font.Unknown
Main.KeySystem_GetKeyButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.KeySystem_GetKeyButton.Text = "GET KEY"
Main.KeySystem_GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.KeySystem_GetKeyButton.TextScaled = true
Main.KeySystem_GetKeyButton.TextSize = 14
Main.KeySystem_GetKeyButton.TextWrapped = true

Main.Logo_4.Name = randString()
Main.Logo_4.AnchorPoint = Vector2.new(0.5, 0)
Main.Logo_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Logo_4.BackgroundTransparency = 1
Main.Logo_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Logo_4.BorderSizePixel = 0
Main.Logo_4.Position = UDim2.new(0.282, 0, 0.388, 0)
Main.Logo_4.Size = UDim2.new(0.167, 0, 0.367, 0)
Main.Logo_4.ZIndex = 999
Main.Logo_4.Image = loadImage("rbxassetid://15234356813", "")

Main.KeyStatus.Name = randString()
Main.KeyStatus.AnchorPoint = Vector2.new(0.5, 0)
Main.KeyStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.KeyStatus.BackgroundTransparency = 1
Main.KeyStatus.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.KeyStatus.BorderSizePixel = 0
Main.KeyStatus.Position = UDim2.new(0.583, 0, 0.467, 0)
Main.KeyStatus.Size = UDim2.new(0.436, 0, 0.082, 0)
Main.KeyStatus.ZIndex = 999
Main.KeyStatus.Font = Enum.Font.Unknown
Main.KeyStatus.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.KeyStatus.Text = "Key not found..."
Main.KeyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
Main.KeyStatus.TextScaled = true
Main.KeyStatus.TextSize = 14
Main.KeyStatus.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.KeyStatus.TextTransparency = 0.5
Main.KeyStatus.TextWrapped = true
Main.KeyStatus.TextXAlignment = Enum.TextXAlignment.Left

Main.PopupTitle_23.Name = randString()
Main.PopupTitle_23.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_23.BackgroundTransparency = 1
Main.PopupTitle_23.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_23.BorderSizePixel = 0
Main.PopupTitle_23.Position = UDim2.new(0.5, 0, 0.27, 0)
Main.PopupTitle_23.Size = UDim2.new(0.717, 0, 0.12, 0)
Main.PopupTitle_23.Font = Enum.Font.Unknown
Main.PopupTitle_23.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.PopupTitle_23.Text = "The Key System allows free use of HydraWare by watching ads, supporting the team in providing and maintaining the app at no cost."
Main.PopupTitle_23.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_23.TextScaled = true
Main.PopupTitle_23.TextSize = 14
Main.PopupTitle_23.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_23.TextTransparency = 0.1
Main.PopupTitle_23.TextWrapped = true
Main.PopupTitle_23.TextYAlignment = Enum.TextYAlignment.Top

Main.Keysystem_Keybox.Name = randString()
Main.Keysystem_Keybox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Keysystem_Keybox.BackgroundTransparency = 0.92
Main.Keysystem_Keybox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Keysystem_Keybox.BorderSizePixel = 0
Main.Keysystem_Keybox.Position = UDim2.new(0.365, 0, 0.591, 0)
Main.Keysystem_Keybox.Size = UDim2.new(0.229, 0, 0.101, 0)
Main.Keysystem_Keybox.ZIndex = 9999
Main.Keysystem_Keybox.Font = Enum.Font.SourceSansBold
Main.Keysystem_Keybox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Keysystem_Keybox.PlaceholderColor3 = Color3.fromRGB(176, 176, 176)
Main.Keysystem_Keybox.PlaceholderText = "Insert your key..."
Main.Keysystem_Keybox.Text = ""
Main.Keysystem_Keybox.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Keysystem_Keybox.TextScaled = true
Main.Keysystem_Keybox.TextSize = 14
Main.Keysystem_Keybox.TextWrapped = true

Main.UIStroke.Name = randString()
Main.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Main.UIStroke.Color = Color3.fromRGB(176, 176, 176)
Main.UIStroke.Thickness = 5

Main.UIPadding_30.Name = randString()
Main.UIPadding_30.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_30.PaddingLeft = UDim.new(0.1, 0)
Main.UIPadding_30.PaddingRight = UDim.new(0.1, 0)
Main.UIPadding_30.PaddingTop = UDim.new(0.1, 0)

Main.PopupTitle_24.Name = randString()
Main.PopupTitle_24.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_24.BackgroundTransparency = 1
Main.PopupTitle_24.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.PopupTitle_24.BorderSizePixel = 0
Main.PopupTitle_24.Position = UDim2.new(0.499, 0, 0.898, 0)
Main.PopupTitle_24.Size = UDim2.new(0.169, 0, 0.077, 0)
Main.PopupTitle_24.ZIndex = 999
Main.PopupTitle_24.Font = Enum.Font.Unknown
Main.PopupTitle_24.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_24.Text = "or"
Main.PopupTitle_24.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_24.TextScaled = true
Main.PopupTitle_24.TextSize = 14
Main.PopupTitle_24.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_24.TextWrapped = true

Main.Toast.Name = randString()
Main.Toast.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.Toast.BackgroundTransparency = 0.1
Main.Toast.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Toast.BorderSizePixel = 0
Main.Toast.Position = UDim2.new(0.7, 0, 0.725, 0)
Main.Toast.Size = UDim2.new(0.281, 0, 0.147, 0)
Main.Toast.Visible = false
Main.Toast.ZIndex = 4
Main.Toast.Font = Enum.Font.SourceSans
Main.Toast.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.Toast.Text = ""
Main.Toast.TextColor3 = Color3.fromRGB(0, 0, 0)
Main.Toast.TextSize = 14

Main.UIAspectRatioConstraint_22.Name = randString()
Main.UIAspectRatioConstraint_22.AspectRatio = 3.411

Main.UICorner_34.CornerRadius = UDim.new(0.15, 0)
Main.UICorner_34.Name = randString()

Main.UIListLayout_5.Name = randString()
Main.UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout_5.Padding = UDim.new(0.015, 0)

Main.UIPadding_31.Name = randString()
Main.UIPadding_31.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_31.PaddingLeft = UDim.new(0.033, 0)
Main.UIPadding_31.PaddingRight = UDim.new(0.033, 0)
Main.UIPadding_31.PaddingTop = UDim.new(0.1, 0)

Main.ToastExpiringBar.Name = randString()
Main.ToastExpiringBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastExpiringBar.BackgroundTransparency = 0.75
Main.ToastExpiringBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ToastExpiringBar.BorderSizePixel = 0
Main.ToastExpiringBar.LayoutOrder = 3
Main.ToastExpiringBar.Position = UDim2.new(0, 0, 0.901, 0)
Main.ToastExpiringBar.Size = UDim2.new(1, 0, 0.084, 0)

Main.ToastBar.Name = randString()
Main.ToastBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ToastBar.BorderSizePixel = 0
Main.ToastBar.LayoutOrder = 3
Main.ToastBar.Size = UDim2.new(0.5, 0, 1, 0)

Main.UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(115, 115, 115)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
Main.UIGradient_5.Name = randString()

Main.ToastDescription.Name = randString()
Main.ToastDescription.AnchorPoint = Vector2.new(1, 1)
Main.ToastDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastDescription.BackgroundTransparency = 1
Main.ToastDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ToastDescription.BorderSizePixel = 0
Main.ToastDescription.LayoutOrder = 1
Main.ToastDescription.Position = UDim2.new(1, 0, 1.125, 0)
Main.ToastDescription.Size = UDim2.new(1, 0, 0.525, 0)
Main.ToastDescription.Font = Enum.Font.Unknown
Main.ToastDescription.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Main.ToastDescription.Text = "Description description description description description description"
Main.ToastDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastDescription.TextScaled = true
Main.ToastDescription.TextSize = 14
Main.ToastDescription.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastDescription.TextTransparency = 0.25
Main.ToastDescription.TextWrapped = true
Main.ToastDescription.RichText = true
Main.ToastDescription.TextXAlignment = Enum.TextXAlignment.Left

Main.ToastTitle.Name = randString()
Main.ToastTitle.AnchorPoint = Vector2.new(1, 1)
Main.ToastTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastTitle.BackgroundTransparency = 1
Main.ToastTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ToastTitle.BorderSizePixel = 0
Main.ToastTitle.Position = UDim2.new(1, 0, 0.357, 0)
Main.ToastTitle.Size = UDim2.new(1, 0, 0.357, 0)
Main.ToastTitle.Font = Enum.Font.Unknown
Main.ToastTitle.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ToastTitle.Text = "Title"
Main.ToastTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastTitle.TextScaled = true
Main.ToastTitle.TextSize = 14
Main.ToastTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.ToastTitle.TextWrapped = true
Main.ToastTitle.TextXAlignment = Enum.TextXAlignment.Left

Main.AppTitle_Logo_UIAspectRatioConstraint = duplicate(Main.UIAspectRatioConstraint)
Main.AppTitle_Logo_UIAspectRatioConstraint.Name = randString()
Main.AppTitle_Logo_UIAspectRatioConstraint.Parent = Main.AppTitle_Logo

Main.UIAspectRatioConstraint_3 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_3.Name = randString()
Main.UIAspectRatioConstraint_3.Parent = Main.CloseButton

Main.SideBar_UICorner = duplicate(Main.TopBar_UICorner)
Main.SideBar_UICorner.Name = randString()
Main.SideBar_UICorner.Parent = Main.SideBar

Main.UICorner_3 = duplicate(Main.UICorner)
Main.UICorner_3.Name = randString()
Main.UICorner_3.Parent = Main.PageIndicator

Main.UIAspectRatioConstraint_4 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_4.Name = randString()
Main.UIAspectRatioConstraint_4.Parent = Main.NavBar_HomeIMG

Main.SideBar_UICorner_2 = duplicate(Main.TopBar_UICorner)
Main.SideBar_UICorner_2.Name = randString()
Main.SideBar_UICorner_2.Parent = Main.NavBar_Home

Main.UIAspectRatioConstraint_5 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_5.Name = randString()
Main.UIAspectRatioConstraint_5.Parent = Main.NavBar_HomeIMG_2

Main.SideBar_UICorner_3 = duplicate(Main.TopBar_UICorner)
Main.SideBar_UICorner_3.Name = randString()
Main.SideBar_UICorner_3.Parent = Main.NavBar_Executor

Main.SideBar_UIListLayout_3 = duplicate(Main.SideBar_UIListLayout_2)
Main.SideBar_UIListLayout_3.Name = randString()
Main.SideBar_UIListLayout_3.Parent = Main.NavBar_Executor

Main.SideBar_UIPadding_3 = duplicate(Main.SideBar_UIPadding_2)
Main.SideBar_UIPadding_3.Name = randString()
Main.SideBar_UIPadding_3.Parent = Main.NavBar_Executor

Main.UIAspectRatioConstraint_6 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_6.Name = randString()
Main.UIAspectRatioConstraint_6.Parent = Main.NavBar_HomeIMG_3

Main.SideBar_UICorner_4 = duplicate(Main.TopBar_UICorner)
Main.SideBar_UICorner_4.Name = randString()
Main.SideBar_UICorner_4.Parent = Main.NavBar_Console

Main.SideBar_UIListLayout_4 = duplicate(Main.SideBar_UIListLayout_2)
Main.SideBar_UIListLayout_4.Name = randString()
Main.SideBar_UIListLayout_4.Parent = Main.NavBar_Console

Main.SideBar_UIPadding_4 = duplicate(Main.SideBar_UIPadding_2)
Main.SideBar_UIPadding_4.Name = randString()
Main.SideBar_UIPadding_4.Parent = Main.NavBar_Console

Main.UIAspectRatioConstraint_7 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_7.Name = randString()
Main.UIAspectRatioConstraint_7.Parent = Main.NavBar_HomeIMG_4

Main.SideBar_UICorner_5 = duplicate(Main.TopBar_UICorner)
Main.SideBar_UICorner_5.Name = randString()
Main.SideBar_UICorner_5.Parent = Main.NavBar_Scripts

Main.SideBar_UIListLayout_5 = duplicate(Main.SideBar_UIListLayout_2)
Main.SideBar_UIListLayout_5.Name = randString()
Main.SideBar_UIListLayout_5.Parent = Main.NavBar_Scripts

Main.SideBar_UIPadding_5 = duplicate(Main.SideBar_UIPadding_2)
Main.SideBar_UIPadding_5.Name = randString()
Main.SideBar_UIPadding_5.Parent = Main.NavBar_Scripts

Main.UIAspectRatioConstraint_8 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_8.Name = randString()
Main.UIAspectRatioConstraint_8.Parent = Main.NavBar_HomeIMG_5

Main.SideBar_UICorner_6 = duplicate(Main.TopBar_UICorner)
Main.SideBar_UICorner_6.Name = randString()
Main.SideBar_UICorner_6.Parent = Main.NavBar_Settings

Main.SideBar_UIListLayout_6 = duplicate(Main.SideBar_UIListLayout_2)
Main.SideBar_UIListLayout_6.Name = randString()
Main.SideBar_UIListLayout_6.Parent = Main.NavBar_Settings

Main.SideBar_UIPadding_6 = duplicate(Main.SideBar_UIPadding_2)
Main.SideBar_UIPadding_6.Name = randString()
Main.SideBar_UIPadding_6.Parent = Main.NavBar_Settings

Main.UICorner_4 = duplicate(Main.UICorner_2)
Main.UICorner_4.Name = randString()
Main.UICorner_4.Parent = Main.Home

Main.UICorner_5 = duplicate(Main.TopBar_UICorner)
Main.UICorner_5.Name = randString()
Main.UICorner_5.Parent = Main.YouTubeButton

Main.UIAspectRatioConstraint_9 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_9.Name = randString()
Main.UIAspectRatioConstraint_9.Parent = Main.Youtube

Main.UICorner_7 = duplicate(Main.TopBar_UICorner)
Main.UICorner_7.Name = randString()
Main.UICorner_7.Parent = Main.DiscordButton

Main.UIListLayout_2 = duplicate(Main.UIListLayout)
Main.UIListLayout_2.Name = randString()
Main.UIListLayout_2.Parent = Main.DiscordButton

Main.UIPadding_5 = duplicate(Main.UIPadding_4)
Main.UIPadding_5.Name = randString()
Main.UIPadding_5.Parent = Main.DiscordButton

Main.UIAspectRatioConstraint_10 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_10.Name = randString()
Main.UIAspectRatioConstraint_10.Parent = Main.Youtube_2

Main.UICorner_8 = duplicate(Main.UICorner_6)
Main.UICorner_8.Name = randString()
Main.UICorner_8.Parent = Main.Youtube_2

Main.UICorner_9 = duplicate(Main.TopBar_UICorner)
Main.UICorner_9.Name = randString()
Main.UICorner_9.Parent = Main.SPDMButton

Main.UIPadding_6 = duplicate(Main.UIPadding_4)
Main.UIPadding_6.Name = randString()
Main.UIPadding_6.Parent = Main.SPDMButton

Main.UIAspectRatioConstraint_11 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_11.Name = randString()
Main.UIAspectRatioConstraint_11.Parent = Main.Youtube_3

Main.UICorner_10 = duplicate(Main.UICorner_6)
Main.UICorner_10.Name = randString()
Main.UICorner_10.Parent = Main.Youtube_3

Main.UICorner_11 = duplicate(Main.UICorner)
Main.UICorner_11.Name = randString()
Main.UICorner_11.Parent = Main.DecoratorDOT

Main.UIAspectRatioConstraint_12 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_12.Name = randString()
Main.UIAspectRatioConstraint_12.Parent = Main.DecoratorDOT

Main.UICorner_12 = duplicate(Main.UICorner)
Main.UICorner_12.Name = randString()
Main.UICorner_12.Parent = Main.DecoratorDOT_2

Main.UIAspectRatioConstraint_13 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_13.Name = randString()
Main.UIAspectRatioConstraint_13.Parent = Main.DecoratorDOT_2

Main.UICorner_13 = duplicate(Main.UICorner_2)
Main.UICorner_13.Name = randString()
Main.UICorner_13.Parent = Main.Executor

Main.UIPadding_7 = duplicate(Main.UIPadding_3)
Main.UIPadding_7.Name = randString()
Main.UIPadding_7.Parent = Main.Executor

Main.UICorner_15 = duplicate(Main.UICorner_6)
Main.UICorner_15.Name = randString()
Main.UICorner_15.Parent = Main.BottomBar

Main.UICorner_17 = duplicate(Main.UICorner_16)
Main.UICorner_17.Name = randString()
Main.UICorner_17.Parent = Main.MainClearButton

Main.UICorner_18 = duplicate(Main.UICorner_16)
Main.UICorner_18.Name = randString()
Main.UICorner_18.Parent = Main.CopyButton

Main.UICorner_19 = duplicate(Main.UICorner_16)
Main.UICorner_19.Name = randString()
Main.UICorner_19.Parent = Main.PasteButton

Main.UICorner_20 = duplicate(Main.UICorner_2)
Main.UICorner_20.Name = randString()
Main.UICorner_20.Parent = Main.HydraHub

Main.UIPadding_14 = duplicate(Main.UIPadding_3)
Main.UIPadding_14.Name = randString()
Main.UIPadding_14.Parent = Main.HydraHub

Main.UIPadding_15 = duplicate(Main.UIPadding_10)
Main.UIPadding_15.Name = randString()
Main.UIPadding_15.Parent = Main.HubExecute

Main.UICorner_21 = duplicate(Main.UICorner_16)
Main.UICorner_21.Name = randString()
Main.UICorner_21.Parent = Main.HubExecute

Main.UICorner_22 = duplicate(Main.UICorner_2)
Main.UICorner_22.Name = randString()
Main.UICorner_22.Parent = Main.Console

Main.UIPadding_16 = duplicate(Main.UIPadding_3)
Main.UIPadding_16.Name = randString()
Main.UIPadding_16.Parent = Main.Console

Main.UICorner_23 = duplicate(Main.UICorner_2)
Main.UICorner_23.Name = randString()
Main.UICorner_23.Parent = Main.YesNoPopupWindow

Main.UICorner_24 = duplicate(Main.UICorner_16)
Main.UICorner_24.Name = randString()
Main.UICorner_24.Parent = Main.YesButton

Main.UIPadding_18 = duplicate(Main.UIPadding)
Main.UIPadding_18.Name = randString()
Main.UIPadding_18.Parent = Main.YesButton

Main.UICorner_25 = duplicate(Main.UICorner_16)
Main.UICorner_25.Name = randString()
Main.UICorner_25.Parent = Main.NoButton

Main.UIPadding_19 = duplicate(Main.UIPadding)
Main.UIPadding_19.Name = randString()
Main.UIPadding_19.Parent = Main.NoButton

Main.UIPadding_20 = duplicate(Main.UIPadding_17)
Main.UIPadding_20.Name = randString()
Main.UIPadding_20.Parent = Main.UpdateDetectedWithRoblox

Main.UICorner_26 = duplicate(Main.TopBar_UICorner)
Main.UICorner_26.Name = randString()
Main.UICorner_26.Parent = Main.UpdateArceusXRobloxButton

Main.MainWindow_UICorner = duplicate(Main.UICorner)
Main.MainWindow_UICorner.Name = randString()
Main.MainWindow_UICorner.Parent = Main.RedSeparator

Main.UIAspectRatioConstraint_15 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_15.Name = randString()
Main.UIAspectRatioConstraint_15.Parent = Main.KeySystem_AppLogo

Main.UIAspectRatioConstraint_16 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_16.Name = randString()
Main.UIAspectRatioConstraint_16.Parent = Main.Logo

Main.UICorner_27 = duplicate(Main.TopBar_UICorner)
Main.UICorner_27.Name = randString()
Main.UICorner_27.Parent = Main.KeySystem_ExitButton2

Main.UIPadding_23 = duplicate(Main.UIPadding_17)
Main.UIPadding_23.Name = randString()
Main.UIPadding_23.Parent = Main.UpdateDetected

Main.UICorner_28 = duplicate(Main.TopBar_UICorner)
Main.UICorner_28.Name = randString()
Main.UICorner_28.Parent = Main.UpdateArceusXButton

Main.UIPadding_24 = duplicate(Main.UIPadding_21)
Main.UIPadding_24.Name = randString()
Main.UIPadding_24.Parent = Main.UpdateArceusXButton

Main.MainWindow_UICorner_2 = duplicate(Main.UICorner)
Main.MainWindow_UICorner_2.Name = randString()
Main.MainWindow_UICorner_2.Parent = Main.RedSeparator_2

Main.UIAspectRatioConstraint_17 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_17.Name = randString()
Main.UIAspectRatioConstraint_17.Parent = Main.KeySystem_AppLogo_2

Main.UIAspectRatioConstraint_18 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_18.Name = randString()
Main.UIAspectRatioConstraint_18.Parent = Main.Logo_2

Main.KeySystem_ExitButton3 = duplicate(Main.KeySystem_ExitButton2)
Main.KeySystem_ExitButton3.Name = randString()
Main.KeySystem_ExitButton3.Parent = Main.UpdateDetected

Main.UICorner_29 = duplicate(Main.TopBar_UICorner)
Main.UICorner_29.Name = randString()
Main.UICorner_29.Parent = Main.KeySystem_ExitButton3

Main.UIPadding_25 = duplicate(Main.UIPadding_22)
Main.UIPadding_25.Name = randString()
Main.UIPadding_25.Parent = Main.KeySystem_ExitButton3

Main.UIPadding_26 = duplicate(Main.UIPadding_17)
Main.UIPadding_26.Name = randString()
Main.UIPadding_26.Parent = Main.KeySystem

Main.UIPadding_27 = duplicate(Main.UIPadding_22)
Main.UIPadding_27.Name = randString()
Main.UIPadding_27.Parent = Main.KeySystem_CheckButton

Main.UICorner_30 = duplicate(Main.TopBar_UICorner)
Main.UICorner_30.Name = randString()
Main.UICorner_30.Parent = Main.KeySystem_CheckButton

Main.PopupTitle_18 = duplicate(Main.PopupTitle_11)
Main.PopupTitle_18.Name = randString()
Main.PopupTitle_18.Parent = Main.KeySystem

Main.MainWindow_UICorner_3 = duplicate(Main.UICorner)
Main.MainWindow_UICorner_3.Name = randString()
Main.MainWindow_UICorner_3.Parent = Main.RedSeparator_3

Main.PopupTitle_19 = duplicate(Main.PopupTitle_12)
Main.PopupTitle_19.Name = randString()
Main.PopupTitle_19.Parent = Main.KeySystem

Main.PopupTitle_21 = duplicate(Main.PopupTitle_14)
Main.PopupTitle_21.Name = randString()
Main.PopupTitle_21.Parent = Main.KeySystem

Main.Logo_3 = duplicate(Main.Logo_2)
Main.Logo_3.Name = randString()
Main.Logo_3.Parent = Main.KeySystem

Main.UIAspectRatioConstraint_20 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_20.Name = randString()
Main.UIAspectRatioConstraint_20.Parent = Main.Logo_3

Main.UICorner_31 = duplicate(Main.TopBar_UICorner)
Main.UICorner_31.Name = randString()
Main.UICorner_31.Parent = Main.KeySystem_ExitButton

Main.UIPadding_28 = duplicate(Main.UIPadding_22)
Main.UIPadding_28.Name = randString()
Main.UIPadding_28.Parent = Main.KeySystem_ExitButton

Main.UIPadding_29 = duplicate(Main.UIPadding_22)
Main.UIPadding_29.Name = randString()
Main.UIPadding_29.Parent = Main.KeySystem_GetKeyButton

Main.UICorner_32 = duplicate(Main.TopBar_UICorner)
Main.UICorner_32.Name = randString()
Main.UICorner_32.Parent = Main.KeySystem_GetKeyButton

Main.UIAspectRatioConstraint_21 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_21.Name = randString()
Main.UIAspectRatioConstraint_21.Parent = Main.Logo_4

Main.UICorner_33 = duplicate(Main.UICorner_6)
Main.UICorner_33.Name = randString()
Main.UICorner_33.Parent = Main.Keysystem_Keybox

Main.UICorner_35 = duplicate(Main.UICorner)
Main.UICorner_35.Name = randString()
Main.UICorner_35.Parent = Main.ToastExpiringBar

Main.UICorner_36 = duplicate(Main.UICorner)
Main.UICorner_36.Name = randString()
Main.UICorner_36.Parent = Main.ToastBar

Main.Main.Parent = gethui and gethui() or game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.FloatingIcon.Parent = Main.Main
Main.UICorner.Parent = Main.FloatingIcon
Main.UIPadding.Parent = Main.FloatingIcon
Main.UIAspectRatioConstraint.Parent = Main.FloatingIcon
Main.FloatingIconImage.Parent = Main.FloatingIcon
Main.MainWindow.Parent = Main.Main
Main.UIAspectRatioConstraint_2.Parent = Main.MainWindow
Main.UICorner_2.Parent = Main.MainWindow
Main.UIPadding_2.Parent = Main.MainWindow
Main.TopBar.Parent = Main.MainWindow
Main.TopBar_UICorner.Parent = Main.TopBar
Main.AppTitle.Parent = Main.TopBar
Main.AppTitle_UIListLayout.Parent = Main.AppTitle
Main.AppTitle_Text.Parent = Main.AppTitle
Main.AppTitle_Logo.Parent = Main.AppTitle
Main.AppInfo.Parent = Main.TopBar
Main.AppVersion_Text.Parent = Main.AppInfo
Main.AppVersion.Parent = Main.AppInfo
Main.CloseButton.Parent = Main.TopBar
Main.Separator.Parent = Main.MainWindow
Main.SideBar.Parent = Main.MainWindow
Main.PageIndicator.Parent = Main.SideBar
Main.Navigation.Parent = Main.SideBar
Main.NavBar.Parent = Main.Navigation
Main.SideBar_UIListLayout.Parent = Main.NavBar
Main.SideBar_UIPadding.Parent = Main.NavBar
Main.NavBar_Home.Parent = Main.NavBar
Main.Text.Parent = Main.NavBar_Home
Main.NavBar_HomeIMG.Parent = Main.NavBar_Home
Main.SideBar_UIListLayout_2.Parent = Main.NavBar_Home
Main.SideBar_UIPadding_2.Parent = Main.NavBar_Home
Main.NavBar_Executor.Parent = Main.NavBar
Main.Text_2.Parent = Main.NavBar_Executor
Main.NavBar_HomeIMG_2.Parent = Main.NavBar_Executor
Main.NavBar_Console.Parent = Main.NavBar
Main.Text_3.Parent = Main.NavBar_Console
Main.NavBar_HomeIMG_3.Parent = Main.NavBar_Console
Main.NavBar_Scripts.Parent = Main.NavBar
Main.Text_4.Parent = Main.NavBar_Scripts
Main.NavBar_HomeIMG_4.Parent = Main.NavBar_Scripts
Main.NavBar_Settings.Parent = Main.NavBar
Main.Text_5.Parent = Main.NavBar_Settings
Main.NavBar_HomeIMG_5.Parent = Main.NavBar_Settings
Main.SideBar_UIPadding_7.Parent = Main.Navigation
Main.Content.Parent = Main.MainWindow
Main.Home.Parent = Main.Content
Main.UIPadding_3.Parent = Main.Home
Main.Text_6.Parent = Main.Home
Main.Text_7.Parent = Main.Home
Main.Text_8.Parent = Main.Home
Main.Text_9.Parent = Main.Home
Main.YouTubeButton.Parent = Main.Home
Main.UIListLayout.Parent = Main.YouTubeButton
Main.UIPadding_4.Parent = Main.YouTubeButton
Main.Youtube.Parent = Main.YouTubeButton
Main.UICorner_6.Parent = Main.Youtube
Main.Skills.Parent = Main.YouTubeButton
Main.DiscordButton.Parent = Main.Home
Main.Youtube_2.Parent = Main.DiscordButton
Main.Skills_2.Parent = Main.DiscordButton
Main.SPDMButton.Parent = Main.Home
Main.UIListLayout_3.Parent = Main.SPDMButton
Main.Youtube_3.Parent = Main.SPDMButton
Main.Skills_3.Parent = Main.SPDMButton
Main.Text_10.Parent = Main.Home
Main.Text_11.Parent = Main.Home
Main.Text_12.Parent = Main.Home
Main.Text_13.Parent = Main.Home
Main.DecoratorDOT.Parent = Main.Home
Main.DecoratorDOT_2.Parent = Main.Home
Main.Main_UIPageLayout.Parent = Main.Content
Main.Executor.Parent = Main.Content
Main.ScrollingFrame.Parent = Main.Executor
Main.MainEditor.Parent = Main.ScrollingFrame
Main.UICorner_14.Parent = Main.MainEditor
Main.UIPadding_8.Parent = Main.MainEditor
Main.LineNumberFrame.Parent = Main.ScrollingFrame
Main.LineTemplate.Parent = Main.LineNumberFrame
Main.UIPadding_9.Parent = Main.LineNumberFrame
Main.BottomBar.Parent = Main.Executor
Main.UIListLayout_4.Parent = Main.BottomBar
Main.MainExecuteButton.Parent = Main.BottomBar
Main.UIPadding_10.Parent = Main.MainExecuteButton
Main.UICorner_16.Parent = Main.MainExecuteButton
Main.MainClearButton.Parent = Main.BottomBar
Main.UIPadding_11.Parent = Main.MainClearButton
Main.CopyButton.Parent = Main.BottomBar
Main.UIPadding_12.Parent = Main.CopyButton
Main.PasteButton.Parent = Main.BottomBar
Main.UIPadding_13.Parent = Main.PasteButton
Main.HydraHub.Parent = Main.Content
Main.Text_14.Parent = Main.HydraHub
Main.Text_15.Parent = Main.HydraHub
Main.Text_16.Parent = Main.HydraHub
Main.Text_17.Parent = Main.HydraHub
Main.HubExecute.Parent = Main.HydraHub
Main.Console.Parent = Main.Content
Main.Text_18.Parent = Main.Console
Main.Text_19.Parent = Main.Console
Main.PopupModal.Parent = Main.Main
Main.YesNoPopupWindow.Parent = Main.PopupModal
Main.YesNo_PopupTitle.Parent = Main.YesNoPopupWindow
Main.UIPadding_17.Parent = Main.YesNoPopupWindow
Main.YesNo_PopupText.Parent = Main.YesNoPopupWindow
Main.YesButton.Parent = Main.YesNoPopupWindow
Main.UIAspectRatioConstraint_14.Parent = Main.YesNoPopupWindow
Main.NoButton.Parent = Main.YesNoPopupWindow
Main.UpdateDetectedWithRoblox.Parent = Main.PopupModal
Main.UpdateArceusXRobloxButton.Parent = Main.UpdateDetectedWithRoblox
Main.UIPadding_21.Parent = Main.UpdateArceusXRobloxButton
Main.PopupTitle.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_2.Parent = Main.UpdateDetectedWithRoblox
Main.RedSeparator.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_3.Parent = Main.UpdateDetectedWithRoblox
Main.KeySystem_AppLogo.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_4.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_5.Parent = Main.UpdateDetectedWithRoblox
Main.Logo.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_6.Parent = Main.UpdateDetectedWithRoblox
Main.PastRobloxVersion.Parent = Main.UpdateDetectedWithRoblox
Main.UIGradient.Parent = Main.PastRobloxVersion
Main.NewRobloxVersion.Parent = Main.UpdateDetectedWithRoblox
Main.UIGradient_2.Parent = Main.NewRobloxVersion
Main.PopupTitle_7.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_8.Parent = Main.UpdateDetectedWithRoblox
Main.KeySystem_ExitButton2.Parent = Main.UpdateDetectedWithRoblox
Main.UIPadding_22.Parent = Main.KeySystem_ExitButton2
Main.UpdateDetected.Parent = Main.PopupModal
Main.UpdateArceusXButton.Parent = Main.UpdateDetected
Main.PopupTitle_9.Parent = Main.UpdateDetected
Main.PopupTitle_10.Parent = Main.UpdateDetected
Main.PopupTitle_11.Parent = Main.UpdateDetected
Main.RedSeparator_2.Parent = Main.UpdateDetected
Main.PopupTitle_12.Parent = Main.UpdateDetected
Main.KeySystem_AppLogo_2.Parent = Main.UpdateDetected
Main.PopupTitle_13.Parent = Main.UpdateDetected
Main.PopupTitle_14.Parent = Main.UpdateDetected
Main.Logo_2.Parent = Main.UpdateDetected
Main.PopupTitle_15.Parent = Main.UpdateDetected
Main.ArceusPastVersion.Parent = Main.UpdateDetected
Main.UIGradient_3.Parent = Main.ArceusPastVersion
Main.ArceusNewVersion.Parent = Main.UpdateDetected
Main.UIGradient_4.Parent = Main.ArceusNewVersion
Main.OR.Parent = Main.UpdateDetected
Main.KeySystem.Parent = Main.Main
Main.KeySystem_CheckButton.Parent = Main.KeySystem
Main.PopupTitle_16.Parent = Main.KeySystem
Main.PopupTitle_17.Parent = Main.KeySystem
Main.RedSeparator_3.Parent = Main.KeySystem
Main.KeySystem_AppLogo_3.Parent = Main.KeySystem
Main.UIAspectRatioConstraint_19.Parent = Main.KeySystem_AppLogo_3
Main.PopupTitle_20.Parent = Main.KeySystem
Main.PopupTitle_22.Parent = Main.KeySystem
Main.KeySystem_ExitButton.Parent = Main.KeySystem
Main.KeySystem_GetKeyButton.Parent = Main.KeySystem
Main.Logo_4.Parent = Main.KeySystem
Main.KeyStatus.Parent = Main.KeySystem
Main.PopupTitle_23.Parent = Main.KeySystem
Main.Keysystem_Keybox.Parent = Main.KeySystem
Main.UIStroke.Parent = Main.Keysystem_Keybox
Main.UIPadding_30.Parent = Main.Keysystem_Keybox
Main.PopupTitle_24.Parent = Main.KeySystem
Main.Toast.Parent = Main.Main
Main.UIAspectRatioConstraint_22.Parent = Main.Toast
Main.UICorner_34.Parent = Main.Toast
Main.UIListLayout_5.Parent = Main.Toast
Main.UIPadding_31.Parent = Main.Toast
Main.ToastExpiringBar.Parent = Main.Toast
Main.ToastBar.Parent = Main.ToastExpiringBar
Main.UIGradient_5.Parent = Main.ToastBar
Main.ToastDescription.Parent = Main.Toast
Main.ToastTitle.Parent = Main.Toast

if identifyexecutor then
	local name: string, v = identifyexecutor()
	if not name:find("Lures") then
		closeGui()
		return
	end
end

if game.PlaceId == 14708612238 then
	closeGui()
	return
end

do
	local coding_key = "HyVersion"
	local file_name = "version.hy"

	local popup = popups.create(popups.data.types.UpdateDetected, "uiversion")
	local oldVersion = storage.readFile(storage.data.types.Configs, file_name, coding_key)

	if oldVersion then
		if oldVersion ~= CURRENT_VERSION then
			popup.Show(oldVersion)
		end
	end

	storage.saveFile(storage.data.types.Configs, file_name, CURRENT_VERSION, true, coding_key)
end

task.spawn(function()
	repeat
		local success, value = pcall(function()
			Main.Main.DisplayOrder = 1999999999 -- Max num (if over, becomes negative)
		end)

		if success then
			break
		end

		task.wait()
	until false
end)

if not isStudio then
	task.spawn(function()
		local exited, count, updated, new = false, 0, nil, nil

		repeat
			if count > 0 then
				misc.toast.short("Version checking", "Error checking version, may be related to your network. If the problem persists, try changing your connection, restarting your router, using a VPN, or contacting our support team.")
				task.wait(5)
			end

			updated, new = authentication.isUpdated()
			count += 1
		until new and new ~= "Unknown"

		if not updated and getversion then
			-- Print that is not up to date and Yield
			local popup = popups.create(popups.data.types.UpdateDetectedWithRoblox, "robloxversion")
			popup.OnResponse.Event:Connect(function(response)
				exited = true
				closeGui()
			end)

			popup.Show(new or "Unknown")
			-- authentication.data.update_callback.Event:Wait() -- Never used lol.
			-- closeGui()
			return
		end

		if authentication.isKeyless() then
			misc.toast.long("Keyless", "Lures Ware is currently in keyless mode! enjoy without having to deal with the keysystem!")

		else
			if not gethwid or not gethwid() then
				rconsole.warn("This exploit does not support gethwid / get_hwid function")	
				closeGui()
				return
			end

			Main.KeySystem_GetKeyButton.MouseButton1Click:Connect(authentication.getKey)
			Main.KeySystem_ExitButton.MouseButton1Click:Connect(function()
				exited = true
				closeGui()
			end)

			local key = nil
			while not authentication.isAuthenticated(key) and not exited do
				Main.KeyStatus.Text = "Key not found!"
				Main.KeyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
				Main.KeySystem.Visible = true

				for i=5, 1, -1 do
					Main.KeySystem_CheckButton.Text = "Check in " .. i .. "s"
					task.wait(1)
				end

				Main.KeySystem_CheckButton.Text = "Check Key"
				Main.KeySystem_CheckButton.MouseButton1Click:Wait()
				key = Main.Keysystem_Keybox.Text;
			end
		end

		if exited then
			-- stop execution?
			return
		end

		if Main.KeySystem.Visible then
			Main.KeyStatus.Text = "Key found!"
			Main.KeyStatus.TextColor3 = Color3.fromRGB(0, 170, 0)
			task.wait(3)
		end

		tsuo_loaded = true
		Main.FloatingIcon.Visible = true
		Main.MainWindow.Size = UDim2.fromScale(0, 0)

		TWEEN_SERVICE:Create(Main.KeySystem, TweenInfo.new(
			0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0
			), { Size = UDim2.fromScale(0, 0) })

		task.wait(0.5)
		Main.KeySystem.Visible = false
	end)
end

Main.AppVersion.Text = CURRENT_VERSION

configs.loadSettings({
	["ConfirmationPopup"] = {true, nil}
}, true)

task.spawn(misc.renderer.startRendering)
pages.addPage(Main.NavBar_Home, Main.Home)
pages.addPage(Main.NavBar_Executor, Main.Executor)
pages.addPage(Main.NavBar_Console, Main.Console)
pages.addPage(Main.NavBar_Scripts, Main.HydraHub)

pages.handleCustomDrag(Main.MainWindow)
pages.handleCustomDrag(Main.FloatingIcon)

--pages.handlePageLayout(Main.Main_UIPageLayout, function(page)
--	pages.setMainPageByIndex(page)
--end, nil, false)

buttons.holdable(Main.FloatingIcon, false).ShortClick.Event:Connect(function()
	TWEEN_SERVICE:Create(Main.MainWindow, TweenInfo.new(
		0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0
		), { Size = UDim2.fromScale(0.65, 0.65) }):Play()

	TWEEN_SERVICE:Create(Main.FloatingIcon, TweenInfo.new(
		0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0
		), { Size = UDim2.fromScale(0, 0) }):Play()

	task.wait(0.6)
	pages.setMainPageByIndex(nil)
end)

Main.CloseButton.MouseButton1Click:Connect(function()
	TWEEN_SERVICE:Create(Main.MainWindow, TweenInfo.new(
		0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0
		), { Size = UDim2.fromScale(0, 0) }):Play()

	TWEEN_SERVICE:Create(Main.FloatingIcon, TweenInfo.new(
		0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0
		), { Size = UDim2.fromScale(0.104, 0.185) }):Play()
end)

Main.HubExecute.MouseButton1Click:Connect(function()
	misc.toast.short("Lures Hub", "Coming soon!")
	--executor.push("loadstring(game:HttpGet('https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts', true))()")
end)

--[[
		[ EXECUTION ]
]]

do
	local popup = popups.create(popups.data.types.YesNo, "executor")
	popup.OnResponse.Event:Connect(function(response, ...)
		local args = {...}

		if response and args[1] then
			executor.push(args[1], true)
		end
	end)

	local clippopup = popups.create(popups.data.types.YesNo, "clipexecutor")
	clippopup.OnResponse.Event:Connect(function(response)
		if response then
			executor.pushclipboard(true)
		end
	end)
end

--[[
		[ EDITORS ]
]]

do
	local editor = executor.addEditor(Main.MainEditor, Main.MainExecuteButton, Main.LineNumberFrame)

	local clearPopup = popups.create(popups.data.types.YesNo, "clear")
	local clear = buttons.holdable(Main.MainClearButton, false)
	local paste = buttons.holdable(Main.PasteButton, false)
	local copy = buttons.holdable(Main.CopyButton, false)

	local function clearEditor(editor: TextBox, noConfirm: boolean)
		if noConfirm or not configs.getSetting("ConfirmationPopup") then
			editor.Text = ""

		else	
			clearPopup.Show("Clearing editor", "Do you want to clear the editor?", editor)
		end
	end

	Main.MainExecuteButton.MouseButton1Click:Connect(function()
		if editor.Text == "" then
			executor.pushclipboard(false)
		end
	end)

	clearPopup.OnResponse.Event:Connect(function(response, ...)
		local args = {...}

		if response and args[1] then
			args[1].Text = ""
		end
	end)

	clear.ShortClick.Event:Connect(function(button)
		if configs.getSetting("ConfirmationPopup") then
			clearEditor(editor, false)

			button.Visible = false
			Main.MainExecuteButton.Text = "Execute clipboard"
		else
			misc.toast.short("Info", "Hold the button to clear!")
		end
	end)

	clear.LongClick.Event:Connect(function(button)
		clearEditor(editor, false)

		button.Visible = false
		Main.MainExecuteButton.Text = "Execute clipboard"
	end)

	paste.ShortClick.Event:Connect(function()
		misc.toast.short("Info", "Hold the button to paste!")
	end)

	paste.LongClick.Event:Connect(function()
		editor.Text = editor.Text .. misc.clipboard.get()

		Main.MainExecuteButton.Text = editor.Text == "" and "Execute clipboard" or "Execute"
		clear.Button.Visible = editor.Text ~= ""
	end)

	copy.ShortClick.Event:Connect(function()
		misc.toast.short("Info", "Hold the button to copy!")
	end)

	copy.LongClick.Event:Connect(function()
		misc.clipboard.set(editor.Text)
	end)

	local defaultSize = Main.MainWindow.Size
	local editorFocused = true
	local lastSize = nil
	local lastPos = nil

	local function stretch()
		lastSize = Main.MainWindow.Size
		lastPos = Main.MainWindow.Position

		Main.MainWindow.Size = defaultSize
		Main.MainWindow.Position = UDim2.fromScale(0.5, 0.225)
	end

	local function reset()
		if lastSize and lastPos then
			Main.MainWindow.Size = lastSize
			Main.MainWindow.Position = lastPos
		end
	end

	editor.Focused:Connect(function()
		editorFocused = true
		--stretch()
	end)

	editor.FocusLost:Connect(function()
		Main.MainExecuteButton.Text = editor.Text == "" and "Execute clipboard" or "Execute"
		clear.Button.Visible = editor.Text ~= ""
		--reset()
	end)

	if editor.Text == "" then
		clear.Button.Visible = false
		Main.MainExecuteButton.Text = "Execute clipboard"
	end
end

do
	Main.DiscordButton.MouseButton1Click:Connect(function()
		misc.clipboard.set("https://discord.gg/qE5CM9Sp3A")
	end)

	Main.YouTubeButton.MouseButton1Click:Connect(function()
		misc.clipboard.set("https://www.youtube.com/@eolures/videos")
	end)

	Main.SPDMButton.MouseButton1Click:Connect(function()
		misc.clipboard.set("https://spdmteam.com/")
	end)
end

Main.MainWindow.Size = UDim2.fromScale(0, 0)
if isStudio then
	Main.FloatingIcon.Visible = true
end
