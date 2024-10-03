-- Gui to Lua
-- Version: 3.2 - Exp

-- Instances:

local Main = {
	Main = Instance.new("ScreenGui"),
	MainWindow = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	UIPadding = Instance.new("UIPadding"),
	CloseTabButton = Instance.new("TextButton"),
	UICorner_2 = Instance.new("UICorner"),
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint"),
	NewTabButton = Instance.new("TextButton"),
	TextLabel = Instance.new("TextLabel"),
	CloseButton = Instance.new("ImageButton"),
	FindButton = Instance.new("ImageButton"),
	Editor = Instance.new("Frame"),
	ScrollingFrame = Instance.new("ScrollingFrame"),
	MainEditor = Instance.new("TextBox"),
	UICorner_5 = Instance.new("UICorner"),
	UIPadding_2 = Instance.new("UIPadding"),
	LineNumberFrame = Instance.new("Frame"),
	LineTemplate = Instance.new("TextLabel"),
	UIPadding_3 = Instance.new("UIPadding"),
	ButtonsBar = Instance.new("Frame"),
	ExecuteButton = Instance.new("TextButton"),
	UIPadding_4 = Instance.new("UIPadding"),
	UIListLayout = Instance.new("UIListLayout"),
	ExecuteClipboardButton = Instance.new("TextButton"),
	ClearButton = Instance.new("TextButton"),
	UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint"),
	TabsList = Instance.new("ScrollingFrame"),
	UIListLayout_2 = Instance.new("UIListLayout"),
	OpenTab = Instance.new("TextButton"),
	UICorner_9 = Instance.new("UICorner"),
	TabIconButton = Instance.new("ImageButton"),
	TabName = Instance.new("TextLabel"),
	UIListLayout_3 = Instance.new("UIListLayout"),
	BaseTab = Instance.new("TextButton"),
	TabIconButton_2 = Instance.new("ImageButton"),
	TabName_2 = Instance.new("TextLabel"),
	Label = Instance.new("TextLabel"),
	UIPadding_7 = Instance.new("UIPadding"),
	CurrentScript = Instance.new("TextBox"),
	ImageLabel = Instance.new("ImageLabel"),
	UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint"),
	FloatingIcon = Instance.new("ImageButton"),
	UICorner_13 = Instance.new("UICorner"),
	FloatingIconImage = Instance.new("ImageLabel"),
	UIPadding_8 = Instance.new("UIPadding"),
	PopupModal = Instance.new("Frame"),
	YesNoPopupWindow = Instance.new("Frame"),
	YesNo_PopupTitle = Instance.new("TextLabel"),
	UIPadding_9 = Instance.new("UIPadding"),
	YesNo_PopupText = Instance.new("TextLabel"),
	YesButton = Instance.new("TextButton"),
	UIPadding_10 = Instance.new("UIPadding"),
	UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint"),
	NoButton = Instance.new("TextButton"),
	UpdateDetectedWithRoblox = Instance.new("Frame"),
	UpdateArceusXRobloxButton = Instance.new("TextButton"),
	UIPadding_13 = Instance.new("UIPadding"),
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
	PopupTitle_7 = Instance.new("TextLabel"),
	PopupTitle_8 = Instance.new("TextLabel"),
	KeySystem_ExitButton2 = Instance.new("TextButton"),
	UIPadding_14 = Instance.new("UIPadding"),
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
	ArceusNewVersion = Instance.new("TextLabel"),
	OR = Instance.new("TextLabel"),
	Toast = Instance.new("TextButton"),
	UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint"),
	UICorner_21 = Instance.new("UICorner"),
	UIListLayout_6 = Instance.new("UIListLayout"),
	UIPadding_18 = Instance.new("UIPadding"),
	ToastExpiringBar = Instance.new("Frame"),
	ToastBar = Instance.new("Frame"),
	UIGradient_5 = Instance.new("UIGradient"),
	ToastDescription = Instance.new("TextLabel"),
	ToastTitle = Instance.new("TextLabel"),
	KeySystem = Instance.new("Frame"),
	KeySystem_CheckButton = Instance.new("TextButton"),
	PopupTitle_16 = Instance.new("TextLabel"),
	PopupTitle_17 = Instance.new("TextLabel"),
	RedSeparator_3 = Instance.new("Frame"),
	KeySystem_AppLogo_3 = Instance.new("ImageLabel"),
	UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint"),
	PopupTitle_20 = Instance.new("TextLabel"),
	PopupTitle_21 = Instance.new("TextLabel"),
	PopupTitle_22 = Instance.new("TextLabel"),
	KeySystem_ExitButton = Instance.new("TextButton"),
	KeySystem_GetKeyButton = Instance.new("TextButton"),
	Logo_4 = Instance.new("ImageLabel"),
	KeyStatus = Instance.new("TextLabel"),
	PopupTitle_23 = Instance.new("TextLabel"),
	Keysystem_Keybox = Instance.new("TextBox"),
	UICorner_27 = Instance.new("UICorner"),
	UIStroke = Instance.new("UIStroke"),
	UIPadding_23 = Instance.new("UIPadding"),
	PopupTitle_24 = Instance.new("TextLabel"),
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

--[[
		WORKINK
		- SPDM Team
]]

local CURRENT_VERSION = "1.0.0"
local workink_loaded = false
Main = Main or {}

-- Fake Classes / Modules

--local workink_auth
local platoboost_auth
local cloudscripts
local executor
local rconsole
local configs
local storage
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

local protectfunction = protectfunction or function(...)
	return ...
end

local getnamecallmethod = getnamecallmethod or function(...)
	rconsole.warn("Fake getnamecallmethod called!")
	return ""
end

local isiosdevice = clonefunction(arceus.isiosdevice) or clonefunction(arceus.is_ios) or function()
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

local openurl = clonefunction(arceus.openurl) or function() end
local getversion = clonefunction(arceus.getversion) or function() end
local ispermissiongranted = clonefunction(arceus.ispermissiongranted) or function() end

local isarceusfolder = clonefunction(arceus.isarceusfolder) or clonefunction(isfolder)
local _makeAxFolder = clonefunction(arceus.makearceusfolder) or clonefunction(makefolder)
local makearceusfolder = function(path: string)
	if not path:lower():find("autoexec") then
		return _makeAxFolder(path)
	end
end

local deletearceusfolder = clonefunction(arceus.deletearceusfolder) or clonefunction(deletefolder)

local getfilesize = clonefunction(arceus.getfilesize) or function() return "N/A" end
local isarceusfile = clonefunction(arceus.isarceusfile) or clonefunction(isfile)
local readarceusfile = clonefunction(arceus.readarceusfile) or clonefunction(readfile)
local writearceusfile = clonefunction(arceus.writearceusfile) or clonefunction(writefile)
local listarceusfiles = clonefunction(arceus.listarceusfiles) or clonefunction(listfiles)
local deletearceusfile = clonefunction(arceus.deletearceusfile) or clonefunction(deletefile)

local iscustomasset = clonefunction(arceus.iscustomasset) or function() end
local writecustomasset = clonefunction(arceus.writecustomasset) or function() end
local deletecustomasset = clonefunction(arceus.deletecustomasset) or function() end
local retrievecustomasset = clonefunction(arceus.retrievecustomasset) or function() end

protectfunction(log)
protectfunction(openurl)
protectfunction(getversion)
protectfunction(getfilesize)
protectfunction(doarceusfile)
protectfunction(isarceusfile)
protectfunction(iscustomasset)
protectfunction(readarceusfile)
protectfunction(isarceusfolder)
protectfunction(getkeycompleted)
protectfunction(setkeycompleted)
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

local function roblox_clientId()
	return isStudio and 0 or RBX_ANALITYCS_SERVICE:GetClientId()
end
local gethwid = isiosdevice() and roblox_clientId or (gethwid or get_hwid or roblox_clientId)

local request = http_request or request or nil
local base64_encode = crypt and (crypt.base64encode or crypt.base64_encode or crypt.base64.encode or nil) or nil
local base64_decode = crypt and (crypt.base64decode or crypt.base64_decode or crypt.base64.decode or nil) or nil

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

--[[
if not isStudio then
	while not getgenv().drawingLoaded do
		task.wait(0.1);
	end
	
	getgenv().drawingLoaded = nil;
end
]]

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

	protectInstances = function(parent: Instance)
		parent.Name = randString()
		for _, child in ipairs(parent:GetDescendants()) do
			child.Name = randString()
		end
	end,

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
	}
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

		rconsole.warn("This exploit does not support folder functions!")
		return false
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

		rconsole.warn("This exploit does not support folder functions!")
		return false
	end
}

--[[
		[ STORAGE ] & [ UI UPDATE CHECK ]
]]

storage.clearTempData() -- Call before GUI Load

do
	local coding_key = "WiVersion"
	local file_name = "version.wi"

	local oldVersion = storage.readFile(storage.data.types.Configs, file_name, coding_key)
	if oldVersion then
		if oldVersion ~= CURRENT_VERSION then
			storage.clearGuiData()
		end
	end
end

--[[
		[ SETTINGS ]
]]

configs = {
	data = {
		file_name = "configs.wi",
		coding_key = "WIConfigs",

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
					misc.socials.website(true)			
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
		coding_key = "WIExecutor",
		file_name = "tabs.wi",
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

		if not workink_loaded then
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
		if not workink_loaded then
			return
		end

		if noConfirm or not configs.getSetting("ConfirmationPopup") then
			local succ, err = pcall(function()
				executecode(getclipboard())
				misc.toast.short("Info", "Script executed!")
			end)

			if not succ then
				misc.toast.short("Error", "Script failed to execute!")
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
	end,

	loadTabs = function()
		local data = storage.readJsonFile(storage.data.types.Configs, executor.data.file_name, executor.data.coding_key)
		if data then
			executor.data.editor_tabs = data
		end
	end,

	saveTabs = function()
		storage.saveJsonFile(storage.data.types.Configs, executor.data.file_name, executor.data.editor_tabs, true, executor.data.coding_key)
	end,

	getTabs = function()
		return executor.data.editor_tabs
	end,

	addTab = function(Name: string, Source: string)
		executor.data.tab_count += 1

		table.insert(executor.data.editor_tabs, {
			Name = Name or "Script " .. executor.data.tab_count,
			Source = Source or "",
		})

		task.spawn(function()
			executor.saveTabs()
		end)

		executor.data.editor_added:Fire(#executor.data.editor_tabs)
		return #executor.data.editor_tabs
	end,

	editTab = function(index: number, name: string, source: string)
		index = tonumber(index) or 1
		local max = #executor.data.editor_tabs

		index = index < 1 and 1 or index
		index = index > max and max or index

		executor.data.editor_tabs[index].Name = name
		executor.data.editor_tabs[index].Source = source

		task.spawn(function()
			executor.saveTabs()
		end)
	end,

	removeTab = function(index: number)
		index = tonumber(index) or 1
		local max = #executor.data.editor_tabs

		index = index < 1 and 1 or index
		index = index > max and max or index

		table.remove(executor.data.editor_tabs, index)

		task.spawn(function()
			executor.saveTabs()
		end)
	end,

	onTabAdded = function()
		return executor.data.editor_added
	end,
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

pages = {
	data = {
		handled_page_dragging = {},
		handled_page_layouts = {},

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

--[[
workink_auth = {
	data = {
		key = "workink_auth",
		link_id = "1U3w"
	},
	
	isAuthenticated = function(key: string)
		key = key or storage.readFile(storage.data.fileType.Configs, "auth.wi", workink_auth.data.key)
		if not key then
			return false
		end
		
		storage.saveFile(storage.data.fileType.Configs, "auth.wi", key, true, workink_auth.data.key)
		
		local succ, data = pcall(function()
			return HTTP_SERVICE:JSONDecode(game:HttpGet("https://redirect-api.work.ink/tokenValid/" .. key)) --.. "?linkId=".. workink_auth.data.link_id))
		end)
		
		if succ and typeof(data) == "table" then
			return data.valid
		end
		
		return false
	end,
	
	getKey = function()
		local setclip = setclipboard or toclipboard
		
		if setclip then
			setclip("https://workink.net/".. workink_auth.data.link_id .."/last-step")
			misc.toast.short("Info", "Key link has been set to clipboard!")
		end
	end
}
]]

platoboost_auth = {
	data = {
		allowKeyRedeeming = false,
		allowPassTrought = true,
		key = "workink_auth",
		hwid = gethwid(),
		account_id = 37142
	},

	isKeyless = function()
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
		local success, data = pcall(function()
			return game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Costumers/Flags/workink-version", true)
		end)

		if success then
			local current = (getversion and getversion()) or false
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
		key = key or storage.readFile(storage.data.fileType.Configs, "auth.wi", platoboost_auth.data.key)
		if not key then
			return false
		end

		storage.saveFile(storage.data.fileType.Configs, "auth.wi", key, true, platoboost_auth.data.key)

		local status, result = pcall(function() 
			return game:HttpGet(string.format("https://api-gateway.platoboost.com/v1/public/whitelist/%i/%s?key=%s", platoboost_auth.data.account_id, platoboost_auth.data.hwid, key), true);
		end);

		if status then
			if string.find(result, "true") then
				return true;

			elseif string.find(result, "false") then
				if platoboost_auth.data.allowKeyRedeeming then
					local status1, result1 = pcall(function()
						return game:HttpGet(string.format("https://api-gateway.platoboost.com/v1/authenticators/redeem/%i/%s/%s", platoboost_auth.data.account_id, platoboost_auth.data.hwid, key), true);
					end);

					if status1 then
						if string.find(result1, "true") then
							return true;
						end;
					end;
				end;

				return false;
			end
		else
			return platoboost_auth.data.allowPassTrought -- Failed to contact the server, passtrought
		end

		return false
	end,

	getKey = function()
		local setclip = setclipboard or toclipboard

		if setclip then
			setclip(string.format("https://gateway.platoboost.com/a/%i?id=%s", platoboost_auth.data.account_id, platoboost_auth.data.hwid))
			misc.toast.short("Info", "Key link has been set to clipboard!")
		end
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

Main.MainWindow.Name = randString()
Main.MainWindow.AnchorPoint = Vector2.new(0.5, 0.5)
Main.MainWindow.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
Main.MainWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.MainWindow.BorderSizePixel = 0
Main.MainWindow.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.MainWindow.Size = UDim2.new(0.679, 0, 0.839, 0)
Main.MainWindow.Visible = false

Main.UICorner.CornerRadius = UDim.new(0.05, 0)
Main.UICorner.Name = randString()

Main.UIPadding.Name = randString()
Main.UIPadding.PaddingBottom = UDim.new(0.05, 0)
Main.UIPadding.PaddingLeft = UDim.new(0.035, 0)
Main.UIPadding.PaddingRight = UDim.new(0.035, 0)
Main.UIPadding.PaddingTop = UDim.new(0.05, 0)

Main.CloseTabButton.Name = randString()
Main.CloseTabButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.CloseTabButton.BackgroundTransparency = 0.5
Main.CloseTabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.CloseTabButton.BorderSizePixel = 0
Main.CloseTabButton.Position = UDim2.new(0.205, 0, 0.084, 0)
Main.CloseTabButton.Size = UDim2.new(0.07, 0, 0.106, 0)
Main.CloseTabButton.Font = Enum.Font.SourceSansBold
Main.CloseTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.CloseTabButton.Text = "×"
Main.CloseTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.CloseTabButton.TextScaled = true
Main.CloseTabButton.TextSize = 14
Main.CloseTabButton.TextTransparency = 0.15
Main.CloseTabButton.TextWrapped = true

Main.UICorner_2.CornerRadius = UDim.new(0.25, 0)
Main.UICorner_2.Name = randString()

Main.UIAspectRatioConstraint.Name = randString()

Main.NewTabButton.Name = randString()
Main.NewTabButton.AnchorPoint = Vector2.new(0, 0.5)
Main.NewTabButton.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.NewTabButton.BackgroundTransparency = 0.15
Main.NewTabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NewTabButton.BorderSizePixel = 0
Main.NewTabButton.Position = UDim2.new(0.96, 0, 0.146, 0)
Main.NewTabButton.Size = UDim2.new(0.039, 0, 0.061, 0)
Main.NewTabButton.Font = Enum.Font.SourceSansBold
Main.NewTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.NewTabButton.Text = ""
Main.NewTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.NewTabButton.TextScaled = true
Main.NewTabButton.TextSize = 50
Main.NewTabButton.TextTransparency = 0.15
Main.NewTabButton.TextWrapped = true

Main.TextLabel.Name = randString()
Main.TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
Main.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.TextLabel.BackgroundTransparency = 1
Main.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TextLabel.BorderSizePixel = 0
Main.TextLabel.Position = UDim2.new(0.535, 0, 0.5, 0)
Main.TextLabel.Size = UDim2.new(1.2, 0, 1.2, 0)
Main.TextLabel.Font = Enum.Font.SourceSansBold
Main.TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.TextLabel.Text = "+"
Main.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.TextLabel.TextScaled = true
Main.TextLabel.TextSize = 14
Main.TextLabel.TextWrapped = true

Main.CloseButton.Name = randString()
Main.CloseButton.AnchorPoint = Vector2.new(1, 0)
Main.CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.CloseButton.BackgroundTransparency = 1
Main.CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.CloseButton.BorderSizePixel = 0
Main.CloseButton.Position = UDim2.new(1, 0, 0, 0)
Main.CloseButton.Size = UDim2.new(0.04, 0, 0.062, 0)
Main.CloseButton.Image = loadImage("rbxassetid://14925930646", nil)

Main.FindButton.Name = randString()
Main.FindButton.AnchorPoint = Vector2.new(1, 0.5)
Main.FindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.FindButton.BackgroundTransparency = 1
Main.FindButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.FindButton.BorderSizePixel = 0
Main.FindButton.Position = UDim2.new(0.929, 0, 0.033, 0)
Main.FindButton.Size = UDim2.new(0.041, 0, 0.063, 0)
Main.FindButton.Visible = false
Main.FindButton.Image = loadImage("rbxassetid://16354457913", nil)
Main.FindButton.ImageColor3 = Color3.fromRGB(189, 205, 231)

Main.Editor.Name = randString()
Main.Editor.AnchorPoint = Vector2.new(1, 1)
Main.Editor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Editor.BackgroundTransparency = 0.5
Main.Editor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Editor.BorderSizePixel = 0
Main.Editor.LayoutOrder = 1
Main.Editor.Position = UDim2.new(1, 0, 0.875, 0)
Main.Editor.Size = UDim2.new(1, 0, 0.682, 0)

Main.ScrollingFrame.Name = randString()
Main.ScrollingFrame.Active = true
Main.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ScrollingFrame.BackgroundTransparency = 1
Main.ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ScrollingFrame.BorderSizePixel = 0
Main.ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
Main.ScrollingFrame.AutomaticSize = Enum.AutomaticSize.X
Main.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
Main.ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

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

Main.UICorner_5.CornerRadius = UDim.new(0.03, 0)
Main.UICorner_5.Name = randString()

Main.UIPadding_2.Name = randString()
Main.UIPadding_2.PaddingBottom = UDim.new(0, 10)
Main.UIPadding_2.PaddingLeft = UDim.new(0, 15)
Main.UIPadding_2.PaddingRight = UDim.new(0, 15)
Main.UIPadding_2.PaddingTop = UDim.new(0, 10)

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
Main.LineTemplate.TextColor3 = Color3.fromRGB(78, 253, 190)
Main.LineTemplate.TextScaled = true
Main.LineTemplate.TextSize = 17
Main.LineTemplate.TextTransparency = 0.3
Main.LineTemplate.TextWrapped = true

Main.UIPadding_3.Name = randString()
Main.UIPadding_3.PaddingTop = UDim.new(0, 10)

Main.ButtonsBar.Name = randString()
Main.ButtonsBar.AnchorPoint = Vector2.new(0, 1)
Main.ButtonsBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ButtonsBar.BackgroundTransparency = 1
Main.ButtonsBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ButtonsBar.BorderSizePixel = 0
Main.ButtonsBar.Position = UDim2.new(0, 0, 1, 0)
Main.ButtonsBar.Size = UDim2.new(1, 0, 0.1, 0)

Main.ExecuteButton.Name = randString()
Main.ExecuteButton.AnchorPoint = Vector2.new(0, 1)
Main.ExecuteButton.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.ExecuteButton.BackgroundTransparency = 0.15
Main.ExecuteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ExecuteButton.BorderSizePixel = 0
Main.ExecuteButton.Position = UDim2.new(0, 0, 1, 0)
Main.ExecuteButton.Size = UDim2.new(0.324, 0, 1, 0)
Main.ExecuteButton.Font = Enum.Font.SourceSansBold
Main.ExecuteButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ExecuteButton.Text = "Execute"
Main.ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ExecuteButton.TextScaled = true
Main.ExecuteButton.TextSize = 14
Main.ExecuteButton.TextWrapped = true

Main.UIPadding_4.Name = randString()
Main.UIPadding_4.PaddingBottom = UDim.new(0.225, 0)
Main.UIPadding_4.PaddingLeft = UDim.new(0.1, 0)
Main.UIPadding_4.PaddingRight = UDim.new(0.1, 0)
Main.UIPadding_4.PaddingTop = UDim.new(0.225, 0)

Main.UIListLayout.Name = randString()
Main.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
Main.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout.Padding = UDim.new(0.01, 0)

Main.ExecuteClipboardButton.Name = randString()
Main.ExecuteClipboardButton.AnchorPoint = Vector2.new(0, 1)
Main.ExecuteClipboardButton.BackgroundColor3 = Color3.fromRGB(52, 70, 74)
Main.ExecuteClipboardButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ExecuteClipboardButton.BorderSizePixel = 0
Main.ExecuteClipboardButton.LayoutOrder = 2
Main.ExecuteClipboardButton.Position = UDim2.new(0.227, 0, 1, 0)
Main.ExecuteClipboardButton.Size = UDim2.new(0.328, 0, 1, 0)
Main.ExecuteClipboardButton.Font = Enum.Font.SourceSansBold
Main.ExecuteClipboardButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ExecuteClipboardButton.Text = "Clipboard Execute"
Main.ExecuteClipboardButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ExecuteClipboardButton.TextScaled = true
Main.ExecuteClipboardButton.TextSize = 14
Main.ExecuteClipboardButton.TextWrapped = true

Main.ClearButton.Name = randString()
Main.ClearButton.AnchorPoint = Vector2.new(0, 1)
Main.ClearButton.BackgroundColor3 = Color3.fromRGB(52, 70, 74)
Main.ClearButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ClearButton.BorderSizePixel = 0
Main.ClearButton.Position = UDim2.new(0.178, 0, 1, 0)
Main.ClearButton.Size = UDim2.new(0.328, 0, 1, 0)
Main.ClearButton.Font = Enum.Font.SourceSansBold
Main.ClearButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ClearButton.Text = "Clear Editor"
Main.ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.ClearButton.TextScaled = true
Main.ClearButton.TextSize = 14
Main.ClearButton.TextWrapped = true

Main.UIAspectRatioConstraint_5.Name = randString()
Main.UIAspectRatioConstraint_5.AspectRatio = 1.512

Main.TabsList.Name = randString()
Main.TabsList.Active = true
Main.TabsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.TabsList.BackgroundTransparency = 1
Main.TabsList.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TabsList.BorderSizePixel = 0
Main.TabsList.LayoutOrder = 1
Main.TabsList.Position = UDim2.new(0.295, 0, 0.12, 0)
Main.TabsList.Selectable = false
Main.TabsList.Size = UDim2.new(0.66, 0, 0.057, 0)
Main.TabsList.CanvasSize = UDim2.new(0, 0, 0, 0)
Main.TabsList.ScrollBarImageColor3 = Color3.fromRGB(255, 0, 0)
Main.TabsList.AutomaticCanvasSize = Enum.AutomaticSize.X
Main.TabsList.ScrollingDirection = Enum.ScrollingDirection.X
Main.TabsList.ScrollBarThickness = 0

Main.UIListLayout_2.Name = randString()
Main.UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
Main.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout_2.Padding = UDim.new(0.05, 0)

Main.OpenTab.Name = randString()
Main.OpenTab.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.OpenTab.BackgroundTransparency = 1
Main.OpenTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.OpenTab.BorderSizePixel = 0
Main.OpenTab.Size = UDim2.new(0.168, 0, 1.001, 0)
Main.OpenTab.Visible = false
Main.OpenTab.Font = Enum.Font.SourceSansBold
Main.OpenTab.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.OpenTab.Text = ""
Main.OpenTab.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.OpenTab.TextScaled = true
Main.OpenTab.TextSize = 14
Main.OpenTab.TextTransparency = 0.15
Main.OpenTab.TextWrapped = true
Main.OpenTab.TextXAlignment = Enum.TextXAlignment.Right

Main.UICorner_9.CornerRadius = UDim.new(0.3, 0)
Main.UICorner_9.Name = randString()

Main.TabIconButton.Name = randString()
Main.TabIconButton.AnchorPoint = Vector2.new(0, 0.5)
Main.TabIconButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.TabIconButton.BackgroundTransparency = 1
Main.TabIconButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TabIconButton.BorderSizePixel = 0
Main.TabIconButton.Position = UDim2.new(0, 0, 0.5, 0)
Main.TabIconButton.Size = UDim2.new(0.222, 0, 1.204, 0)
Main.TabIconButton.Image = loadImage("rbxassetid://16354779498", nil)
Main.TabIconButton.ImageColor3 = Color3.fromRGB(78, 253, 190)

Main.TabName.Name = randString()
Main.TabName.AnchorPoint = Vector2.new(0, 0.5)
Main.TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.TabName.BackgroundTransparency = 1
Main.TabName.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TabName.BorderSizePixel = 0
Main.TabName.LayoutOrder = 1
Main.TabName.Position = UDim2.new(0.292, 0, 0.5, 0)
Main.TabName.Size = UDim2.new(0.743, 0, 1.001, 0)
Main.TabName.AutomaticSize = Enum.AutomaticSize.X
Main.TabName.Font = Enum.Font.SourceSansBold
Main.TabName.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.TabName.Text = "file.lua"
Main.TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.TabName.TextScaled = true
Main.TabName.TextSize = 1
Main.TabName.TextWrapped = true
Main.TabName.TextXAlignment = Enum.TextXAlignment.Left

Main.UIListLayout_3.Name = randString()
Main.UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
Main.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout_3.Padding = UDim.new(0.07, 0)

Main.BaseTab.Name = randString()
Main.BaseTab.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.BaseTab.BackgroundTransparency = 1
Main.BaseTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BaseTab.BorderSizePixel = 0
Main.BaseTab.LayoutOrder = 1
Main.BaseTab.Position = UDim2.new(0.178, 0, -0.001, 0)
Main.BaseTab.Size = UDim2.new(0.168, 0, 1.001, 0)
Main.BaseTab.Visible = false
Main.BaseTab.Font = Enum.Font.SourceSansBold
Main.BaseTab.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.BaseTab.Text = ""
Main.BaseTab.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.BaseTab.TextScaled = true
Main.BaseTab.TextSize = 14
Main.BaseTab.TextTransparency = 0.15
Main.BaseTab.TextWrapped = true
Main.BaseTab.TextXAlignment = Enum.TextXAlignment.Right

Main.TabIconButton_2.Name = randString()
Main.TabIconButton_2.AnchorPoint = Vector2.new(0, 0.5)
Main.TabIconButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.TabIconButton_2.BackgroundTransparency = 1
Main.TabIconButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TabIconButton_2.BorderSizePixel = 0
Main.TabIconButton_2.Position = UDim2.new(0, 0, 0.5, 0)
Main.TabIconButton_2.Size = UDim2.new(0.222, 0, 1.204, 0)
Main.TabIconButton_2.Image = loadImage("rbxassetid://16354779498", nil)
Main.TabIconButton_2.ImageColor3 = Color3.fromRGB(78, 253, 190)
Main.TabIconButton_2.ImageTransparency = 0.5

Main.TabName_2.Name = randString()
Main.TabName_2.AnchorPoint = Vector2.new(0, 0.5)
Main.TabName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.TabName_2.BackgroundTransparency = 1
Main.TabName_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.TabName_2.BorderSizePixel = 0
Main.TabName_2.LayoutOrder = 1
Main.TabName_2.Position = UDim2.new(0.293, 0, 0.5, 0)
Main.TabName_2.Size = UDim2.new(0.669, 0, 1.001, 0)
Main.TabName_2.AutomaticSize = Enum.AutomaticSize.X
Main.TabName_2.Font = Enum.Font.SourceSansBold
Main.TabName_2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.TabName_2.Text = "file.lua"
Main.TabName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.TabName_2.TextScaled = true
Main.TabName_2.TextSize = 1
Main.TabName_2.TextTransparency = 0.5
Main.TabName_2.TextWrapped = true
Main.TabName_2.TextXAlignment = Enum.TextXAlignment.Left

Main.Label.Name = randString()
Main.Label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Label.BackgroundTransparency = 0.5
Main.Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Label.BorderSizePixel = 0
Main.Label.Position = UDim2.new(0, 0, 0.084, 0)
Main.Label.Size = UDim2.new(0.199, 0, 0.106, 0)
Main.Label.AutomaticSize = Enum.AutomaticSize.X
Main.Label.Font = Enum.Font.SourceSansBold
Main.Label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.Label.Text = ""
Main.Label.TextColor3 = Color3.fromRGB(169, 169, 172)
Main.Label.TextScaled = true
Main.Label.TextSize = 1
Main.Label.TextWrapped = true

Main.UIPadding_7.Name = randString()
Main.UIPadding_7.PaddingBottom = UDim.new(0.15, 0)
Main.UIPadding_7.PaddingLeft = UDim.new(0.1, 0)
Main.UIPadding_7.PaddingRight = UDim.new(0.1, 0)
Main.UIPadding_7.PaddingTop = UDim.new(0.15, 0)

Main.CurrentScript.Name = randString()
Main.CurrentScript.AnchorPoint = Vector2.new(0.5, 0.5)
Main.CurrentScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.CurrentScript.BackgroundTransparency = 1
Main.CurrentScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.CurrentScript.BorderSizePixel = 0
Main.CurrentScript.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.CurrentScript.Size = UDim2.new(1, 0, 1, 0)
Main.CurrentScript.ClearTextOnFocus = false
Main.CurrentScript.Font = Enum.Font.SourceSansBold
Main.CurrentScript.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.CurrentScript.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Main.CurrentScript.PlaceholderText = "name"
Main.CurrentScript.Text = "file.lua"
Main.CurrentScript.TextColor3 = Color3.fromRGB(169, 169, 172)
Main.CurrentScript.TextScaled = true
Main.CurrentScript.TextSize = 14
Main.CurrentScript.TextWrapped = true

Main.ImageLabel.Name = randString()
Main.ImageLabel.AnchorPoint = Vector2.new(0.5, 0)
Main.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ImageLabel.BackgroundTransparency = 1
Main.ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ImageLabel.BorderSizePixel = 0
Main.ImageLabel.Position = UDim2.new(0.5, 0, -0.017, 0)
Main.ImageLabel.Size = UDim2.new(0.174, 0, 0.258, 0)
Main.ImageLabel.Image = loadImage("rbxassetid://17439455756", nil)

Main.UIAspectRatioConstraint_9.Name = randString()
Main.UIAspectRatioConstraint_9.AspectRatio = 3.833

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
Main.FloatingIcon.Image = loadImage("rbxassetid://18274756564", nil)
Main.FloatingIcon.ImageTransparency = 1

Main.UICorner_13.CornerRadius = UDim.new(1, 0)
Main.UICorner_13.Name = randString()

Main.FloatingIconImage.Name = randString()
Main.FloatingIconImage.AnchorPoint = Vector2.new(0.5, 0.5)
Main.FloatingIconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.FloatingIconImage.BackgroundTransparency = 1
Main.FloatingIconImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.FloatingIconImage.BorderSizePixel = 0
Main.FloatingIconImage.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.FloatingIconImage.Size = UDim2.new(1, 0, 1, 0)
Main.FloatingIconImage.Image = loadImage("rbxassetid://18274799969", "https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/5e1e13e796089584a62e2930664b484564631c50/Images/Floating%20icon.png")

Main.UIPadding_8.Name = randString()
Main.UIPadding_8.PaddingBottom = UDim.new(0.075, 0)
Main.UIPadding_8.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_8.PaddingRight = UDim.new(0.075, 0)
Main.UIPadding_8.PaddingTop = UDim.new(0.075, 0)

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
Main.YesNoPopupWindow.ZIndex = 5

Main.YesNo_PopupTitle.Name = randString()
Main.YesNo_PopupTitle.AnchorPoint = Vector2.new(0.5, 0)
Main.YesNo_PopupTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupTitle.BackgroundTransparency = 1
Main.YesNo_PopupTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesNo_PopupTitle.BorderSizePixel = 0
Main.YesNo_PopupTitle.Position = UDim2.new(0.5, 0, 0, 0)
Main.YesNo_PopupTitle.Size = UDim2.new(1, 0, 0.3, 0)
Main.YesNo_PopupTitle.ZIndex = 6
Main.YesNo_PopupTitle.Font = Enum.Font.SourceSansBold
Main.YesNo_PopupTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.YesNo_PopupTitle.Text = "Confirm script execution"
Main.YesNo_PopupTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupTitle.TextScaled = true
Main.YesNo_PopupTitle.TextSize = 14
Main.YesNo_PopupTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupTitle.TextWrapped = true

Main.UIPadding_9.Name = randString()
Main.UIPadding_9.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_9.PaddingLeft = UDim.new(0.05, 0)
Main.UIPadding_9.PaddingRight = UDim.new(0.05, 0)
Main.UIPadding_9.PaddingTop = UDim.new(0.1, 0)

Main.YesNo_PopupText.Name = randString()
Main.YesNo_PopupText.AnchorPoint = Vector2.new(0.5, 0)
Main.YesNo_PopupText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.YesNo_PopupText.BackgroundTransparency = 1
Main.YesNo_PopupText.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesNo_PopupText.BorderSizePixel = 0
Main.YesNo_PopupText.Position = UDim2.new(0.492, 0, 0.3, 0)
Main.YesNo_PopupText.Size = UDim2.new(1, 0, 0.275, 0)
Main.YesNo_PopupText.ZIndex = 6
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
Main.YesButton.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.YesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.YesButton.BorderSizePixel = 0
Main.YesButton.Position = UDim2.new(1, 0, 1, 0)
Main.YesButton.Size = UDim2.new(0.475, 0, 0.25, 0)
Main.YesButton.Font = Enum.Font.Unknown
Main.YesButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
Main.YesButton.Text = "Yes"
Main.YesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.YesButton.TextScaled = true
Main.YesButton.TextSize = 14
Main.YesButton.TextWrapped = true

Main.UIPadding_10.Name = randString()
Main.UIPadding_10.PaddingBottom = UDim.new(0.15, 0)
Main.UIPadding_10.PaddingLeft = UDim.new(0.15, 0)
Main.UIPadding_10.PaddingRight = UDim.new(0.15, 0)
Main.UIPadding_10.PaddingTop = UDim.new(0.15, 0)

Main.UIAspectRatioConstraint_11.Name = randString()
Main.UIAspectRatioConstraint_11.AspectRatio = 2.063

Main.NoButton.Name = randString()
Main.NoButton.AnchorPoint = Vector2.new(0, 1)
Main.NoButton.BackgroundColor3 = Color3.fromRGB(15, 17, 20)
Main.NoButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.NoButton.BorderSizePixel = 0
Main.NoButton.Position = UDim2.new(0, 0, 1, 0)
Main.NoButton.Size = UDim2.new(0.475, 0, 0.25, 0)
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
Main.UpdateArceusXRobloxButton.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.UpdateArceusXRobloxButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateArceusXRobloxButton.BorderSizePixel = 0
Main.UpdateArceusXRobloxButton.Position = UDim2.new(0.503, 0, 0.893, 0)
Main.UpdateArceusXRobloxButton.Size = UDim2.new(0.205, 0, 0.102, 0)
Main.UpdateArceusXRobloxButton.ZIndex = 3
Main.UpdateArceusXRobloxButton.Font = Enum.Font.Unknown
Main.UpdateArceusXRobloxButton.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.UpdateArceusXRobloxButton.Text = "UPDATE"
Main.UpdateArceusXRobloxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.UpdateArceusXRobloxButton.TextScaled = true
Main.UpdateArceusXRobloxButton.TextSize = 14
Main.UpdateArceusXRobloxButton.TextWrapped = true

Main.UIPadding_13.Name = randString()
Main.UIPadding_13.PaddingBottom = UDim.new(0.15, 0)
Main.UIPadding_13.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_13.PaddingRight = UDim.new(0.075, 0)
Main.UIPadding_13.PaddingTop = UDim.new(0.15, 0)

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
Main.RedSeparator.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
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
Main.KeySystem_AppLogo.Image = loadImage("rbxassetid://14926240421", "")
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
Main.PopupTitle_5.Text = "Work.ink X"
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
Main.PastRobloxVersion.TextColor3 = Color3.fromRGB(78, 253, 190)
Main.PastRobloxVersion.TextScaled = true
Main.PastRobloxVersion.TextSize = 14
Main.PastRobloxVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PastRobloxVersion.TextTransparency = 0.5
Main.PastRobloxVersion.TextWrapped = true
Main.PastRobloxVersion.TextXAlignment = Enum.TextXAlignment.Right

Main.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 144, 108)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
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
Main.NewRobloxVersion.TextColor3 = Color3.fromRGB(78, 253, 190)
Main.NewRobloxVersion.TextScaled = true
Main.NewRobloxVersion.TextSize = 14
Main.NewRobloxVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.NewRobloxVersion.TextWrapped = true
Main.NewRobloxVersion.TextXAlignment = Enum.TextXAlignment.Left

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
Main.PopupTitle_7.Text = "Work.ink X has detected a new update ready for download. This upgrade will bring improvements in security, stability, and features, and will update Roblox to the latest version. Update now for an enhanced experience!"
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

Main.UIPadding_14.Name = randString()
Main.UIPadding_14.PaddingBottom = UDim.new(0.2, 0)
Main.UIPadding_14.PaddingLeft = UDim.new(0.075, 0)
Main.UIPadding_14.PaddingRight = UDim.new(0.075, 0)
Main.UIPadding_14.PaddingTop = UDim.new(0.2, 0)

Main.UpdateDetected.Name = randString()
Main.UpdateDetected.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateDetected.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.UpdateDetected.BorderSizePixel = 0
Main.UpdateDetected.Size = UDim2.new(1, 0, 1, 0)
Main.UpdateDetected.Visible = false

Main.UpdateArceusXButton.Name = randString()
Main.UpdateArceusXButton.AnchorPoint = Vector2.new(0.5, 1)
Main.UpdateArceusXButton.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
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
Main.PopupTitle_10.Text = "Work.ink X has just been updated, enjoy the latest enhancements!"
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
Main.RedSeparator_2.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
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
Main.KeySystem_AppLogo_2.Image = loadImage("rbxassetid://14926240421", "")
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
Main.PopupTitle_14.Text = "Arceus X NEO"
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
Main.ArceusPastVersion.TextColor3 = Color3.fromRGB(78, 253, 190)
Main.ArceusPastVersion.TextScaled = true
Main.ArceusPastVersion.TextSize = 14
Main.ArceusPastVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusPastVersion.TextTransparency = 0.5
Main.ArceusPastVersion.TextWrapped = true
Main.ArceusPastVersion.TextXAlignment = Enum.TextXAlignment.Right

Main.ArceusNewVersion.Name = randString()
Main.ArceusNewVersion.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.ArceusNewVersion.BackgroundTransparency = 1
Main.ArceusNewVersion.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.ArceusNewVersion.BorderSizePixel = 0
Main.ArceusNewVersion.Position = UDim2.new(0.55, 0, 0.667, 0)
Main.ArceusNewVersion.Size = UDim2.new(0.25, 0, 0.1, 0)
Main.ArceusNewVersion.Font = Enum.Font.Unknown
Main.ArceusNewVersion.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.ArceusNewVersion.Text = "v1.0.1"
Main.ArceusNewVersion.TextColor3 = Color3.fromRGB(78, 253, 190)
Main.ArceusNewVersion.TextScaled = true
Main.ArceusNewVersion.TextSize = 14
Main.ArceusNewVersion.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.ArceusNewVersion.TextWrapped = true
Main.ArceusNewVersion.TextXAlignment = Enum.TextXAlignment.Left

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

Main.UIAspectRatioConstraint_16.Name = randString()
Main.UIAspectRatioConstraint_16.AspectRatio = 3.411

Main.UICorner_21.CornerRadius = UDim.new(0.15, 0)
Main.UICorner_21.Name = randString()

Main.UIListLayout_6.Name = randString()
Main.UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
Main.UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
Main.UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
Main.UIListLayout_6.Padding = UDim.new(0.015, 0)

Main.UIPadding_18.Name = randString()
Main.UIPadding_18.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_18.PaddingLeft = UDim.new(0.033, 0)
Main.UIPadding_18.PaddingRight = UDim.new(0.033, 0)
Main.UIPadding_18.PaddingTop = UDim.new(0.1, 0)

Main.ToastExpiringBar.Name = randString()
Main.ToastExpiringBar.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.ToastExpiringBar.BackgroundTransparency = 0.75
Main.ToastExpiringBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ToastExpiringBar.BorderSizePixel = 0
Main.ToastExpiringBar.LayoutOrder = 3
Main.ToastExpiringBar.Position = UDim2.new(0, 0, 0.901, 0)
Main.ToastExpiringBar.Size = UDim2.new(1, 0, 0.084, 0)

Main.ToastBar.Name = randString()
Main.ToastBar.BackgroundColor3 = Color3.fromRGB(78, 253, 190)
Main.ToastBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.ToastBar.BorderSizePixel = 0
Main.ToastBar.LayoutOrder = 3
Main.ToastBar.Size = UDim2.new(0.5, 0, 1, 0)

Main.UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(78, 253, 190)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
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
Main.KeySystem_CheckButton.BackgroundColor3 = Color3.fromRGB(226, 0, 0)
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
Main.KeySystem_AppLogo_3.Image = loadImage("rbxassetid://18274756564", "")
Main.KeySystem_AppLogo_3.ScaleType = Enum.ScaleType.Fit

Main.UIAspectRatioConstraint_17.Name = randString()
Main.UIAspectRatioConstraint_17.AspectRatio = 0.935

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

Main.PopupTitle_21.Name = randString()
Main.PopupTitle_21.AnchorPoint = Vector2.new(0.5, 0)
Main.PopupTitle_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_21.BackgroundTransparency = 1
Main.PopupTitle_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.PopupTitle_21.BorderSizePixel = 0
Main.PopupTitle_21.Position = UDim2.new(0.822, 0, 0.031, 0)
Main.PopupTitle_21.Size = UDim2.new(0.213, 0, 0.078, 0)
Main.PopupTitle_21.Font = Enum.Font.Unknown
Main.PopupTitle_21.FontFace = Font.new("rbxassetid://12187360881", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Main.PopupTitle_21.Text = "Anemo"
Main.PopupTitle_21.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_21.TextScaled = true
Main.PopupTitle_21.TextSize = 14
Main.PopupTitle_21.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.PopupTitle_21.TextWrapped = true
Main.PopupTitle_21.TextXAlignment = Enum.TextXAlignment.Right

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
Main.KeySystem_GetKeyButton.BackgroundColor3 = Color3.fromRGB(226, 0, 0)
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
Main.PopupTitle_23.Text = "The Key System allows free use of Anemo by watching ads, supporting the team in providing and maintaining the app at no cost."
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
Main.Keysystem_Keybox.PlaceholderColor3 = Color3.fromRGB(157, 21, 6)
Main.Keysystem_Keybox.PlaceholderText = "Insert your key..."
Main.Keysystem_Keybox.Text = ""
Main.Keysystem_Keybox.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.Keysystem_Keybox.TextScaled = true
Main.Keysystem_Keybox.TextSize = 14
Main.Keysystem_Keybox.TextWrapped = true

Main.UICorner_27.CornerRadius = UDim.new(0.2, 0)
Main.UICorner_27.Name = randString()

Main.UIStroke.Name = randString()
Main.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Main.UIStroke.Color = Color3.fromRGB(226, 0, 0)
Main.UIStroke.Thickness = 5

Main.UIPadding_23.Name = randString()
Main.UIPadding_23.PaddingBottom = UDim.new(0.1, 0)
Main.UIPadding_23.PaddingLeft = UDim.new(0.1, 0)
Main.UIPadding_23.PaddingRight = UDim.new(0.1, 0)
Main.UIPadding_23.PaddingTop = UDim.new(0.1, 0)

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

Main.UICorner_3 = duplicate(Main.UICorner_2)
Main.UICorner_3.Name = randString()
Main.UICorner_3.Parent = Main.NewTabButton

Main.UIAspectRatioConstraint_2 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_2.Name = randString()
Main.UIAspectRatioConstraint_2.Parent = Main.NewTabButton

Main.UIAspectRatioConstraint_3 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_3.Name = randString()
Main.UIAspectRatioConstraint_3.Parent = Main.CloseButton

Main.UIAspectRatioConstraint_4 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_4.Name = randString()
Main.UIAspectRatioConstraint_4.Parent = Main.FindButton

Main.UICorner_4 = duplicate(Main.UICorner)
Main.UICorner_4.Name = randString()
Main.UICorner_4.Parent = Main.Editor

Main.UICorner_6 = duplicate(Main.UICorner_2)
Main.UICorner_6.Name = randString()
Main.UICorner_6.Parent = Main.ExecuteButton

Main.UICorner_7 = duplicate(Main.UICorner_2)
Main.UICorner_7.Name = randString()
Main.UICorner_7.Parent = Main.ExecuteClipboardButton

Main.UIPadding_5 = duplicate(Main.UIPadding_4)
Main.UIPadding_5.Name = randString()
Main.UIPadding_5.Parent = Main.ExecuteClipboardButton

Main.UICorner_8 = duplicate(Main.UICorner_2)
Main.UICorner_8.Name = randString()
Main.UICorner_8.Parent = Main.ClearButton

Main.UIPadding_6 = duplicate(Main.UIPadding_4)
Main.UIPadding_6.Name = randString()
Main.UIPadding_6.Parent = Main.ClearButton

Main.UIAspectRatioConstraint_6 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_6.Name = randString()
Main.UIAspectRatioConstraint_6.Parent = Main.TabIconButton

Main.UICorner_10 = duplicate(Main.UICorner_9)
Main.UICorner_10.Name = randString()
Main.UICorner_10.Parent = Main.BaseTab

Main.UIAspectRatioConstraint_7 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_7.Name = randString()
Main.UIAspectRatioConstraint_7.Parent = Main.TabIconButton_2

Main.UIListLayout_4 = duplicate(Main.UIListLayout_3)
Main.UIListLayout_4.Name = randString()
Main.UIListLayout_4.Parent = Main.BaseTab

Main.BaseTab_2 = duplicate(Main.BaseTab)
Main.BaseTab_2.Name = randString()
Main.BaseTab_2.Parent = Main.TabsList

Main.UICorner_11 = duplicate(Main.UICorner_9)
Main.UICorner_11.Name = randString()
Main.UICorner_11.Parent = Main.BaseTab_2

Main.TabIconButton_3 = duplicate(Main.TabIconButton_2)
Main.TabIconButton_3.Name = randString()
Main.TabIconButton_3.Parent = Main.BaseTab_2

Main.UIAspectRatioConstraint_8 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_8.Name = randString()
Main.UIAspectRatioConstraint_8.Parent = Main.TabIconButton_3

Main.TabName_3 = duplicate(Main.TabName_2)
Main.TabName_3.Name = randString()
Main.TabName_3.Parent = Main.BaseTab_2

Main.UIListLayout_5 = duplicate(Main.UIListLayout_3)
Main.UIListLayout_5.Name = randString()
Main.UIListLayout_5.Parent = Main.BaseTab_2

Main.UICorner_12 = duplicate(Main.UICorner_2)
Main.UICorner_12.Name = randString()
Main.UICorner_12.Parent = Main.Label

Main.UIAspectRatioConstraint_10 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_10.Name = randString()
Main.UIAspectRatioConstraint_10.Parent = Main.FloatingIcon

Main.UICorner_14 = duplicate(Main.UICorner)
Main.UICorner_14.Name = randString()
Main.UICorner_14.Parent = Main.YesNoPopupWindow

Main.UICorner_15 = duplicate(Main.UICorner_9)
Main.UICorner_15.Name = randString()
Main.UICorner_15.Parent = Main.YesButton

Main.UICorner_16 = duplicate(Main.UICorner_9)
Main.UICorner_16.Name = randString()
Main.UICorner_16.Parent = Main.NoButton

Main.UIPadding_11 = duplicate(Main.UIPadding_10)
Main.UIPadding_11.Name = randString()
Main.UIPadding_11.Parent = Main.NoButton

Main.UIPadding_12 = duplicate(Main.UIPadding_9)
Main.UIPadding_12.Name = randString()
Main.UIPadding_12.Parent = Main.UpdateDetectedWithRoblox

Main.UICorner_17 = duplicate(Main.UICorner_2)
Main.UICorner_17.Name = randString()
Main.UICorner_17.Parent = Main.UpdateArceusXRobloxButton

Main.MainWindow_UICorner = duplicate(Main.UICorner_13)
Main.MainWindow_UICorner.Name = randString()
Main.MainWindow_UICorner.Parent = Main.RedSeparator

Main.UIAspectRatioConstraint_12 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_12.Name = randString()
Main.UIAspectRatioConstraint_12.Parent = Main.KeySystem_AppLogo

Main.UIAspectRatioConstraint_13 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_13.Name = randString()
Main.UIAspectRatioConstraint_13.Parent = Main.Logo

Main.UIGradient_2 = duplicate(Main.UIGradient)
Main.UIGradient_2.Name = randString()
Main.UIGradient_2.Parent = Main.NewRobloxVersion

Main.UICorner_18 = duplicate(Main.UICorner_2)
Main.UICorner_18.Name = randString()
Main.UICorner_18.Parent = Main.KeySystem_ExitButton2

Main.UIPadding_15 = duplicate(Main.UIPadding_9)
Main.UIPadding_15.Name = randString()
Main.UIPadding_15.Parent = Main.UpdateDetected

Main.UICorner_19 = duplicate(Main.UICorner_2)
Main.UICorner_19.Name = randString()
Main.UICorner_19.Parent = Main.UpdateArceusXButton

Main.UIPadding_16 = duplicate(Main.UIPadding_13)
Main.UIPadding_16.Name = randString()
Main.UIPadding_16.Parent = Main.UpdateArceusXButton

Main.MainWindow_UICorner_2 = duplicate(Main.UICorner_13)
Main.MainWindow_UICorner_2.Name = randString()
Main.MainWindow_UICorner_2.Parent = Main.RedSeparator_2

Main.UIAspectRatioConstraint_14 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_14.Name = randString()
Main.UIAspectRatioConstraint_14.Parent = Main.KeySystem_AppLogo_2

Main.UIAspectRatioConstraint_15 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_15.Name = randString()
Main.UIAspectRatioConstraint_15.Parent = Main.Logo_2

Main.UIGradient_3 = duplicate(Main.UIGradient)
Main.UIGradient_3.Name = randString()
Main.UIGradient_3.Parent = Main.ArceusPastVersion

Main.UIGradient_4 = duplicate(Main.UIGradient)
Main.UIGradient_4.Name = randString()
Main.UIGradient_4.Parent = Main.ArceusNewVersion

Main.KeySystem_ExitButton3 = duplicate(Main.KeySystem_ExitButton2)
Main.KeySystem_ExitButton3.Name = randString()
Main.KeySystem_ExitButton3.Parent = Main.UpdateDetected

Main.UICorner_20 = duplicate(Main.UICorner_2)
Main.UICorner_20.Name = randString()
Main.UICorner_20.Parent = Main.KeySystem_ExitButton3

Main.UIPadding_17 = duplicate(Main.UIPadding_14)
Main.UIPadding_17.Name = randString()
Main.UIPadding_17.Parent = Main.KeySystem_ExitButton3

Main.UICorner_22 = duplicate(Main.UICorner_13)
Main.UICorner_22.Name = randString()
Main.UICorner_22.Parent = Main.ToastExpiringBar

Main.UICorner_23 = duplicate(Main.UICorner_13)
Main.UICorner_23.Name = randString()
Main.UICorner_23.Parent = Main.ToastBar

Main.UIPadding_19 = duplicate(Main.UIPadding_9)
Main.UIPadding_19.Name = randString()
Main.UIPadding_19.Parent = Main.KeySystem

Main.UIPadding_20 = duplicate(Main.UIPadding_14)
Main.UIPadding_20.Name = randString()
Main.UIPadding_20.Parent = Main.KeySystem_CheckButton

Main.UICorner_24 = duplicate(Main.UICorner_2)
Main.UICorner_24.Name = randString()
Main.UICorner_24.Parent = Main.KeySystem_CheckButton

Main.PopupTitle_18 = duplicate(Main.PopupTitle_11)
Main.PopupTitle_18.Name = randString()
Main.PopupTitle_18.Parent = Main.KeySystem

Main.MainWindow_UICorner_3 = duplicate(Main.UICorner_13)
Main.MainWindow_UICorner_3.Name = randString()
Main.MainWindow_UICorner_3.Parent = Main.RedSeparator_3

Main.PopupTitle_19 = duplicate(Main.PopupTitle_12)
Main.PopupTitle_19.Name = randString()
Main.PopupTitle_19.Parent = Main.KeySystem

Main.Logo_3 = duplicate(Main.Logo_2)
Main.Logo_3.Name = randString()
Main.Logo_3.Parent = Main.KeySystem

Main.UIAspectRatioConstraint_18 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_18.Name = randString()
Main.UIAspectRatioConstraint_18.Parent = Main.Logo_3

Main.UICorner_25 = duplicate(Main.UICorner_2)
Main.UICorner_25.Name = randString()
Main.UICorner_25.Parent = Main.KeySystem_ExitButton

Main.UIPadding_21 = duplicate(Main.UIPadding_14)
Main.UIPadding_21.Name = randString()
Main.UIPadding_21.Parent = Main.KeySystem_ExitButton

Main.UIPadding_22 = duplicate(Main.UIPadding_14)
Main.UIPadding_22.Name = randString()
Main.UIPadding_22.Parent = Main.KeySystem_GetKeyButton

Main.UICorner_26 = duplicate(Main.UICorner_2)
Main.UICorner_26.Name = randString()
Main.UICorner_26.Parent = Main.KeySystem_GetKeyButton

Main.UIAspectRatioConstraint_19 = duplicate(Main.UIAspectRatioConstraint)
Main.UIAspectRatioConstraint_19.Name = randString()
Main.UIAspectRatioConstraint_19.Parent = Main.Logo_4

Main.Main.Parent = isStudio and game.Players.LocalPlayer:WaitForChild("PlayerGui") or (gethui and gethui() or cloneref(game:GetService("CoreGui")))
Main.MainWindow.Parent = Main.Main
Main.UICorner.Parent = Main.MainWindow
Main.UIPadding.Parent = Main.MainWindow
Main.CloseTabButton.Parent = Main.MainWindow
Main.UICorner_2.Parent = Main.CloseTabButton
Main.UIAspectRatioConstraint.Parent = Main.CloseTabButton
Main.NewTabButton.Parent = Main.MainWindow
Main.TextLabel.Parent = Main.NewTabButton
Main.CloseButton.Parent = Main.MainWindow
Main.FindButton.Parent = Main.MainWindow
Main.Editor.Parent = Main.MainWindow
Main.ScrollingFrame.Parent = Main.Editor
Main.MainEditor.Parent = Main.ScrollingFrame
Main.UICorner_5.Parent = Main.MainEditor
Main.UIPadding_2.Parent = Main.MainEditor
Main.LineNumberFrame.Parent = Main.ScrollingFrame
Main.LineTemplate.Parent = Main.LineNumberFrame
Main.UIPadding_3.Parent = Main.LineNumberFrame
Main.ButtonsBar.Parent = Main.MainWindow
Main.ExecuteButton.Parent = Main.ButtonsBar
Main.UIPadding_4.Parent = Main.ExecuteButton
Main.UIListLayout.Parent = Main.ButtonsBar
Main.ExecuteClipboardButton.Parent = Main.ButtonsBar
Main.ClearButton.Parent = Main.ButtonsBar
Main.UIAspectRatioConstraint_5.Parent = Main.MainWindow
Main.TabsList.Parent = Main.MainWindow
Main.UIListLayout_2.Parent = Main.TabsList
Main.OpenTab.Parent = Main.TabsList
Main.UICorner_9.Parent = Main.OpenTab
Main.TabIconButton.Parent = Main.OpenTab
Main.TabName.Parent = Main.OpenTab
Main.UIListLayout_3.Parent = Main.OpenTab
Main.BaseTab.Parent = Main.TabsList
Main.TabIconButton_2.Parent = Main.BaseTab
Main.TabName_2.Parent = Main.BaseTab
Main.Label.Parent = Main.MainWindow
Main.UIPadding_7.Parent = Main.Label
Main.CurrentScript.Parent = Main.Label
Main.ImageLabel.Parent = Main.MainWindow
Main.UIAspectRatioConstraint_9.Parent = Main.ImageLabel
Main.FloatingIcon.Parent = Main.Main
Main.UICorner_13.Parent = Main.FloatingIcon
Main.FloatingIconImage.Parent = Main.FloatingIcon
Main.UIPadding_8.Parent = Main.FloatingIcon
Main.PopupModal.Parent = Main.Main
Main.YesNoPopupWindow.Parent = Main.PopupModal
Main.YesNo_PopupTitle.Parent = Main.YesNoPopupWindow
Main.UIPadding_9.Parent = Main.YesNoPopupWindow
Main.YesNo_PopupText.Parent = Main.YesNoPopupWindow
Main.YesButton.Parent = Main.YesNoPopupWindow
Main.UIPadding_10.Parent = Main.YesButton
Main.UIAspectRatioConstraint_11.Parent = Main.YesNoPopupWindow
Main.NoButton.Parent = Main.YesNoPopupWindow
Main.UpdateDetectedWithRoblox.Parent = Main.PopupModal
Main.UpdateArceusXRobloxButton.Parent = Main.UpdateDetectedWithRoblox
Main.UIPadding_13.Parent = Main.UpdateArceusXRobloxButton
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
Main.PopupTitle_7.Parent = Main.UpdateDetectedWithRoblox
Main.PopupTitle_8.Parent = Main.UpdateDetectedWithRoblox
Main.KeySystem_ExitButton2.Parent = Main.UpdateDetectedWithRoblox
Main.UIPadding_14.Parent = Main.KeySystem_ExitButton2
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
Main.ArceusNewVersion.Parent = Main.UpdateDetected
Main.OR.Parent = Main.UpdateDetected
Main.Toast.Parent = Main.Main
Main.UIAspectRatioConstraint_16.Parent = Main.Toast
Main.UICorner_21.Parent = Main.Toast
Main.UIListLayout_6.Parent = Main.Toast
Main.UIPadding_18.Parent = Main.Toast
Main.ToastExpiringBar.Parent = Main.Toast
Main.ToastBar.Parent = Main.ToastExpiringBar
Main.UIGradient_5.Parent = Main.ToastBar
Main.ToastDescription.Parent = Main.Toast
Main.ToastTitle.Parent = Main.Toast
Main.KeySystem.Parent = Main.Main
Main.KeySystem_CheckButton.Parent = Main.KeySystem
Main.PopupTitle_16.Parent = Main.KeySystem
Main.PopupTitle_17.Parent = Main.KeySystem
Main.RedSeparator_3.Parent = Main.KeySystem
Main.KeySystem_AppLogo_3.Parent = Main.KeySystem
Main.UIAspectRatioConstraint_17.Parent = Main.KeySystem_AppLogo_3
Main.PopupTitle_20.Parent = Main.KeySystem
Main.PopupTitle_21.Parent = Main.KeySystem
Main.PopupTitle_22.Parent = Main.KeySystem
Main.KeySystem_ExitButton.Parent = Main.KeySystem
Main.KeySystem_GetKeyButton.Parent = Main.KeySystem
Main.Logo_4.Parent = Main.KeySystem
Main.KeyStatus.Parent = Main.KeySystem
Main.PopupTitle_23.Parent = Main.KeySystem
Main.Keysystem_Keybox.Parent = Main.KeySystem
Main.UICorner_27.Parent = Main.Keysystem_Keybox
Main.UIStroke.Parent = Main.Keysystem_Keybox
Main.UIPadding_23.Parent = Main.Keysystem_Keybox
Main.PopupTitle_24.Parent = Main.KeySystem

misc.renderer.startRendering()
pages.handleCustomDrag(Main.MainWindow)
pages.handleCustomDrag(Main.FloatingIcon)

configs.loadSettings({
	["ConfirmationPopup"] = {true, nil}
}, true)


--[[
		[ AUTH ]
]]

if not isStudio then
	task.spawn(function()
		local exited, count, updated, new = false, 0, nil, nil

		repeat
			if count > 0 then
				misc.toast.short("Version checking", "Error checking version, may be related to your network. If the problem persists, try changing your connection, restarting your router, using a VPN, or contacting our support team.")
				task.wait(5)
			end

			updated, new = platoboost_auth.isUpdated()
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

		if platoboost_auth.isKeyless() then
			misc.toast.long("Keyless", "Anemo is currently in keyless mode! enjoy without having to deal with the keysystem!")

		else
			if not gethwid or not gethwid() then
				rconsole.warn("This exploit does not support gethwid / get_hwid function")	
				closeGui()
				return
			end

			Main.KeySystem_GetKeyButton.MouseButton1Click:Connect(platoboost_auth.getKey)
			Main.KeySystem_ExitButton.MouseButton1Click:Connect(function()
				exited = true
				closeGui()
			end)

			local key = nil
			while not platoboost_auth.isAuthenticated(key) and not exited do
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

		workink_loaded = true
		Main.FloatingIcon.Visible = true

		TWEEN_SERVICE:Create(Main.KeySystem, TweenInfo.new(
			0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0
			), { Size = UDim2.fromScale(0, 0) })

		task.wait(0.5)
		Main.KeySystem.Visible = false
	end)
end

--[[
		[ UI UPDATE CHECK ]
]]

do
	local coding_key = "WiVersion"
	local file_name = "version.wi"

	local popup = popups.create(popups.data.types.UpdateDetected, "uiversion")
	local oldVersion = storage.readFile(storage.data.types.Configs, file_name, coding_key)

	if oldVersion then
		if oldVersion ~= CURRENT_VERSION then
			popup.Show(oldVersion)
		end
	end

	storage.saveFile(storage.data.types.Configs, file_name, CURRENT_VERSION, true, coding_key)
end

--[[
		[ FLOATING ICON ]
]]

do
	buttons.holdable(Main.FloatingIcon).ShortClick.Event:Connect(function(btn)
		if workink_loaded then
			Main.MainWindow.Visible = true
			btn.Visible = false
		end
	end)

	Main.CloseButton.MouseButton1Click:Connect(function()
		Main.FloatingIcon.Visible = true
		Main.MainWindow.Visible = false
	end)
end

--[[
		[ STORAGE ] & [ UI UPDATE CHECK ]
]]

do
	local coding_key = "WiVersion"
	local file_name = "version.wi"

	local popup = popups.create(popups.data.types.UpdateDetected, "uiversion")
	local oldVersion = storage.readFile(storage.data.types.Configs, file_name, coding_key)

	if oldVersion then
		if oldVersion ~= CURRENT_VERSION then
			popup.Show(oldVersion)
		end
	end

	storage.saveFile(storage.data.types.Configs, file_name, CURRENT_VERSION, true, coding_key)
end

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
		[ EDITOR ]
]]

do
	local editor = executor.addEditor(Main.MainEditor, Main.ExecuteButton, Main.LineNumberFrame)
	local clearPopup = popups.create(popups.data.types.YesNo, "clear")
	local clear = buttons.holdable(Main.ClearButton, false)

	local function clearEditor(editor: TextBox, noConfirm: boolean)
		if noConfirm or not configs.getSetting("ConfirmationPopup") then
			editor.Text = ""

		else	
			clearPopup.Show("Clearing editor", "Do you want to clear the editor?", editor)
		end
	end

	Main.ExecuteButton.MouseButton1Click:Connect(function()
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
		else
			misc.toast.short("Info", "Hold the button to clear!")
		end
	end)

	clear.LongClick.Event:Connect(function(button)
		clearEditor(editor, false)
	end)

	local currentTab = 1
	local loadTabs = nil
	local focus_connection = nil
	local closePopup = popups.create(popups.data.types.YesNo, "tabclose")

	local function closeTab(index)
		executor.removeTab(index)

		if #executor.getTabs() < 1 then
			local index = executor.addTab(nil, nil)
			loadTabs(index)
		end

		loadTabs(index-1)
	end

	local function showClose(index)
		if configs.getSetting("ConfirmationPopup") then
			closePopup.Show("Closing tab", "Do you want to close this tab? the script will be lost.", index)
		elseif not index then
			misc.toast.short("Info", "Hold the button to remove!")
		else
			closeTab(index)
		end
	end

	closePopup.OnResponse.Event:Connect(function(response, ...)
		local args = {...}

		if response and args[1] then
			closeTab(args[1])
		end
	end)

	loadTabs = function(selectedTab: number)
		if focus_connection then
			focus_connection:Disconnect()
			focus_connection = nil
		end

		for _, tab in ipairs(Main.TabsList:GetChildren()) do
			if tab:IsA("TextButton") and tab.Visible then
				tab:Destroy()
			end
		end

		local tabs = executor.getTabs()
		selectedTab = tonumber(selectedTab) or 1
		selectedTab = selectedTab < 1 and 1 or selectedTab
		currentTab = selectedTab

		for i, tab in ipairs(tabs) do
			local newTab = Main.BaseTab:Clone()
			misc.protectInstances(newTab)
			--newTab.Name = randString()
			newTab.LayoutOrder = i
			newTab.Parent = Main.TabsList

			local child = newTab:FindFirstChildWhichIsA("TextLabel")
			child.Text = tab.Name

			if selectedTab == i then
				editor.Text = tab.Source
				child.TextTransparency = 0
				Main.CurrentScript.Text = tab.Name		

				focus_connection = Main.CurrentScript.FocusLost:Connect(function()
					local txt = Main.CurrentScript.Text
					executor.editTab(i, txt, tab.Source)
					child.Text = txt
				end)
			end

			newTab.MouseButton1Click:Connect(function()
				loadTabs(i)
			end)

			newTab.Visible = true
		end
	end

	local defaultSize = Main.MainWindow.Size
	local editorFocused = true
	local lastIndex = nil
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
		stretch()
	end)

	editor.FocusLost:Connect(function()
		local tab = executor.getTabs()[currentTab]
		executor.editTab(currentTab, tab.Name, editor.Text)
		editorFocused = false
		reset()
	end)

	editor:GetPropertyChangedSignal("Text"):Connect(function()
		if not editorFocused then
			local tab = executor.getTabs()[currentTab]
			executor.editTab(currentTab, tab.Name, editor.Text)
		end
	end)

	Main.NewTabButton.MouseButton1Click:Connect(function()
		local index = executor.addTab(nil, nil)
		loadTabs(index)
	end)

	Main.CloseTabButton.MouseButton1Click:Connect(function()
		if currentTab then
			showClose(currentTab)
		end
	end)

	Main.ExecuteClipboardButton.MouseButton1Click:Connect(function()
		executor.pushclipboard(false)
	end)

	executor.loadTabs()
	if #executor.getTabs() < 1 then
		executor.addTab(nil, nil)
	end

	loadTabs(1)
	executor.onTabAdded().Event:Connect(function(index)
		loadTabs(index)
	end)
end

if isStudio then
	workink_loaded = true
	Main.FloatingIcon.Visible = true
end
