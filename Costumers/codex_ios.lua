-- | SPDM | Global definitions

local arceus = arceus or nil
local unavailable = function(fake)
	return function(...)
		cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
			Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
			Text = "This feature cannot be used on the current apk version"
		});

		return fake
	end
end

local getgenv = getgenv or function()
	if rconsolwarn then
		rconsolewarn("Fake getgenv called")
	end

	return {}
end

local cloneref = cloneref or function(...)
	if rconsolwarn then
		rconsolewarn("Fake cloneref called")
	end

	return ...
end

local executecode = executecode and clonefunction(executecode) or function(scr)
	task.spawn(loadstring(scr));
end

local clonefunction = clonefunction or function(funct)
	if rconsolwarn then
		rconsolewarn("Fake clonefunction called")
	end

	return function(...)
		return funct(...)
	end
end

local setfpscap = setfpscap or unavailable(nil)
local getfpscap = getfpscap or unavailable(60)
local getfpsmax = getfpsmax or unavailable(60)

local makearceusfolder = arceus and clonefunction(arceus.makearceusfolder);
local writearceusfile = arceus and clonefunction(arceus.writearceusfile);
local listarceusfiles = arceus and clonefunction(arceus.listarceusfiles);
local isarceusfolder = arceus and clonefunction(arceus.isarceusfolder);
local readarceusfile = arceus and clonefunction(arceus.readarceusfile);
local isarceusfile = arceus and clonefunction(arceus.isarceusfile);
local isiosdevice = (arceus and arceus.is_ios) and clonefunction(arceus.is_ios) or function()
	return false 
end

getgenv().arceus = nil

arceus_libs = {
	data = {
		handled_page_dragging = {},
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
			arceus_libs.renderer.data.paused[id] = true
		end,

		resumeFromRendering = function(id: number)
			arceus_libs.renderer.data.paused[id] = nil
		end,

		removeFromRendering = function(id: number)		
			if arceus_libs.renderer.data.functions[id] then			
				arceus_libs.renderer.data.to_remove[id] = true
			end
		end,

		pushToRendering = function(funct)
			arceus_libs.renderer.data.id_counter += 1
			local new_id = "r" .. arceus_libs.renderer.data.id_counter

			arceus_libs.renderer.data.functions[new_id] = funct

			return new_id
		end,

		startRendering = function()
			if arceus_libs.renderer.data.connection then
				return
			end

			local RUN_SERVICE = cloneref(game:GetService("RunService"))
			arceus_libs.renderer.data.connection = RUN_SERVICE.RenderStepped:Connect(function(delta)
				pcall(function()
					for id, v in pairs(arceus_libs.renderer.data.functions) do
						if not arceus_libs.renderer.data.paused[id] then
							v(delta, id)
						end
					end

					local removed = false
					for id, v in pairs(arceus_libs.renderer.data.to_remove) do
						arceus_libs.renderer.data.functions[id] = nil
						arceus_libs.renderer.data.to_remove[id] = nil
						removed = true
					end

					if removed then
						arceus_libs.renderer.data.removedFromRendering:Fire()
					end
				end)
			end)
		end,

		stopRenddering = function()
			if arceus_libs.renderer.data.connection then
				arceus_libs.renderer.data.connection:Disconnect()
				arceus_libs.renderer.data.connection = nil
			end
		end,
	},
	
	
	input = {
		handleCustomDrag = function(object: GuiObject)
			local lastMousePos, dragging, startPos, viewportSize
			local USER_INPUT_SERVICE = cloneref(game:GetService("UserInputService"))
			
			arceus_libs.data.handled_page_dragging[object] = true
			object.Draggable = false
			object.Active = true

			local function Update(dt, renderId)
				if not object.Active or not object.Visible then
					return
				end

				if not object then
					arceus_libs.renderer.removeFromRendering(renderId)
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

			return arceus_libs.renderer.pushToRendering(Update)
		end,

		isDraggable = function(object: GuiObject)
			return arceus_libs.data.handled_page_dragging[object] or object.Draggable
		end
	},
	
	buttons = {
		data = {
			drag_min = 15,
			long_click_time = 0.5,

			has_been_dragged = function(lastPos: UDim2, newPos: UDim2)
				if not lastPos or not newPos then
					return false
				end

				return math.abs((lastPos - newPos).Magnitude) > arceus_libs.buttons.data.drag_min
			end,
		},

		holdable = function(button: GuiButton, waitForRelease: boolean)
			local clickFetch = Instance.new("BindableEvent")
			local shortClick = Instance.new("BindableEvent")
			local longClick = Instance.new("BindableEvent")
			local lastPress = nil
			local lastPos = nil

			button.MouseButton1Down:Connect(function()
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

						task.wait(arceus_libs.buttons.data.long_click_time + 0.05)

						if not exit then
							exit = true
							if arceus_libs.input.isDraggable(button) and arceus_libs.buttons.data.has_been_dragged(lastPos, button.AbsolutePosition) then
								return
							end

							longClick:Fire(button, os.clock() - lastPress)
						end
					end)
				end
			end)

			button.MouseButton1Up:Connect(function()
				if arceus_libs.input.isDraggable(button) and arceus_libs.buttons.data.has_been_dragged(lastPos, button.AbsolutePosition) then
					return
				end

				if not waitForRelease then
					clickFetch:Fire()
					return
				end

				local clickTime = os.clock() - lastPress
				if lastPress and clickTime >= arceus_libs.buttons.data.long_click_time then
					longClick:Fire(button, clickTime)
				else
					shortClick:Fire(button, clickTime)
				end
			end)

			return {
				ShortClick = shortClick, 
				LongClick = longClick,
				Button = button
			}
		end
	}
}

-- |

local framework = setmetatable({
	dependencies = {
		utils = {}
	},
	data = {},
	components = {
		base = {}
	},
	popups = {},
	pages = {
		localScripts = {},
		console = {},
		exploitSettings = {
			optionTypes = {}
		},
		startup = {},
		navbar = {},
		globalScripts = {},
		editor = {}
	}
}, {
	__index = function(t, k)
		local res, split = t, string.split(k, ".");
		for i, v in split do
			res = rawget(res, v);
		end
		return res;
	end
});

do
	--[[ Enum ]]--

	local codexEnum = {};

	function codexEnum.__index(t, k)
		return t._map[k] or codexEnum[k];
	end

	function codexEnum.new(items: {any}): {any}
		local map = {};

		for i, v in items do
			map[v] = i;
		end

		return setmetatable({
			_map = map,
			_items = items
		}, codexEnum);
	end

	function codexEnum:GetEnumItems()
		return self._items;
	end

	--[[ Module ]]--

	framework.dependencies.codexEnum = {
		NavbarState = codexEnum.new({ "Hidden", "Partial", "Full" })
	};
end

do
	--[[ Connection ]]--

	local connection = {};
	connection.__index = connection;

	function connection.new(signal: {any}, fn: (any))
		return setmetatable({
			_signal = signal,
			_fn = fn
		}, connection);
	end

	function connection:Disconnect()
		self._signal[self] = nil;
	end

	--[[ Signal ]]--

	local signal = {};
	signal.__index = signal;

	function signal.new()
		return setmetatable({}, signal);
	end

	function signal:Connect(fn: (any))
		local conn = connection.new(self, fn);
		self[conn] = true;
		return conn;
	end

	function signal:Once(fn: (any))
		local conn; conn = self:Connect(function(...)
			conn:Disconnect();
			fn(...);
		end);
		return conn;
	end

	function signal:Fire(...)
		for conn, _ in self do
			task.spawn(conn._fn, ...);
		end
	end

	function signal:Wait()
		local thread = coroutine.running();
		local conn; conn = self:Connect(function(...)
			conn:Disconnect();
			task.spawn(thread, ...);
		end);
		return coroutine.yield();
	end

	function signal:DisconnectAll()
		table.clear(self);
	end

	framework.dependencies.signal = signal;
end

do
	--[[ Variables ]]--

	local runService = cloneref(game:GetService("RunService"));
	local tweenService = cloneref(game:GetService("TweenService"));

	local isRunning, isStudio = runService:IsRunning(), runService:IsStudio();
	local dynamicParent;

	--[[ Setup ]]--

	if gethui then
		dynamicParent = gethui();
	elseif isRunning then
		dynamicParent = isStudio and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") or cloneref(game:GetService("CoreGui"));
	else
		dynamicParent = cloneref(game:GetService("StarterGui"));
	end

	--[[ Module ]]--

	local utils = {};

	function utils:RandomString(len: number) -- SPDM
		local chars = {}
		for i = 1, len or math.random(16, 32) do
			chars[i] = string.char(math.random(33, 230))
		end

		return table.concat(chars)
	end

	function utils:Create(className: string, properties: {any}, children: {any}?): Instance
		local instance = Instance.new(className);
		for i, v in properties do
			if typeof(instance[i]) == "RBXScriptSignal" then
				instance[i]:Connect(v);
			elseif i ~= "Parent" then
				instance[i] = v;
			end
		end
		if children ~= nil then
			for i, v in children do
				v.Parent = instance;
			end
		end

		--[[ SPDM | Random name protection, this system is not compatible as it access the instances by the name.
		
			if isRunning and not isStudio then
				instance.Name = utils:RandomString(nil)
			end
		]]

		instance.Parent = properties.Parent;
		return instance;
	end

	function utils:Tween(instance: Instance, duration: number, properties: {any}, ...): Tween
		local tween = tweenService:Create(instance, TweenInfo.new(duration, ...), properties);
		tween:Play();
		return tween;
	end

	function utils:DynamicParent(instance: Instance): Instance
		instance.Parent = dynamicParent;
		return instance;
	end

	framework.dependencies.utils.instance = utils;
end

do
	--[[ Module ]]--

	local utils = {};

	function utils:CapitaliseFirst(str: string): string
		return string.upper(string.sub(str, 1, 1)) .. string.lower(string.sub(str, 2));
	end

	function utils:ConvertToCamelCase(str: string): string
		local res = "";
		for i, v in string.split(str, " ") do
			res ..= i == 1 and string.lower(v) or self:CapitaliseFirst(v);
		end
		return res;
	end

	framework.dependencies.utils.string = utils;
end

do
	--[[ Module ]]--

	local utils = {};

	function utils:DeepCopy(x: {any})
		local y = {};
		for i, v in x do
			y[i] = type(v) == "table" and self:DeepCopy(v) or v;
		end
		return y;
	end

	function utils:Concatenate(x: {any}, y: {any})
		if y ~= nil then
			for i, v in y do
				table.insert(x, v);
			end
		end
		return x;
	end

	function utils:DeepOverwrite(x: {any}, y: {any}, inclusive: boolean?)
		if y == nil then
			return x;
		end
		for i, v in y do
			if x[i] == nil then
				if inclusive then
					x[i] = v;
				end
			else
				local _type = typeof(x[i]);
				if _type == typeof(v) then
					if _type == "table" then
						self:DeepOverwrite(x[i], v);
					else
						x[i] = v;
					end
				end
			end
		end
		return x;
	end

	framework.dependencies.utils.table = utils;
end

do
	--[[ Variables ]]--

	local denominations = {
		"K", "M", "B", "T", "q", "Q", "s", "S", "O", "N", "d", "U", "D"
	};

	--[[ Module ]]--

	local utils = {};

	function utils:Round(input: number, float: number): number
		local bracket = 1 / float;
		return math.round(input * bracket) / bracket;
	end

	function utils:FormatAsCount(input: number, float: number): string
		if input < 1000 then
			return tostring(input);
		end
		local denominationIndex = math.floor(math.log10(input) / 3);
		return tostring(self:Round(input / (10 ^ (denominationIndex * 3)), float)) .. tostring(denominations[denominationIndex]);
	end

	function utils:FormatAsLiteralCount(input: number): string
		local x = string.gsub(string.reverse(tostring(input)), "(%d%d%d)", "%1,");
		return string.gsub(string.reverse(x), "^,", "");
	end

	function utils:IsWithin2DBounds(position: Vector2, topLeft: Vector2, bottomRight: Vector2): boolean
		return position.X >= topLeft.X and position.X <= bottomRight.X and position.Y >= topLeft.Y and position.Y <= bottomRight.Y;
	end

	framework.dependencies.utils.maths = utils;
end

do
	--[[ Variables ]]--

	local httpService = cloneref(game:GetService("HttpService"));
	local httpRequest = request or http_request or (syn and syn.request);


	--[[ Module ]]--

	local utils = {};

	function utils:Request(url: string, method: string?, headers: {any}?, body: any?): string
		local s, r = pcall(httpRequest, {
			Url = url,
			Method = method or "GET",
			Headers = headers,
			Body = type(body) == "table" and httpService:JSONEncode(body) or body
		});
		if s == false or r.Success == false or r.StatusCode ~= 200 then
			return false;
		end
		return r.Body;
	end

	function utils:Execute(scr: string, ...)
		executecode(scr);
	end

	function utils:AreVersionsAlike(currentVersion: string, newestVersion: string)
		local currentSplit, newestSplit = string.split(currentVersion, "."), string.split(newestVersion, ".");
		if #currentSplit ~= #newestSplit then
			return false;
		end
		for i = 1, #currentSplit do
			if currentSplit[i] ~= newestSplit[i] then
				return false;
			end
		end
		return true;
	end

	framework.dependencies.utils.internal = utils;
end

do
	--[[ Variables ]]--

	local httpService = cloneref(game:GetService("HttpService"));

	local internalUtils = framework.dependencies.utils.internal;

	local backup = {
		androidVersion = "1",
		iosVersion = "1",
		
		changelog = {
			{
				stamp = "2023-01-01T00:00:00Z",
				data = {
					"Changelog Data Failed To Download"
				}
			}
		}
	};

	--[[ Module ]]--

	local internalSettings = {};

	function internalSettings:Initialize()
		local data = backup;
		if identifyexecutor then
			local hostData = internalUtils:Request(isiosdevice() and "https://rblxexploits.com/codexiosUI.json" or "https://rblxexploits.com/codexUI.json");
			if not hostData then
				cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
					Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
					Text = "An error occured. Code: 001"
				});
				return;
			end
			data = httpService:JSONDecode(hostData);
		end
		self.data = data;
	end

	framework.data.internalSettings = internalSettings;
end

do
	framework.data.builtInScripts = {
		{
			title = "Dark Dex V4",
			description = "A powerful game explorer GUI. Shows every instance of the game and all their properties. Useful for developers.",
			icon = "rbxassetid://14806198159",
			content = "local file = \"dexV4.lua\"; local raw = isfile and isfile(file) and readfile(file); raw = raw or game:HttpGetAsync(\"https://raw.githubusercontent.com/loglizzy/dexV4/main/source.lua\"); if isfile then task.spawn(writefile, file, game:HttpGet(url)); end loadstring(raw)();"
		},
		{
			title = "Unnamed ESP",
			description = "Player ESP for Roblox, fully undetectable, uses built in drawing API.",
			icon = "rbxassetid://14806221310",
			content = "pcall(function() loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua\"))(); end);"
		},
		{
			title = "Hydroxide",
			description = "General purpose pen-testing tool for games on the Roblox engine",
			icon = "rbxassetid://14806229032",
			content = "loadstring(game:HttpGetAsync(\"https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua\"))(); loadstring(game:HttpGetAsync(\"https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ui/main.lua\"))();"
		},
		{
			title = "Infinite Yield",
			description = "Admin command line script with 300+ commands and 6 years of development",
			icon = "rbxassetid://14806239733",
			content = "loadstring(game:HttpGetAsync(\"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source\"))();"
		},
		{
			title = "Owl Hub",
			description = "Owl Hub is a free Roblox script hub developed by Google Chrome and CriShoux. It currently has 30+ games.",
			icon = "rbxassetid://14806252030",
			content = "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt\"))();"
		}
	};
end

do
	--[[ Variables ]]--

	local signal = framework.dependencies.signal;
	local internalUtils = framework.dependencies.utils.internal;
	local tableUtils = framework.dependencies.utils.table;

	local httpService = cloneref(game:GetService("HttpService"));

	local savedScripts = {
		accumulator = 0,
		cache = {},
		onScriptAdded = signal.new(),
		onScriptRemoved = signal.new()
	};

	--[[ Functions ]]--

	local function reassignIndexes(cache: {any})
		for i, v in cache do
			v.index = i;
		end
		return cache;
	end

	local function loadScriptCache()
		if isarceusfile and isarceusfile("data/codexScriptCache.json") then
			local s, r = pcall(httpService.JSONDecode, httpService, readarceusfile("data/codexScriptCache.json"));
			if s and type(r) == "table" then
				local accumulation = 0;
				local cache = {};
				local hasFoundDuplicateIndex = false;
				for i, v in r do
					if not (type(v) == "table" and v.title and v.description and v.content and v.index and v.autoExecute ~= nil) then
						continue;
					end

					if v.index > accumulation then
						accumulation = v.index;
					end

					if hasFoundDuplicateIndex == false then -- backwards fix from an old broken update and/or someone trying to fuck with the system
						for i2, v2 in cache do
							if v2.index == v.index then
								hasFoundDuplicateIndex = true;
							end
						end
					end

					v.onAutoExecuteToggled = signal.new();
					cache[#cache + 1] = hasFoundDuplicateIndex and reassignIndexes(v) or v;
				end
				savedScripts.accumulator = accumulation;
				savedScripts.cache = cache;
			end
		end
	end

	local function saveScriptCache()
		if writearceusfile then
			local cache = tableUtils:DeepCopy(savedScripts.cache);
			for i, v in cache do
				v.onAutoExecuteToggled = nil;
			end
			writearceusfile("data/codexScriptCache.json", httpService:JSONEncode(cache));
		end
	end

	--[[ Module ]]--

	function savedScripts:Initialize()
		loadScriptCache();
		for i, v in savedScripts.cache do
			if v.autoExecute then
				task.spawn(function()
					internalUtils:Execute(v.content);
				end);
			end
		end
	end

	function savedScripts:Get(index: number)
		for i, v in self.cache do
			if v.index == index then
				return i, v;
			end
		end
	end

	function savedScripts:Add(title: string, description: string, content: string)
		self.accumulator += 1;
		local index = self.accumulator;

		local newScript = {
			title = title,
			description = description,
			content = content,
			index = index,
			autoExecute = false,
			onAutoExecuteToggled = signal.new()
		};

		self.cache[#self.cache + 1] = newScript;
		self.onScriptAdded:Fire(newScript);
		saveScriptCache();
	end

	function savedScripts:Remove(index: number)
		local i, save = self:Get(index);
		if save then
			table.remove(self.cache, i);
			self.onScriptRemoved:Fire(save);
			saveScriptCache();
		end
	end

	function savedScripts:ToggleAutomaticExecution(index: number, state: boolean)
		local _, save = self:Get(index);
		if save then
			save.autoExecute = state;
			save.onAutoExecuteToggled:Fire(state);
			saveScriptCache();
		end
	end

	framework.data.savedScripts = savedScripts;
end

do
	--[[ Variables ]]--

	local httpService = cloneref(game:GetService("HttpService"));

	local signal = framework.dependencies.signal;
	local tableUtils = framework.dependencies.utils.table;

	local signalCache = {};
	local settingsCache = {
		executor = {
			openingMode = "Floating Icon", -- SPDM Team | Floating Icon
			showParticles = true, -- SPDM Team | Show Particles Setting
			autoExecute = true,
			autoSaveTabs = false,
			fps = {
				unlocked = false,
				vSync = false,
				value = 60
			}
		},
		player = {
			walkSpeed = {
				enabled = false,
				value = 16
			},
			jumpPower = {
				enabled = false,
				value = 50
			},
			antiAfk = false
		},
		serverHop = {
			priority = "Most Players",
			delayedHop = false,
			delay = 10
		}
	};

	local userSettings = {};

	--[[ Functions ]]--

	local function saveUserSettings()
		if writearceusfile then
			writearceusfile("data/codexSettings.json", httpService:JSONEncode(tableUtils:DeepCopy(settingsCache)));
		end
	end

	local function createAutosaveMetatable(options: {any}, hierarchy: string)
		for i, v in options do
			if type(v) == "table" then
				options[i] = createAutosaveMetatable(v, hierarchy == "" and i or string.format("%s.%s", hierarchy, i));
			end
		end

		return setmetatable({}, {
			__index = function(_, k)
				return options[k];
			end,
			__newindex = function(_, k, v)
				options[k] = v;
				saveUserSettings();
				userSettings:FirePropertyChangedSignal(hierarchy == "" and k or string.format("%s.%s", hierarchy, k), v);
			end,
			__iter = function()
				return next, options;
			end
		});
	end

	--[[ Module ]]--

	function userSettings:Initialize()
		if isarceusfolder and not isarceusfolder("data") then
			makearceusfolder("data");
		end

		if isarceusfile and isarceusfile("data/codexSettings.json") then
			local succ, res = pcall(httpService.JSONDecode, httpService, readarceusfile("data/codexSettings.json"));
			if succ then
				tableUtils:DeepOverwrite(settingsCache, res);
			else
				task.defer(error, "settings file is corrupted");
			end
		end

		self.cache = createAutosaveMetatable(settingsCache, "");
	end

	function userSettings:GetPropertyChangedSignal(path: string)
		if signalCache[path] == nil then
			signalCache[path] = signal.new();
		end
		return signalCache[path];
	end

	function userSettings:FirePropertyChangedSignal(path: string, value: any)
		local sig = signalCache[path];
		if sig then
			sig:Fire(value);
		end
	end

	framework.data.userSettings = userSettings;
end

do
	--[[ Variables ]]--

	local signal = framework.dependencies.signal;
	local tableUtils = framework.dependencies.utils.table;

	local httpService = cloneref(game:GetService("HttpService"));

	local tabSystem = {
		accumulator = 1,
		selected = nil,
		cache = {
			{
				title = "Script 1",
				content = "print('Hello World!');",
				index = 1
			}
		},
		onTabCreated = signal.new(),
		onTabRemoved = signal.new(),
		onTabSelected = signal.new()
	};

	--[[ Functions ]]--

	local function reassignIndexes(cache: {any})
		for i, v in cache do
			v.index = i;
		end
		return cache;
	end

	local function loadTabCache()
		if isarceusfile and isarceusfile("data/codexTabs.json") then
			local s, r = pcall(httpService.JSONDecode, httpService, readarceusfile("data/codexTabs.json"));
			if s and type(r) == "table" then
				local accumulation = 0;
				local cache = {};
				local hasFoundDuplicateIndex = false;
				for i, v in r do
					if not (type(v) == "table" and v.title and v.content and v.index) then
						continue;
					end

					if v.index > accumulation then
						accumulation = v.index;
					end

					if hasFoundDuplicateIndex == false then -- backwards fix from an old broken update and/or someone trying to fuck with the system
						for i2, v2 in cache do
							if v2.index == v.index then
								hasFoundDuplicateIndex = true;
							end
						end
					end

					cache[#cache + 1] = hasFoundDuplicateIndex and reassignIndexes(v) or v;
				end
				tabSystem.accumulator = accumulation;
				tabSystem.cache = cache;
			end
		end
	end

	--[[ Module ]]--

	function tabSystem:Initialize()
		loadTabCache();
	end

	function tabSystem:Get(index: number)
		for i, v in self.cache do
			if v.index == index then
				return i, v;
			end
		end
	end

	function tabSystem:Add(title: string, content: string?)
		self.accumulator += 1;
		local index = self.accumulator;

		local newTab = {
			title = title,
			content = content or "print('Hello World!');",
			index = index
		};

		self.cache[#self.cache + 1] = newTab;
		self.onTabCreated:Fire(newTab);
		self:Select(index);
	end

	function tabSystem:Remove(index: number)
		if #self.cache > 1 then
			local i, tab = self:Get(index);
			if tab then
				if self.selected == tab then
					self:Select(self.cache[i == 1 and 2 or 1].index);
				end
				table.remove(self.cache, i);
				self.onTabRemoved:Fire(tab);
			end
		end
	end

	function tabSystem:Select(index: number)
		local _, tab = self:Get(index);
		if tab and (self.selected == nil or tab.index ~= self.selected.index) then
			self.selected = tab;
			self.onTabSelected:Fire(tab);
		end
	end

	function tabSystem:UpdateContent(index: number, content: string)
		local _, tab = self:Get(index);
		if tab then
			tab.content = content;
		end
	end

	function tabSystem:Save()
		if writearceusfile then
			writearceusfile("data/codexTabs.json", httpService:JSONEncode(tableUtils:DeepCopy(self.cache)));
		end
	end

	framework.data.tabSystem = tabSystem;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;
	local tableUtils = framework.dependencies.utils.table;

	--[[ Module ]]--

	framework.components.editorButton = (function(title: string, icon: string, overwriteProps: {any}?, foreground: Color3?): Instance
		return instanceUtils:Create("TextButton", tableUtils:DeepOverwrite({ 
			BackgroundColor3 = Color3.fromHex("3a3a4a"), 
			BorderSizePixel = 0, 
			FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
			Name = stringUtils:ConvertToCamelCase(title), 
			Size = UDim2.new(0, 50, 0, 50), 
			Text = "", 
			TextColor3 = Color3.fromHex("1b2a35"),
			ZIndex = 2
		}, overwriteProps, true), {
			instanceUtils:Create("UICorner", { 
				Name = "corner"
			}),
			instanceUtils:Create("ImageLabel", { 
				AnchorPoint = Vector2.new(0.5, 0.5), 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				Image = icon, 
				ImageColor3 = foreground or Color3.fromHex("9fa4ba"), 
				Name = "icon", 
				Position = UDim2.new(0.5, 0, 0.5, 0), 
				Size = UDim2.new(0, 28, 0, 28),
				ZIndex = 2
			})
		});
	end);
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;
	local tabSystem;

	local textService = cloneref(game:GetService("TextService"));

	--[[ Functions ]]--

	local function createButton(title: string): Instance
		return instanceUtils:Create("TextButton", { 
			AutoButtonColor = false, 
			BackgroundColor3 = Color3.fromHex("3a3a4a"), 
			BorderSizePixel = 0, 
			FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
			Name = stringUtils:ConvertToCamelCase(title), 
			Position = UDim2.new(1, -75, 1, -75), 
			Size = UDim2.new(0, textService:GetTextBoundsAsync(instanceUtils:Create("GetTextBoundsParams", {
				Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				Text = title,
				Size = 14,
				Width = math.huge
			})).X + 42, 0, 32), 
			Text = ""
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 6), 
				Name = "corner"
			}),
			instanceUtils:Create("ImageButton", { 
				AnchorPoint = Vector2.new(1, 0.5), 
				AutoButtonColor = false,
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				Image = "rbxassetid://14808246706", 
				Name = "close", 
				Position = UDim2.new(1, -6, 0.5, 0), 
				Size = UDim2.new(0, 20, 0, 20)
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0.5), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "title", 
				Position = UDim2.new(0.5, 0, 0.5, 0), 
				Size = UDim2.new(1, -18, 1, 0), 
				Text = title, 
				TextColor3 = Color3.fromHex("9fa4ba"), 
				TextSize = 14, 
				TextXAlignment = Enum.TextXAlignment.Left
			})
		});
	end

	--[[ Module ]]--

	local tabButton = {};
	tabButton.__index = tabButton;

	function tabButton.new(tab: {any})
		if tabSystem == nil then
			tabSystem = framework.data.tabSystem;
		end

		local btn = createButton(tab.title);

		btn.MouseButton1Click:Connect(function()
			tabSystem:Select(tab.index);
		end);

		btn.close.MouseButton1Click:Connect(function()
			tabSystem:Remove(tab.index);
		end);

		return setmetatable({
			instance = btn
		}, tabButton);
	end

	function tabButton:Highlight(selected: boolean)
		instanceUtils:Tween(self.instance, 0.2, {
			BackgroundColor3 = Color3.fromHex(selected and "eb4545" or "3a3a4a");
		});
		instanceUtils:Tween(self.instance.title, 0.2, {
			TextColor3 = Color3.fromHex(selected and "ffffff" or "9fa4ba");
		});
		instanceUtils:Tween(self.instance.close, 0.2, {
			ImageColor3 = Color3.fromHex(selected and "ffffff" or "9fa4ba");
		});
	end

	function tabButton:Destroy()
		self.instance:Destroy();
	end

	framework.components.tabButton = tabButton;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;

	--[[ Functions ]]--

	local function createButton(title: string, icon: string): Instance
		return instanceUtils:Create("TextButton", { 
			AutoButtonColor = false, 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Name = stringUtils:ConvertToCamelCase(title), 
			Size = UDim2.new(1, 0, 0, 50), 
			Text = "",
			ZIndex = 2
		}, {
			instanceUtils:Create("ImageLabel", { 
				AnchorPoint = Vector2.new(0.5, 0.5), 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				Image = icon, 
				ImageColor3 = Color3.fromHex("979ebd"), 
				ImageTransparency = 0.6, 
				Name = "icon", 
				Position = UDim2.new(0, 38, 0.5, 0), 
				Size = UDim2.new(0, 24, 0, 24),
				ZIndex = 2
			}, {
				instanceUtils:Create("ImageLabel", { 
					AnchorPoint = Vector2.new(0.5, 0.5), 
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					Image = "rbxassetid://11559270573", 
					ImageTransparency = 1, 
					Name = "glow", 
					Position = UDim2.new(0.5, 0, 0.5, 0), 
					Size = UDim2.new(0, 85, 0, 102),
					ZIndex = 2
				})
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0, 0.5), 
				AutomaticSize = Enum.AutomaticSize.XY, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size12, 
				Name = "text", 
				Position = UDim2.new(0, 70, 0.5, 0), 
				Text = title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 12, 
				TextTransparency = 0.2, 
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 2
			}),
			instanceUtils:Create("ImageLabel", { 
				AnchorPoint = Vector2.new(0, 0.5), 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				Image = "rbxassetid://11558444554", 
				Name = "arrow", 
				Position = UDim2.new(0, 224, 0.5, 0), 
				Size = UDim2.new(0, 16, 0, 16),
				ZIndex = 2
			})
		});
	end

	--[[ Module ]]--

	local navbarButton = {};
	navbarButton.__index = navbarButton;

	function navbarButton.new(title: string, icon: string)
		return setmetatable({
			instance = createButton(title, icon);
		}, navbarButton);
	end

	function navbarButton:Highlight(selected: boolean)
		instanceUtils:Tween(self.instance.icon, 0.2, {
			ImageColor3 = selected and Color3.fromHex("eb4545") or Color3.fromHex("979ebd"),
			ImageTransparency = selected and 0 or 0.6
		});
		instanceUtils:Tween(self.instance.icon.glow, 0.2, {
			ImageTransparency = selected and 0 or 1
		});
	end

	framework.components.navbarButton = navbarButton;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;

	--[[ Module ]]--

	framework.components.base.textBox = (function(overwriteProps: {any}, children: {any}): Instance
		return instanceUtils:Create("TextBox", tableUtils:DeepOverwrite({
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = Color3.fromRGB(58, 58, 74),
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			PlaceholderText = "Value...",
			Size = UDim2.new(0, 0, 0, 32),
			Text = "",
			TextColor3 = Color3.fromRGB(159, 164, 186),
			TextSize = 14,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center
		}, overwriteProps, true), tableUtils:Concatenate({
			instanceUtils:Create("UIPadding", {
				Name = "padding",
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10)
			}),
			instanceUtils:Create("UICorner", {
				Name = "corner",
				CornerRadius = UDim.new(0, 6)
			})
		}, children));
	end);
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;

	--[[ Module ]]--

	framework.components.base.textButton = (function(overwriteProps: {any}, children: {any}): Instance
		return instanceUtils:Create("TextButton", tableUtils:DeepOverwrite({
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = Color3.fromRGB(235, 69, 69),
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold),
			Size = UDim2.new(0, 0, 0, 32),
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 14,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center
		}, overwriteProps, true), tableUtils:Concatenate({
			instanceUtils:Create("UIPadding", {
				Name = "padding",
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10)
			}),
			instanceUtils:Create("UICorner", {
				Name = "corner",
				CornerRadius = UDim.new(0, 6)
			})
		}, children));
	end);
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;

	--[[ Module ]]--

	framework.components.base.background = (function(overwriteProps: {any}?, children: {any}?): Instance
		return instanceUtils:Create("Frame", tableUtils:DeepOverwrite({
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(21, 21, 29),
			BackgroundTransparency = 0.1,
			BorderSizePixel = 0,
			Name = "background",
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 0
		}, overwriteProps, true), children);
	end);
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;

	--[[ Module ]]--

	framework.components.base.textLabel = (function(overwriteProps: {any}, children: {any}): Instance
		return instanceUtils:Create("TextLabel", tableUtils:DeepOverwrite({
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold),
			Size = UDim2.new(),
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 14,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center
		}, overwriteProps, true), children);
	end);
end

do
	--[[ Variables ]]--

	local savedScripts = framework.data.savedScripts;
	local instanceUtils = framework.dependencies.utils.instance;
	local internalUtils = framework.dependencies.utils.internal;
	local mathsUtils = framework.dependencies.utils.maths;
	local tabSystem;

	local globalScriptSelection = {};

	--[[ Functions ]]--

	local function createUI(directory: Instance): Instance
		local base = instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0.5, 0.5), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = "globalScriptSelection", 
			Parent = directory, 
			Position = UDim2.new(0.5, 0, 0.5, 20), 
			Size = UDim2.new(0.6, 0, 0.4, 100), 
			Visible = false
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 5), 
				Name = "corner"
			}),
			instanceUtils:Create("UIStroke", { 
				Color = Color3.fromHex("202028"), 
				Name = "stroke", 
				Thickness = 2
			}),
			instanceUtils:Create("TextLabel", { 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "selectedScript", 
				Position = UDim2.new(0, 30, 0, 20), 
				Size = UDim2.new(1, -232, 0, 0), 
				Text = "Selected Script:", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "buttons", 
				Position = UDim2.new(0.5, 0, 1, -30), 
				Size = UDim2.new(1, -60, 0, 0)
			}, {
				instanceUtils:Create("UIGridLayout", { 
					CellPadding = UDim2.new(0, 18, 0, 16), 
					CellSize = UDim2.new(0.5, -9, 0, 36), 
					Name = "grid", 
					SortOrder = Enum.SortOrder.LayoutOrder, 
					VerticalAlignment = Enum.VerticalAlignment.Bottom
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "execute", 
					Size = UDim2.new(0, 200, 0, 50), 
					Text = "Execute", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(0, 5), 
						Name = "corner"
					})
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "loadToEditor", 
					Size = UDim2.new(0, 200, 0, 50), 
					Text = "Load to Editor", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(0, 5), 
						Name = "corner"
					})
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "saveScript", 
					Size = UDim2.new(0, 200, 0, 50), 
					Text = "Save Script", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(0, 5), 
						Name = "corner"
					})
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "cancel", 
					Size = UDim2.new(0, 200, 0, 50), 
					Text = "Cancel", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(0, 5), 
						Name = "corner"
					})
				})
			}),
			instanceUtils:Create("ImageLabel", { 
				AnchorPoint = Vector2.new(1, 0), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Image = "", 
				Name = "icon", 
				Position = UDim2.new(1, -30, 0, 20), 
				Size = UDim2.new(0, 100, 1, -158)
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 5), 
					Name = "corner"
				}),
				instanceUtils:Create("UIAspectRatioConstraint", { 
					AspectRatio = 16 / 9, 
					AspectType = Enum.AspectType.ScaleWithParentSize, 
					DominantAxis = Enum.DominantAxis.Height, 
					Name = "aspectRatio"
				})
			}),
			instanceUtils:Create("TextLabel", { 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "text", 
				Position = UDim2.new(0, 30, 0, 40), 
				Size = UDim2.new(1, -232, 0, 0), 
				Text = "", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextLabel", { 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "views", 
				Position = UDim2.new(0, 30, 0, 70), 
				RichText = true, 
				Size = UDim2.new(1, -232, 0, 0), 
				Text = "<font weight=\"bold\">Views:</font>", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextLabel", { 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "updatedAt", 
				Position = UDim2.new(0, 30, 0, 90), 
				RichText = true, 
				Size = UDim2.new(1, -232, 0, 0), 
				Text = "<font weight=\"bold\">Updated:</font>", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("UIAspectRatioConstraint", { 
				AspectRatio = 480 / 244, 
				Name = "aspectRatio"
			})
		});

		base.buttons.execute.MouseButton1Click:Connect(function()
			globalScriptSelection:Hide();
			internalUtils:Execute(globalScriptSelection.selectedScript.script);
		end);

		base.buttons.loadToEditor.MouseButton1Click:Connect(function()
			if tabSystem == nil then
				tabSystem = framework.data.tabSystem;
			end
			tabSystem:Add(globalScriptSelection.selectedScript.title, globalScriptSelection.selectedScript.script);
			globalScriptSelection:Hide();
		end);

		base.buttons.saveScript.MouseButton1Click:Connect(function()
			savedScripts:Add(globalScriptSelection.selectedScript.title, "", globalScriptSelection.selectedScript.script);
			globalScriptSelection:Hide();
		end);

		base.buttons.cancel.MouseButton1Click:Connect(function()
			globalScriptSelection:Hide();
		end);

		return base;
	end

	--[[ Module ]]--

	function globalScriptSelection:CreateUI(gui: ScreenGui)
		if self.frame == nil then
			self.frame = createUI(gui);
		end
	end

	function globalScriptSelection:Show(scriptResult: {any})
		self.selectedScript = scriptResult;
		self.frame.icon.Image = string.format("https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid=%d&fmt=png&wd=1920&ht=1080", scriptResult.isUniversal and 4483381587 or scriptResult.game.gameId);
		self.frame.text.Text = scriptResult.title;
		self.frame.views.Text = "<font weight=\"bold\">Views:</font> " .. mathsUtils:FormatAsLiteralCount(scriptResult.views);
		self.frame.updatedAt.Text = "<font weight=\"bold\">Updated:</font> " .. DateTime.fromIsoDate(scriptResult.updatedAt or scriptResult.createdAt):FormatLocalTime("ll", "en-us");
		self.frame.Visible = true;
	end

	function globalScriptSelection:Hide()
		self.frame.Visible = false;
	end

	framework.popups.globalScriptSelection = globalScriptSelection;
end

do
	--[[ Variables ]]--

	local userSettings = framework.data.userSettings;
	local signal = framework.dependencies.signal;
	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;

	local textService = cloneref(game:GetService("TextService"));

	local dropdown = {
		selectedDropdown = nil,
		selectedItem = nil,
		onDropdownChanged = signal.new(),
		onSelectionChanged = signal.new()
	};

	--[[ Functions ]]--

	local function createItem(title: string)
		return instanceUtils:Create("TextButton", { 
			AutoButtonColor = false, 
			BackgroundColor3 = Color3.fromHex("3a3a4a"), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
			FontSize = Enum.FontSize.Size14, 
			Name = stringUtils:ConvertToCamelCase(title),  
			Parent = dropdown.frame.container, 
			Position = UDim2.new(1, -75, 1, -75), 
			Size = UDim2.new(1, -4, 0, 28), 
			Text = title, 
			TextColor3 = Color3.fromHex("9fa4ba"), 
			TextSize = 14
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 4), 
				Name = "corner"
			}),
			instanceUtils:Create("UIPadding", { 
				Name = "padding", 
				PaddingLeft = UDim.new(0, 10), 
				PaddingRight = UDim.new(0, 10)
			})
		});
	end

	local function toggleItemSelection(item: TextButton, selected: boolean)
		instanceUtils:Tween(item, 0.25, {
			BackgroundTransparency = selected and 0 or 1,
			TextColor3 = Color3.fromHex(selected and "ffffff" or "9fa4ba")
		});
	end

	local function createUI(directory: Instance): Instance
		return instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(1, 0), 
			BackgroundColor3 = Color3.fromHex("202028"), 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = "dropdown", 
			Parent = directory, 
			Position = UDim2.new(1, -22, 0, 128), 
			Size = UDim2.new(0, 180, 0, 142)
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 6), 
				Name = "corner"
			}),
			instanceUtils:Create("UIStroke", { 
				Color = Color3.fromHex("3a3a4a"), 
				Name = "stroke", 
				Thickness = 2
			}),
			instanceUtils:Create("ScrollingFrame", { 
				Active = true, 
				AnchorPoint = Vector2.new(1, 0.5), 
				AutomaticCanvasSize = Enum.AutomaticSize.Y, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "container", 
				Position = UDim2.new(1, -2, 0.5, 0), 
				ScrollBarImageColor3 = Color3.fromHex("53536b"), 
				ScrollBarThickness = 4, 
				ScrollingDirection = Enum.ScrollingDirection.Y, 
				Size = UDim2.new(1, -8, 1, -12), 
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
			}, {
				instanceUtils:Create("UIListLayout", { 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			})
		});
	end

	local function clearDropdown()
		for i, v in dropdown.frame.container:GetChildren() do
			if v:IsA("TextButton") then
				v:Destroy();
			end
		end
	end

	--[[ Module ]]--

	function dropdown:CreateUI(gui: ScreenGui)
		if self.frame == nil then
			self.frame = createUI(gui);
		end
	end

	function dropdown:Show(item: {any}, adornee: GuiBase2d)
		clearDropdown();
		self.selectedDropdown = item.title;
		self.onDropdownChanged:Fire(item.title);

		if self.adornConnection then
			self.adornConnection:Disconnect();
		end

		do
			local bottomRight = adornee.AbsolutePosition + adornee.AbsoluteSize;
			self.frame.Position = UDim2.new(0, bottomRight.X, 0, bottomRight.Y + 44);

			self.adornConnection = adornee:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				bottomRight = adornee.AbsolutePosition + adornee.AbsoluteSize;
				self.frame.Position = UDim2.new(0, bottomRight.X, 0, bottomRight.Y + 44);
			end);
		end

		for i, v in item.items do
			local currentItem = createItem(v);
			if v == item.value then
				toggleItemSelection(currentItem, true);
				self.selectedItem = currentItem;
			end

			currentItem.MouseButton1Click:Connect(function()
				toggleItemSelection(self.selectedItem, false);
				toggleItemSelection(currentItem, true);
				self.selectedItem = currentItem;
				self.onSelectionChanged:Fire(v);
			end);
		end

		self.frame.Visible = true;
	end

	function dropdown:Hide()
		clearDropdown();
		self.selectedDropdown = nil;
		self.selectedItem = nil;
		self.onDropdownChanged:Fire();
		self.frame.Visible = false;
	end

	framework.popups.dropdown = dropdown;
end

do
	--[[ Variables ]]--

	local savedScripts = framework.data.savedScripts;
	local instanceUtils = framework.dependencies.utils.instance;

	local saveCurrentTab = {};

	--[[ Functions ]]--

	local function createUI(directory: Instance): Instance
		local base = instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0.5, 0.5), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = "saveCurrentTab", 
			Parent = directory, 
			Position = UDim2.new(0.5, 0, 0.5, 0), 
			Size = UDim2.new(0.6, 0, 0.4, 100), 
			Visible = false
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 5), 
				Name = "corner"
			}),
			instanceUtils:Create("UIStroke", { 
				Color = Color3.fromHex("202028"), 
				Name = "stroke", 
				Thickness = 2
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "buttons", 
				Position = UDim2.new(0.5, 0, 1, -30), 
				Size = UDim2.new(1, -60, 0, 0)
			}, {
				instanceUtils:Create("UIGridLayout", { 
					CellPadding = UDim2.new(0, 18, 0, 16), 
					CellSize = UDim2.new(0.5, -9, 0, 36), 
					Name = "grid", 
					SortOrder = Enum.SortOrder.LayoutOrder, 
					VerticalAlignment = Enum.VerticalAlignment.Bottom
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "saveScript", 
					Size = UDim2.new(0, 200, 0, 50), 
					Text = "Save Script", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(0, 5), 
						Name = "corner"
					})
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "cancel", 
					Size = UDim2.new(0, 200, 0, 50), 
					Text = "Cancel", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(0, 5), 
						Name = "corner"
					})
				})
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "text", 
				Position = UDim2.new(0.5, 0, 0, 40), 
				Size = UDim2.new(1, -60, 0, 0), 
				Text = "Script 1", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "currentTab", 
				Position = UDim2.new(0.5, 0, 0, 20), 
				Size = UDim2.new(1, -60, 0, 0), 
				Text = "Current Tab:", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextBox", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				BackgroundColor3 = Color3.fromHex("202028"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "title", 
				PlaceholderText = "Title...", 
				Position = UDim2.new(0.5, 0, 1, -125), 
				Size = UDim2.new(1, -62, 0, 32), 
				Text = "", 
				TextColor3 = Color3.fromHex("9fa4ba"), 
				TextSize = 14, 
				TextTruncate = Enum.TextTruncate.AtEnd
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 6), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 10), 
					PaddingRight = UDim.new(0, 10)
				}),
				instanceUtils:Create("UIStroke", { 
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
					Color = Color3.fromHex("3a3a4a"), 
					Name = "stroke"
				})
			}),
			instanceUtils:Create("TextBox", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				BackgroundColor3 = Color3.fromHex("202028"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "description", 
				PlaceholderText = "Description...", 
				Position = UDim2.new(0.5, 0, 1, -79), 
				Size = UDim2.new(1, -62, 0, 32), 
				Text = "", 
				TextColor3 = Color3.fromHex("9fa4ba"), 
				TextSize = 14, 
				TextTruncate = Enum.TextTruncate.AtEnd
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 6), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 10), 
					PaddingRight = UDim.new(0, 10)
				}),
				instanceUtils:Create("UIStroke", { 
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
					Color = Color3.fromHex("3a3a4a"), 
					Name = "stroke"
				})
			}),
			instanceUtils:Create("UISizeConstraint", { 
				MaxSize = Vector2.new(600, math.huge), 
				Name = "sizeConstraint"
			}),
			instanceUtils:Create("UIAspectRatioConstraint", { 
				AspectRatio = 480 / 244, 
				Name = "aspectRatio"
			})
		});

		base.buttons.saveScript.MouseButton1Click:Connect(function()
			local title = base.title.Text;
			if #title > 0 then
				savedScripts:Add(title, base.description.Text, saveCurrentTab.selectedTab.content);
				saveCurrentTab:Hide();
			end
		end);

		base.buttons.cancel.MouseButton1Click:Connect(function()
			saveCurrentTab:Hide();
		end);

		return base;
	end

	--[[ Module ]]--

	function saveCurrentTab:CreateUI(gui: ScreenGui)
		if self.frame == nil then
			self.frame = createUI(gui);
		end
	end

	function saveCurrentTab:Show(selectedTab: {any})
		self.selectedTab = selectedTab;
		self.frame.text.Text = selectedTab.title;
		self.frame.title.Text = selectedTab.title;
		self.frame.Visible = true;
	end

	function saveCurrentTab:Hide()
		self.frame.Visible = false;
	end

	framework.popups.saveCurrentTab = saveCurrentTab;
end

do
	--[[ Module ]]--

	local popups = {
		cache = {}
	};

	function popups:RegisterGUI(gui: ScreenGui)
		self.gui = gui;
	end

	function popups:Show(name: string, ...)
		local module = self.cache[name];
		if module == nil then
			module = framework["popups." .. name];
			module:CreateUI(self.gui);
			self.cache[name] = module;
		end
		module:Show(...);
	end

	function popups:Hide(name: string,  ...)
		local module = self.cache[name];
		if module then
			module:Hide(...);
		end
	end

	framework.popups.popups = popups;
end

do
	--[[ Variables ]]--

	local textButton = framework.components.base.textButton;
	local savedScripts = framework.data.savedScripts;
	local instanceUtils = framework.dependencies.utils.instance;
	local internalUtils = framework.dependencies.utils.internal;
	local stringUtils = framework.dependencies.utils.string;
	local tabSystem;

	--[[ Functions ]]--

	local function createSavedScript(scriptData: {any}): Instance
		return instanceUtils:Create("Frame", { 
			BackgroundColor3 = Color3.fromHex("202028"), 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = stringUtils:ConvertToCamelCase(scriptData.title), 
			Size = UDim2.new(1, -4, 0, 82)
		}, {
			instanceUtils:Create("UICorner", { 
				Name = "corner"
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "text", 
				Position = UDim2.new(0.5, 0, 0.5, -2), 
				Size = UDim2.new(1, -32, 0, 0), 
				Text = scriptData.title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(1, 1), 
				AutomaticSize = Enum.AutomaticSize.X, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "buttons", 
				Position = UDim2.new(1, -8, 1, -8), 
				Size = UDim2.new(0, 0, 0, 30)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				}),
				textButton({
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					Name = "execute",
					Text = "Execute"
				}),
				textButton({
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					Name = "loadToEditor",
					Text = "Load to Editor"
				}),
				textButton({
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					Name = "delete",
					Text = "Delete"
				})
			}),
			instanceUtils:Create("TextButton", { 
				AnchorPoint = Vector2.new(1, 0), 
				AutoButtonColor = false, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "autoExecute", 
				Position = UDim2.new(1, -8, 0, 8), 
				Size = UDim2.new(0, 160, 0, 28), 
				Text = "", 
				TextColor3 = Color3.fromHex("000000"), 
				TextSize = 14
			}, {
				instanceUtils:Create("TextLabel", { 
					BackgroundColor3 = Color3.fromHex("ffffff"), 
					BackgroundTransparency = 1, 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size18, 
					Name = "text", 
					Size = UDim2.new(1, 0, 1, 0), 
					Text = "Auto Execute", 
					TextColor3 = Color3.fromHex("9fa4ba"), 
					TextSize = 16, 
					TextWrap = true, 
					TextWrapped = true, 
					TextXAlignment = Enum.TextXAlignment.Left
				}),
				instanceUtils:Create("Frame", { 
					AnchorPoint = Vector2.new(1, 0.5), 
					BackgroundColor3 = Color3.fromHex("ffffff"), 
					BackgroundTransparency = 1, 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					Name = "indicator", 
					Position = UDim2.new(1, -2, 0.5, 0), 
					Size = UDim2.new(0, 42, 0, 24)
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(1, 0), 
						Name = "corner"
					}),
					instanceUtils:Create("UIStroke", { 
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
						Color = scriptData.autoExecute and Color3.fromRGB(235, 69, 69) or Color3.fromRGB(58, 58, 74), 
						Name = "stroke", 
						Thickness = 2
					}),
					instanceUtils:Create("Frame", { 
						AnchorPoint = Vector2.new(0.5, 0.5), 
						BackgroundColor3 = scriptData.autoExecute and Color3.fromRGB(235, 69, 69) or Color3.fromRGB(58, 58, 74), 
						BorderColor3 = Color3.fromHex("000000"), 
						BorderSizePixel = 0, 
						Name = "dot", 
						Position = UDim2.new(0.5, scriptData.autoExecute and 9 or -9, 0.5, 0), 
						Size = UDim2.new(0, 18, 0, 18)
					}, {
						instanceUtils:Create("UICorner", { 
							CornerRadius = UDim.new(1, 0), 
							Name = "corner"
						})
					})
				})
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "description", 
				Position = UDim2.new(0.5, 0, 0.5, 2), 
				Size = UDim2.new(1, -32, 0, 0), 
				Text = scriptData.description, 
				TextColor3 = Color3.fromHex("9fa4ba"), 
				TextSize = 14, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left
			})
		});
	end

	--[[ Module ]]--

	local savedScript = {};
	savedScript.__index = savedScript;

	function savedScript.new(scriptData: {any})
		local newSavedScript = setmetatable({
			scriptData = scriptData,
			instance = createSavedScript(scriptData)
		}, savedScript);

		newSavedScript.instance.buttons.execute.MouseButton1Click:Connect(function()
			internalUtils:Execute(scriptData.content);
		end);

		newSavedScript.instance.buttons.loadToEditor.MouseButton1Click:Connect(function()
			if tabSystem == nil then
				tabSystem = framework.data.tabSystem;
			end
			tabSystem:Add(scriptData.title, scriptData.content);
		end);

		newSavedScript.instance.buttons.delete.MouseButton1Click:Connect(function()
			savedScripts:Remove(scriptData.index);
		end);

		if scriptData.autoExecute then
			newSavedScript:ToggleAutomaticExecution(true);
		end

		scriptData.onAutoExecuteToggled:Connect(function(state: boolean)
			newSavedScript:ToggleAutomaticExecution(state);
		end);

		newSavedScript.instance.autoExecute.MouseButton1Click:Connect(function()
			savedScripts:ToggleAutomaticExecution(scriptData.index, not scriptData.autoExecute);
		end);

		return newSavedScript;	
	end

	function savedScript:ToggleAutomaticExecution(state: boolean)
		instanceUtils:Tween(self.instance.autoExecute.indicator.dot, 0.2, {
			BackgroundColor3 = state and Color3.fromRGB(235, 69, 69) or Color3.fromHex("3a3a4a"),
			Position = UDim2.new(0.5, state and 9 or -9, 0.5, 0)
		});
		instanceUtils:Tween(self.instance.autoExecute.indicator.stroke, 0.2, {
			Color = state and Color3.fromRGB(235, 69, 69) or Color3.fromHex("3a3a4a")
		});
	end

	framework.pages.localScripts.savedScript = savedScript;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local internalUtils = framework.dependencies.utils.internal;
	local stringUtils = framework.dependencies.utils.string;

	--[[ Module ]]--

	framework.pages.localScripts.builtInScript = (function(builtInScript: {any})
		local base = instanceUtils:Create("ImageLabel", { 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Image = builtInScript.icon, 
			ImageTransparency = 0.5, 
			Name = stringUtils:ConvertToCamelCase(builtInScript.title), 
			Size = UDim2.new(1, 0, 1, 0)
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 5), 
				Name = "corner"
			}),
			instanceUtils:Create("TextButton", { 
				AnchorPoint = Vector2.new(1, 1), 
				AutoButtonColor = false, 
				BackgroundColor3 = Color3.fromHex("eb4545"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				Name = "execute", 
				Position = UDim2.new(1, -10, 1, -10), 
				Size = UDim2.new(0, 40, 0, 40), 
				Text = ""
			}, {
				instanceUtils:Create("UICorner", { 
					Name = "corner"
				}),
				instanceUtils:Create("ImageLabel", { 
					AnchorPoint = Vector2.new(0.5, 0.5), 
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					Image = "rbxassetid://13075469149", 
					Name = "icon", 
					Position = UDim2.new(0.5, 0, 0.5, 0), 
					Size = UDim2.new(0, 18, 0, 18)
				})
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "title", 
				Position = UDim2.new(0.5, 0, 0, 14), 
				Size = UDim2.new(1, -28, 0, 0), 
				Text = builtInScript.title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0, 1), 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "description", 
				Position = UDim2.new(0, 14, 1, -14), 
				Size = UDim2.new(1, -70, 1, -52), 
				Text = builtInScript.description, 
				TextColor3 = Color3.fromHex("c8c8c8"), 
				TextSize = 13, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			})
		});

		base.execute.MouseButton1Click:Connect(function()
			internalUtils:Execute(builtInScript.content);
		end);

		return base;
	end);
end

do
	--[[ Variables ]]--

	local savedScripts = framework.data.savedScripts;
	local textButton = framework.components.base.textButton;
	local instanceUtils = framework.dependencies.utils.instance;
	local builtInScript = framework.pages.localScripts.builtInScript;
	local savedScript = framework.pages.localScripts.savedScript;

	local map = {};
	local savedScriptMap = {};

	--[[ Functions ]]--

	local function createUI(directory: Instance): Instance
		return instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0, 1), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Name = "localScripts", 
			Parent = directory, 
			Position = UDim2.new(1, 0, 1, 0), 
			Size = UDim2.new(1, 0, 1, -36)
		}, {
			instanceUtils:Create("ScrollingFrame", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticCanvasSize = Enum.AutomaticSize.X, 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "tabButtons", 
				Position = UDim2.new(0.5, 0, 0, 10), 
				ScrollBarImageColor3 = Color3.fromHex("515158"), 
				ScrollBarThickness = 4, 
				ScrollingDirection = Enum.ScrollingDirection.X, 
				Size = UDim2.new(1, -20, 0, 40)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				}),
				textButton({
					BackgroundColor3 = Color3.fromRGB(58, 58, 74), 
					Name = "builtInLibrary", 
					Text = "Built-in Library",
					TextColor3 = Color3.fromRGB(159, 164, 186)
				}),
				textButton({
					BackgroundColor3 = Color3.fromRGB(58, 58, 74), 
					Name = "savedScripts", 
					Text = "Saved Scripts",
					TextColor3 = Color3.fromRGB(159, 164, 186)
				})
			}),
			instanceUtils:Create("Folder", { 
				Name = "tabs"
			}, {
				instanceUtils:Create("ScrollingFrame", { 
					AnchorPoint = Vector2.new(0.5, 1), 
					AutomaticCanvasSize = Enum.AutomaticSize.Y, 
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					CanvasSize = UDim2.new(0, 0, 0, 0), 
					Name = "builtInLibrary", 
					Position = UDim2.new(0.5, 0, 1, 0), 
					ScrollBarImageColor3 = Color3.fromHex("191923"), 
					ScrollBarThickness = 4, 
					Size = UDim2.new(1, -28, 1, -60), 
					VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
				}, {
					instanceUtils:Create("UIGridLayout", { 
						CellPadding = UDim2.new(0, 12, 0, 12), 
						CellSize = UDim2.new(0.333, -12, 0.3, 50), 
						HorizontalAlignment = Enum.HorizontalAlignment.Center, 
						Name = "grid", 
						SortOrder = Enum.SortOrder.LayoutOrder
					})
				}),
				instanceUtils:Create("ScrollingFrame", { 
					AnchorPoint = Vector2.new(0, 1), 
					AutomaticCanvasSize = Enum.AutomaticSize.Y, 
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					CanvasSize = UDim2.new(0, 0, 0, 0), 
					Name = "savedScripts", 
					Position = UDim2.new(0, 14, 1, 0), 
					ScrollBarImageColor3 = Color3.fromHex("191923"), 
					ScrollBarThickness = 4, 
					Size = UDim2.new(1, -24, 1, -60), 
					VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar, 
					Visible = false
				}, {
					instanceUtils:Create("UIListLayout", { 
						Name = "list", 
						Padding = UDim.new(0, 12), 
						SortOrder = Enum.SortOrder.LayoutOrder
					})
				})
			})
		});
	end

	--[[ Module ]]--

	local localScripts = {
		title = "Local Scripts",
		icon = "rbxassetid://11558196718",
		selected = nil
	};

	function localScripts:Initialize(directory: Instance)
		self.base = createUI(directory);

		map[self.base.tabButtons.builtInLibrary] = self.base.tabs.builtInLibrary;
		map[self.base.tabButtons.savedScripts] =self. base.tabs.savedScripts;

		for i, v in framework.data.builtInScripts do
			builtInScript(v).Parent = self.base.tabs.builtInLibrary;
		end

		for i, v in savedScripts.cache do
			self:AddSavedScript(v);
		end

		savedScripts.onScriptAdded:Connect(function(newScript)
			self:AddSavedScript(newScript);
		end);

		savedScripts.onScriptRemoved:Connect(function(oldScript)
			local oldSavedScript = savedScriptMap[oldScript];
			if oldSavedScript then
				oldSavedScript.instance:Destroy();
			end
		end);

		for i, v in map do
			i.MouseButton1Click:Connect(function()
				self:Select(i);
			end);
		end

		self:Select(self.base.tabButtons.builtInLibrary);
		return self.base;
	end

	function localScripts:AddSavedScript(newScript: {any})
		local newSavedScript = savedScript.new(newScript);
		savedScriptMap[newScript] = newSavedScript;
		newSavedScript.instance.Parent = self.base.tabs.savedScripts;
	end

	function localScripts:Select(button: TextButton)
		if self.selected then
			if self.selected == button then
				return;
			end
			map[self.selected].Visible = false;
			instanceUtils:Tween(self.selected, 0.2, {
				BackgroundColor3 = Color3.fromRGB(58, 58, 74),
				TextColor3 = Color3.fromRGB(159, 164, 186)
			});
		end
		self.selected = button;
		map[button].Visible = true;
		instanceUtils:Tween(self.selected, 0.2, {
			BackgroundColor3 = Color3.fromRGB(235, 69, 69),
			TextColor3 = Color3.fromRGB(255, 255, 255)
		});
	end

	framework.pages.localScripts.localScripts = localScripts;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;

	local colourCodes = {
		[Enum.MessageType.MessageOutput] = "69b397",
		[Enum.MessageType.MessageInfo] = "81a6da",
		[Enum.MessageType.MessageWarning] = "e0ba91",
		[Enum.MessageType.MessageError] = "eb4545"
	};

	local base;

	--[[ Functions ]]--

	local function createUI(directory: Instance): Instance
		return instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0, 1), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Name = "console", 
			Parent = directory, 
			Position = UDim2.new(1, 0, 1, 0), 
			Size = UDim2.new(1, 0, 1, -36)
		}, {
			instanceUtils:Create("ScrollingFrame", { 
				Active = true, 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticCanvasSize = Enum.AutomaticSize.XY, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "content", 
				Position = UDim2.new(0.5, 0, 0, 0), 
				ScrollBarImageColor3 = Color3.fromHex("191923"), 
				ScrollBarThickness = 4, 
				Size = UDim2.new(1, -28, 1, -14)
			}, {
				instanceUtils:Create("UIListLayout", { 
					Name = "list", 
					Padding = UDim.new(0, 4), 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(1, 1), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "buttons", 
				Position = UDim2.new(1, -25, 1, -25), 
				Size = UDim2.new(1, -50, 0, 50)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					HorizontalAlignment = Enum.HorizontalAlignment.Right, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				}),
				instanceUtils:Create("TextButton", { 
					AutoButtonColor = false, 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					Name = "clear", 
					Size = UDim2.new(0, 50, 0, 50), 
					Text = "", 
					TextColor3 = Color3.fromHex("1b2a35"),
					MouseButton1Click = function()
						for i, v in base.content:GetChildren() do
							if not v:IsA("UIListLayout") then
								v:Destroy();
							end
						end
					end
				}, {
					instanceUtils:Create("UICorner", { 
						Name = "corner"
					}),
					instanceUtils:Create("ImageLabel", { 
						AnchorPoint = Vector2.new(0.5, 0.5), 
						BackgroundTransparency = 1, 
						BorderSizePixel = 0, 
						Image = "rbxassetid://14808219001", 
						ImageColor3 = Color3.fromHex("9fa4ba"), 
						Name = "icon", 
						Position = UDim2.new(0.5, 0, 0.5, 0), 
						Size = UDim2.new(0, 28, 0, 28)
					})
				})
			})
		});
	end

	local function insertItem(message: string, messageType: Enum.MessageType)
		local timestamp = tick();

		instanceUtils:Create("TextLabel", { 
			AutomaticSize = Enum.AutomaticSize.XY, 
			BackgroundTransparency = 1, 
			FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal), 
			FontSize = Enum.FontSize.Size18, 
			Name = timestamp, 
			Parent = base.content,
			Position = UDim2.new(0, 48, 0, 0), 
			RichText = true, 
			Text = string.format("<font color=\"#%s\">[%d]</font> %s", colourCodes[messageType], timestamp, message), 
			TextColor3 = Color3.fromHex("9fa4ba"), 
			TextSize = 16, 
			TextXAlignment = Enum.TextXAlignment.Left, 
			TextYAlignment = Enum.TextYAlignment.Top
		});
	end

	--[[ Module ]]--

	local console = {
		title = "Console",
		icon = "rbxassetid://15761117362"
	};

	function console:Initialize(directory: Instance)
		base = createUI();

		cloneref(game:GetService("LogService")).MessageOut:Connect(insertItem);

		return base;
	end

	framework.pages.console.console = console;
end

do
	--[[ Variables ]]--

	local internalUtils = framework.dependencies.utils.internal;
	local userSettings = framework.data.userSettings;
	local cache;

	local httpService = cloneref(game:GetService("HttpService"));
	local teleportService = cloneref(game:GetService("TeleportService"));
	local userInputService = cloneref(game:GetService("UserInputService"));

	local player = cloneref(game:GetService("Players")).LocalPlayer;
	local char, hum, root;

	local connections = {};
	local threads = {};

	--[[ Functions ]]--

	local function getFlagFromLink(link: string)
		local value = cache;
		for i, v in string.split(link, ".") do
			value = value[v];
		end
		return value;
	end

	local function registerCharacter(character: Instance)
		-- SPDM | Error prevention checks
		if not cache.player then
			cache.player = {}
		end

		if not cache.player.walkSpeed then
			cache.player.walkSpeed = {}
		end

		if not cache.player.jumpPower then
			cache.player.jumpPower = {}
		end

		char, hum, root = character, character:WaitForChild("Humanoid", 5), character:WaitForChild("HumanoidRootPart", 5);
		if hum and root then
			if cache.player.walkSpeed.enabled and cache.player.walkSpeed.value then
				hum.WalkSpeed = cache.player.walkSpeed.value;
			end
			if cache.player.jumpPower.enabled and cache.player.jumpPower.value then
				hum.WalkSpeed = cache.player.jumpPower.value;
			end

			hum.Died:Connect(function()
				char, hum, root = nil, nil, nil;
			end);
		end
	end

	local function joinServer(searchPriority: string?, id: number?)
		local jobId = id;
		if jobId == nil then
			if searchPriority == "Best Ping" or searchPriority == "Random" then
				local servers = {};
				local res, cursor, count = nil, "", 0;
				repeat
					res = internalUtils:Request(string.format("https://games.roblox.com/v1/games/%d/servers/0?&excludeFullGames=true&cursor=%s", game.PlaceId, cursor));
					if res then
						for i, v in httpService:JSONDecode(res).data do
							if v.id ~= game.JobId then
								servers[#servers + 1] = v;
							end
						end
						cursor = res.nextPageCursor;
						count = count + 1;
					end
				until res == false or cursor == nil or count >= 10;
				if searchPriority == "Ping" then
					table.sort(servers, function(a, b)
						return a.ping < b.ping;
					end);
					jobId = servers[1] and servers[1].id;
				else
					jobId = servers[1] and servers[math.random(1, #servers)].id;
				end
			else
				local res = internalUtils:Request(string.format("https://games.roblox.com/v1/games/%d/servers/0?sortOrder=%d&excludeFullGames=true&limit=10", game.PlaceId, searchPriority == "Most Players" and 2 or 1));
				if res then
					for i, v in httpService:JSONDecode(res).data do
						if v.id ~= game.JobId then
							jobId = v.id;
							break;
						end
					end
				end
			end
		end
		if jobId then
			teleportService:TeleportToPlaceInstance(game.PlaceId, jobId);
		else
			cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
				Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
				Text = "No suitable servers found"
			});
		end
	end

	--[[ Setup ]]--

	player.CharacterAdded:Connect(registerCharacter);

	--[[ Module ]]--

	local map = {
		{
			title = "Executor",
			items = { -- SPDM Team | Opening Mode Setting
				{
					title = "Opening Mode",
					linkedSetting = "executor.openingMode",
					optionType = "dropdown",
					items = { "Floating Icon", "Edge Swipe", "Invisible Edge Swipe" },
					value = "Floating Icon"
				},
				{ -- SPDM Team | Show Particles Setting
					title = "Show Floating Icon Particles",
					linkedSetting = "executor.showParticles",
					optionType = "toggle",
					state = true
				},
				{
					optionType = "separator"
				},
				{
					title = "Auto Execute",
					linkedSetting = "executor.autoExecute",
					optionType = "toggle",
					state = true
				},
				{
					title = "Auto Save Tabs",
					linkedSetting = "executor.autoSaveTabs",
					optionType = "toggle",
					state = false,
					callback = function(state)
						if state == false and isfile and isfile("codexTabs.json") then
							delfile("codexTabs.json");
						end
					end
				},
				{
					optionType = "separator"
				},
				{
					title = "Unlock FPS",
					linkedSetting = "executor.fps.unlocked",
					optionType = "toggle",
					state = false,
					callback = function(state)
						setfpscap(state and (cache.executor.fps.vSync and getfpscap() or cache.executor.fps.value) or 60);
					end
				},
				{
					title = "V-Sync",
					linkedSetting = "executor.fps.vSync",
					optionType = "toggle",
					state = false,
					callback = function(state)
						if cache.executor.fps.unlocked then
							setfpscap(state and getfpsmax() or cache.executor.fps.value);
						end
					end
				},
				{
					title = "FPS Value",
					linkedSetting = "executor.fps.value",
					optionType = "slider",
					min = 1,
					max = 999,
					float = 1,
					callback = function(value)
						if cache.executor.fps.unlocked and not cache.executor.fps.vSync then
							setfpscap(value);
						end
					end
				}
			}
		},
		{
			title = "Player",
			items = {
				{
					title = "WalkSpeed Enabled",
					linkedSetting = "player.walkSpeed.enabled",
					optionType = "toggle",
					state = false,
					callback = function(state)
						if hum then
							hum.WalkSpeed = state and cache.player.walkSpeed.value or 16;
						end
					end
				},
				{
					title = "WalkSpeed Value",
					linkedSetting = "player.walkSpeed.value",
					optionType = "slider",
					min = 16,
					max = 500,
					float = 1,
					callback = function(value)
						if hum and cache.player.walkSpeed.enabled then
							hum.WalkSpeed = value;
						end
					end
				},
				{
					title = "JumpPower Enabled",
					linkedSetting = "player.jumpPower.enabled",
					optionType = "toggle",
					state = false,
					callback = function(state)
						if hum then
							hum.JumpPower = state and cache.player.jumpPower.value or 16;
						end
					end
				},
				{
					title = "JumpPower Value",
					linkedSetting = "player.jumpPower.value",
					optionType = "slider",
					min = 50,
					max = 500,
					float = 1,
					callback = function(value)
						if hum and cache.player.jumpPower.enabled then
							hum.JumpPower = value;
						end
					end
				},
				{
					optionType = "separator"
				},
				{
					title = "Anti AFK",
					linkedSetting = "player.antiAfk",
					optionType = "toggle",
					state = false,
					callback = function(state)
						for i, v in getconnections(player.Idled) do
							if state then
								v:Disable();
							else
								v:Enable();
							end
						end
					end
				}
			}
		},
		{
			title = "Server Hopper",
			items = {
				{
					title = "Server Priority",
					linkedSetting = "serverHop.priority",
					optionType = "dropdown",
					items = { "Most Players", "Least Players", "Best Ping", "Random" }
				},
				{
					title = "Server Hop",
					optionType = "button",
					callback = function()
						joinServer(cache.serverHop.priority);
					end
				},
				{
					title = "Rejoin Current Server",
					optionType = "button",
					callback = function()
						joinServer(nil, game.JobId);
					end
				},
				{
					optionType = "separator"
				},
				{
					title = "Delayed Hop",
					linkedSetting = "serverHop.delayedHop",
					optionType = "toggle",
					state = false,
					callback = function(state)
						if threads.delayedHop then
							task.cancel(threads.delayedHop);
							threads.delayedHop = nil;
						end
						if state then
							local init = tick();
							threads.delayedHop = task.spawn(function()
								local interval = 0;
								repeat task.wait(1)
									interval = tick() - init;
								until interval > cache.serverHop.delay * 60;
								joinServer(cache.serverHop.priority);
							end);
						end
					end
				},
				{
					title = "Delay (Minutes)",
					linkedSetting = "serverHop.delay",
					optionType = "slider",
					min = 1,
					max = 1440,
					float = 1
				}
			}
		}
	};

	--[[ Module ]]--

	local layoutMap = {
		map = map
	};

	function layoutMap:Initialize()
		cache = userSettings.cache;

		for i, v in self.map do
			for i2, v2 in v.items do
				if v2.optionType == "toggle" then
					v2.state = getFlagFromLink(v2.linkedSetting);
				elseif v2.optionType == "slider" then
					v2.value = getFlagFromLink(v2.linkedSetting);
				end
			end
		end

		if player.Character then
			task.spawn(registerCharacter, player.Character);
		end
	end

	framework.pages.exploitSettings.layoutMap = layoutMap;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;

	--[[ Functions ]]--

	local function createSeparator(parent: Instance): Instance
		return instanceUtils:Create("Frame", { 
			BackgroundColor3 = Color3.fromHex("ffffff"), 
			BackgroundTransparency = 1, 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = "separator", 
			Parent = parent, 
			Size = UDim2.new(1, 0, 0, 14)
		}, {
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(0.5, 0.5), 
				BackgroundColor3 = Color3.fromHex("3a3a4a"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "line", 
				Position = UDim2.new(0.5, 0, 0.5, 0), 
				Size = UDim2.new(1, 0, 0, 2)
			}, {
				instanceUtils:Create("UIGradient", { 
					Name = "gradient", 
					Transparency = NumberSequence.new({ 
						NumberSequenceKeypoint.new(0, 1), 
						NumberSequenceKeypoint.new(0.175, 0), 
						NumberSequenceKeypoint.new(0.825, 0), 
						NumberSequenceKeypoint.new(1, 1)
					})
				})
			})
		});
	end

	--[[ Module ]]--

	local separator = {};
	separator.__index = separator;

	function separator.new(separatorData: {any}, parent: Instance)
		return setmetatable({
			instance = createSeparator(parent)
		}, separator);
	end

	framework.pages.exploitSettings.optionTypes.separator = separator;
end

do
	--[[ Variables ]]--

	local userSettings = framework.data.userSettings;
	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;

	--[[ Functions ]]--

	local function createToggle(title: string, parent: Instance): Instance
		return instanceUtils:Create("TextButton", { 
			AutoButtonColor = false, 
			BackgroundColor3 = Color3.fromHex("ffffff"), 
			BackgroundTransparency = 1, 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
			FontSize = Enum.FontSize.Size14, 
			Name = stringUtils:ConvertToCamelCase(title), 
			Parent = parent,
			Size = UDim2.new(1, 0, 0, 36), 
			Text = "", 
			TextColor3 = Color3.fromHex("000000"), 
			TextSize = 14
		}, {
			instanceUtils:Create("TextLabel", { 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "text", 
				Size = UDim2.new(1, 0, 0, 36), 
				Text = title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(1, 0.5), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "indicator", 
				Position = UDim2.new(1, -2, 0.5, 0), 
				Size = UDim2.new(0, 42, 0, 24)
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(1, 0), 
					Name = "corner"
				}),
				instanceUtils:Create("UIStroke", { 
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
					Color = Color3.fromHex("3a3a4a"), 
					Name = "stroke", 
					Thickness = 2
				}),
				instanceUtils:Create("Frame", { 
					AnchorPoint = Vector2.new(0.5, 0.5), 
					BackgroundColor3 = Color3.fromHex("3a3a4a"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					Name = "dot", 
					Position = UDim2.new(0.5, -9, 0.5, 0), 
					Size = UDim2.new(0, 18, 0, 18)
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(1, 0), 
						Name = "corner"
					})
				})
			})
		});
	end

	local function getDeterminingFactors(path: string)
		local dict, key = userSettings.cache, nil;
		for i, v in string.split(path, ".") do
			if key ~= nil then
				dict = dict[key];
			end
			key = v;
		end
		return dict, key;
	end

	--[[ Module ]]--

	local toggle = {};
	toggle.__index = toggle;

	function toggle.new(toggleData: {any}, parent: Instance)
		local newToggle = setmetatable({
			instance = createToggle(toggleData.title or "Unnamed Toggle", parent),
			state = toggleData.state or false,
			linkedSetting = toggleData.linkedSetting,
			callback = toggleData.callback
		}, toggle);

		local determiningDict, determiningKey = getDeterminingFactors(newToggle.linkedSetting);

		userSettings:GetPropertyChangedSignal(newToggle.linkedSetting):Connect(function(state: boolean)
			newToggle:Set(state);
		end);

		newToggle.instance.MouseButton1Click:Connect(function()
			determiningDict[determiningKey] = not determiningDict[determiningKey];
		end);

		if newToggle.state then
			newToggle:Set(true);
		end

		return newToggle;
	end

	function toggle:Set(state: boolean)
		instanceUtils:Tween(self.instance.indicator.dot, 0.2, {
			BackgroundColor3 = state and Color3.fromRGB(235, 69, 69) or Color3.fromHex("3a3a4a"),
			Position = UDim2.new(0.5, state and 9 or -9, 0.5, 0)
		});
		instanceUtils:Tween(self.instance.indicator.stroke, 0.2, {
			Color = state and Color3.fromRGB(235, 69, 69) or Color3.fromHex("3a3a4a")
		});
		if self.callback then
			self.callback(state);
		end
	end

	framework.pages.exploitSettings.optionTypes.toggle = toggle;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;

	--[[ Functions ]]--

	local function createButton(title: string, parent: Instance): Instance
		return instanceUtils:Create("Frame", { 
			BackgroundColor3 = Color3.fromHex("ffffff"), 
			BackgroundTransparency = 1, 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = stringUtils:ConvertToCamelCase(title), 
			Parent = parent, 
			Size = UDim2.new(1, 0, 0, 36)
		}, {
			instanceUtils:Create("TextLabel", { 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "text", 
				Size = UDim2.new(1, 0, 1, 0), 
				Text = title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			instanceUtils:Create("TextButton", { 
				AnchorPoint = Vector2.new(1, 0.5), 
				AutomaticSize = Enum.AutomaticSize.X, 
				BackgroundColor3 = Color3.fromHex("eb4545"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "click", 
				Position = UDim2.new(1, 0, 0.5, 0), 
				Size = UDim2.new(0, 0, 0, 32), 
				Text = "Click Here!", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 6), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 10), 
					PaddingRight = UDim.new(0, 10)
				})
			})
		});
	end

	--[[ Module ]]--

	local button = {};
	button.__index = button;

	function button.new(buttonData: {any}, parent: Instance)
		local newButton = setmetatable({
			instance = createButton(buttonData.title or "Unnamed Button", parent),
			callback = buttonData.callback
		}, button);

		newButton.instance.click.MouseButton1Click:Connect(function()
			if newButton.callback then
				newButton.callback();
			end
		end);

		return newButton;
	end

	framework.pages.exploitSettings.optionTypes.button = button;
end

do
	--[[ Variables ]]--

	local userSettings = framework.data.userSettings;
	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;

	local userInputService = cloneref(game:GetService("UserInputService"));

	--[[ Functions ]]--

	local function createSlider(title: string, parent: Instance): Instance
		return instanceUtils:Create("Frame", { 
			BackgroundColor3 = Color3.fromHex("ffffff"), 
			BackgroundTransparency = 1, 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = stringUtils:ConvertToCamelCase(title), 
			Parent = parent, 
			Size = UDim2.new(1, 0, 0, 60)
		}, {
			instanceUtils:Create("TextLabel", { 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "text", 
				Size = UDim2.new(1, 0, 0, 36), 
				Text = title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			instanceUtils:Create("TextBox", { 
				AnchorPoint = Vector2.new(1, 0), 
				AutomaticSize = Enum.AutomaticSize.X, 
				BackgroundColor3 = Color3.fromHex("3a3a4a"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "input", 
				PlaceholderColor3 = Color3.fromHex("b2b2b2"), 
				PlaceholderText = "...", 
				Position = UDim2.new(1, 0, 0, 0), 
				Size = UDim2.new(0, 0, 0, 36), 
				Text = "", 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 6), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 10), 
					PaddingRight = UDim.new(0, 10)
				})
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				BackgroundColor3 = Color3.fromHex("3a3a4a"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "bar", 
				Position = UDim2.new(0.5, 0, 1, -8), 
				Size = UDim2.new(1, -12, 0, 4)
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(1, 0), 
					Name = "corner"
				}),
				instanceUtils:Create("Frame", { 
					AnchorPoint = Vector2.new(0, 0.5), 
					BackgroundColor3 = Color3.fromHex("eb4545"), 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					Name = "indicator", 
					Position = UDim2.new(0, 0, 0.5, 0), 
					Size = UDim2.new(0, 0, 1, 0)
				}, {
					instanceUtils:Create("UICorner", { 
						CornerRadius = UDim.new(1, 0), 
						Name = "corner"
					}),
					instanceUtils:Create("Frame", { 
						AnchorPoint = Vector2.new(0.5, 0.5), 
						BackgroundColor3 = Color3.fromHex("eb4545"), 
						BorderColor3 = Color3.fromHex("000000"), 
						BorderSizePixel = 0, 
						Name = "dot", 
						Position = UDim2.new(1, 0, 0.5, 0), 
						Size = UDim2.new(0, 12, 0, 12)
					}, {
						instanceUtils:Create("UICorner", { 
							CornerRadius = UDim.new(1, 0), 
							Name = "corner"
						})
					})
				})
			})
		});
	end

	local function getDeterminingFactors(path: string)
		local dict, key = userSettings.cache, nil;
		for i, v in string.split(path, ".") do
			if key ~= nil then
				dict = dict[key];
			end
			key = v;
		end
		return dict, key;
	end

	local function getRoundedValue(input: number, float: number): number
		local bracket = 1 / float;
		return math.round(input * bracket) / bracket;
	end

	--[[ Module ]]--

	local slider = {
		isDragging = false
	};
	slider.__index = slider;

	function slider.new(sliderData: {any}, parent: Instance)
		local newSlider = setmetatable({
			instance = createSlider(sliderData.title or "Unnamed Slider", parent),
			value = sliderData.value or sliderData.min,
			min = sliderData.min,
			max = sliderData.max,
			float = sliderData.float,
			linkedSetting = sliderData.linkedSetting,
			callback = sliderData.callback
		}, slider);

		local determiningDict, determiningKey = getDeterminingFactors(newSlider.linkedSetting);
		local isDragging = false;

		userSettings:GetPropertyChangedSignal(newSlider.linkedSetting):Connect(function(value: number)
			newSlider:Set(value);
		end);

		newSlider.instance.InputBegan:Connect(function(input)
			if slider.isDragging == false and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				slider.isDragging, isDragging = true, true;
				local endedConn; endedConn = input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						endedConn:Disconnect();
						slider.isDragging, isDragging = false, false;
					end
				end);
			end
		end)

		userInputService.InputChanged:Connect(function(input)
			if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local value = newSlider.min + ((newSlider.max - newSlider.min) * ((input.Position.X - newSlider.instance.bar.AbsolutePosition.X) / newSlider.instance.bar.AbsoluteSize.X));
				determiningDict[determiningKey] = math.clamp(getRoundedValue(value, newSlider.float), newSlider.min, newSlider.max);
			end
		end);

		newSlider.instance.input.FocusLost:Connect(function()
			local value = tonumber(newSlider.instance.input.Text);
			if value then
				determiningDict[determiningKey] = math.clamp(getRoundedValue(value, newSlider.float), newSlider.min, newSlider.max);
			end
		end);

		newSlider:Set(newSlider.value);

		return newSlider;
	end

	function slider:Set(value: number)
		instanceUtils:Tween(self.instance.bar.indicator, 0.2, {
			Size = UDim2.new((value - self.min) / (self.max - self.min), 0, 0.5, 0)
		});
		self.instance.input.Text = tostring(value);
		if self.callback then
			self.callback(value);
		end
	end

	framework.pages.exploitSettings.optionTypes.slider = slider;
end

do
	--[[ Variables ]]--

	local userSettings = framework.data.userSettings;
	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;
	local dropdownPopup = framework.popups.dropdown;
	local popups = framework.popups.popups;

	local textService = cloneref(game:GetService("TextService"));

	--[[ Functions ]]--

	local function createDropdown(title: string, default: string, parent: Instance): Instance
		return instanceUtils:Create("Frame", { 
			Active = true, 
			BackgroundColor3 = Color3.fromHex("ffffff"), 
			BackgroundTransparency = 1, 
			BorderColor3 = Color3.fromHex("000000"), 
			BorderSizePixel = 0, 
			Name = stringUtils:ConvertToCamelCase(title), 
			Parent = parent, 
			Selectable = true, 
			Size = UDim2.new(1, 0, 0, 36)
		}, {
			instanceUtils:Create("TextLabel", { 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "text", 
				Size = UDim2.new(1, 0, 0, 36), 
				Text = title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			instanceUtils:Create("TextButton", { 
				Active = false, 
				AnchorPoint = Vector2.new(1, 0.5), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "indicator", 
				Position = UDim2.new(1, -2, 0.5, 0), 
				Selectable = false, 
				Size = UDim2.new(0, 52 + textService:GetTextBoundsAsync(instanceUtils:Create("GetTextBoundsParams", {
					Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
					Text = default,
					Size = 14,
					Width = math.huge
				})).X, 0, 32), 
				Text = ""
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 6), 
					Name = "corner"
				}),
				instanceUtils:Create("UIStroke", { 
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border, 
					Color = Color3.fromHex("3a3a4a"), 
					Name = "stroke", 
					Thickness = 2
				}),
				instanceUtils:Create("TextLabel", { 
					AnchorPoint = Vector2.new(0, 0.5), 
					AutomaticSize = Enum.AutomaticSize.X, 
					BackgroundColor3 = Color3.fromHex("ffffff"), 
					BackgroundTransparency = 1, 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "selected", 
					Position = UDim2.new(0, 8, 0.5, 0), 
					Size = UDim2.new(0, 0, 1, 0), 
					Text = default, 
					TextColor3 = Color3.fromHex("9fa4ba"), 
					TextSize = 14,  
					TextXAlignment = Enum.TextXAlignment.Left
				}),
				instanceUtils:Create("ImageLabel", { 
					AnchorPoint = Vector2.new(1, 0.5), 
					BackgroundColor3 = Color3.fromHex("ffffff"), 
					BackgroundTransparency = 1, 
					BorderColor3 = Color3.fromHex("000000"), 
					BorderSizePixel = 0, 
					Image = "rbxassetid://14967733915", 
					ImageColor3 = Color3.fromHex("9fa4ba"), 
					Name = "icon", 
					Position = UDim2.new(1, -8, 0.5, 0), 
					Size = UDim2.new(0, 24, 0, 24)
				})
			})
		});
	end

	local function getDeterminingFactors(path: string)
		local dict, key = userSettings.cache, nil;
		for i, v in string.split(path, ".") do
			if key ~= nil then
				dict = dict[key];
			end
			key = v;
		end
		return dict, key;
	end

	--[[ Module ]]--

	local dropdown = {};
	dropdown.__index = dropdown;

	function dropdown.new(dropData: {any}, parent: Instance)
		local newDropdown = setmetatable({
			instance = createDropdown(dropData.title or "Unnamed Dropdown", dropData.value, parent),
			title = dropData.title or "Unnamed Dropdown",
			items = dropData.items,
			value = dropData.value or dropData.items[1],
			linkedSetting = dropData.linkedSetting,
			callback = dropData.callback
		}, dropdown);

		local determiningDict, determiningKey = getDeterminingFactors(newDropdown.linkedSetting);

		userSettings:GetPropertyChangedSignal(newDropdown.linkedSetting):Connect(function(value: number)
			newDropdown:Set(value);
		end);

		newDropdown.instance.indicator.MouseButton1Click:Connect(function()
			if dropdownPopup.selectedDropdown == dropData.title then
				popups:Hide("dropdown");
			else
				popups:Show("dropdown", newDropdown, newDropdown.instance.indicator);
				newDropdown.selectionChangedConnection = dropdownPopup.onSelectionChanged:Connect(function(value: string)
					determiningDict[determiningKey] = value;
					task.delay(0.3, function () popups:Hide("dropdown"); end); -- SPDM Team | Auto-close contextmenu
				end);
			end
		end);

		dropdownPopup.onDropdownChanged:Connect(function(value: string?)
			if value and value ~= dropData.title and newDropdown.selectionChangedConnection then
				newDropdown.selectionChangedConnection:Disconnect();
			end
		end);

		newDropdown:Set(newDropdown.value);

		return newDropdown;
	end

	function dropdown:Set(value: string)
		self.value = value;
		self.instance.indicator.selected.Text = value;
		self.instance.indicator.Size = UDim2.new(0, 52 + textService:GetTextBoundsAsync(instanceUtils:Create("GetTextBoundsParams", {
			Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
			Text = value,
			Size = 14,
			Width = math.huge
		})).X, 0, 32);
		if self.callback then
			self.callback(value);
		end
	end

	framework.pages.exploitSettings.optionTypes.dropdown = dropdown;
end

do
	--[[ Variables ]]--

	local textButton = framework.components.base.textButton;
	local instanceUtils = framework.dependencies.utils.instance;
	local stringUtils = framework.dependencies.utils.string;
	local layoutMap = framework.pages.exploitSettings.layoutMap;

	local map = {};

	--[[ Functions ]]--

	local function createUI(directory: Instance): Instance
		return instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0, 1), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Name = "exploitSettings", 
			Parent = directory, 
			Position = UDim2.new(1, 0, 1, 0), 
			Size = UDim2.new(1, 0, 1, -36)
		}, {
			instanceUtils:Create("ScrollingFrame", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticCanvasSize = Enum.AutomaticSize.X, 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "tabButtons", 
				Position = UDim2.new(0.5, 0, 0, 10), 
				ScrollBarImageColor3 = Color3.fromHex("515158"), 
				ScrollBarThickness = 4, 
				ScrollingDirection = Enum.ScrollingDirection.X, 
				Size = UDim2.new(1, -20, 0, 40)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			}),
			instanceUtils:Create("Folder", { 
				Name = "tabs"
			})
		});
	end

	local function createFrame(title: string, directory: Instance)
		return instanceUtils:Create("ScrollingFrame", { 
			AnchorPoint = Vector2.new(0.5, 1), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			CanvasSize = UDim2.new(0, 0, 0, 130), 
			Name = stringUtils:ConvertToCamelCase(title), 
			Parent = directory,
			Position = UDim2.new(0.5, 0, 1, 0), 
			ScrollBarThickness = 2, 
			Size = UDim2.new(1, -40, 1, -50),
			Visible = false
		}, {
			instanceUtils:Create("UIListLayout", { 
				Name = "list", 
				Padding = UDim.new(0, 5), 
				SortOrder = Enum.SortOrder.LayoutOrder
			})
		});
	end

	--[[ Module ]]--

	local exploitSettings = {
		title = "Settings",
		icon = "rbxassetid://11558196447",
		overwritePosition = UDim2.new(0, 0, 1, -66),
		selected = nil
	};

	function exploitSettings:Initialize(directory: Instance)
		self.base = createUI(directory);

		layoutMap:Initialize();
		for i, v in layoutMap.map do
			self:Add(v);
		end

		return self.base;
	end

	function exploitSettings:Add(tab: {any})
		local btn = textButton({
			BackgroundColor3 = Color3.fromRGB(58, 58, 74),
			Name = stringUtils:ConvertToCamelCase(tab.title),
			Text = tab.title,
			TextColor3 = Color3.fromRGB(159, 164, 186),
			Parent = self.base.tabButtons
		});

		local frame = createFrame(tab.title, self.base.tabs);

		btn.MouseButton1Click:Connect(function()
			self:Select(tab);
		end)

		map[tab] = {
			btn = btn,
			frame = frame
		};

		for i, v in tab.items do
			framework["pages.exploitSettings.optionTypes." .. v.optionType].new(v, frame);
		end

		if self.selected == nil then
			self:Select(tab);
		end
	end

	function exploitSettings:Select(tab: {any})
		if self.selected then
			if self.selected == tab then
				return;
			end
			local oldMap = map[self.selected];
			oldMap.frame.Visible = false;
			instanceUtils:Tween(oldMap.btn, 0.2, {
				BackgroundColor3 = Color3.fromRGB(58, 58, 74),
				TextColor3 = Color3.fromRGB(159, 164, 186)
			});
		end
		self.selected = tab;
		local newMap = map[tab];
		newMap.frame.Visible = true;
		instanceUtils:Tween(newMap.btn, 0.2, {
			BackgroundColor3 = Color3.fromRGB(235, 69, 69),
			TextColor3 = Color3.fromRGB(255, 255, 255)
		});
	end

	framework.pages.exploitSettings.exploitSettings = exploitSettings;
end

do
	--[[ Variables ]]--

	local textLabel = framework.components.base.textLabel;
	local internalSettings = framework.data.internalSettings;
	local instanceUtils = framework.dependencies.utils.instance;

	--[[ Functions ]]--

	local function formatChangelog()
		local str = "";
		for i, v in internalSettings.data.changelog do
			str ..= string.format("%s<font color=\"#eb4545\">[%s]</font>\n\n", str == "" and "" or "\n\n", DateTime.fromIsoDate(v.stamp):FormatLocalTime("ll", "en-us"));
			for i2, v2 in v.data do
				str ..= "- " .. v2; -- "â€¢ " ..
				if i2 < #v.data then
					str ..= "\n";
				end
			end
		end
		return str;
	end

	--[[ Module ]]--

	framework.pages.startup.changelog = (function()
		return instanceUtils:Create("Frame", {
			BackgroundTransparency = 1,
			Name = "changelog",
			Position = UDim2.new(0.5, 12, 0.2, 46),
			Size = UDim2.new(0.2, 120, 0.5, 0)
		}, {
			textLabel({
				Text = "Changelog",
				TextColor3 = Color3.fromRGB(159, 164, 186),
				TextSize = 20
			}),
			instanceUtils:Create("ScrollingFrame", {
				AnchorPoint = Vector2.new(0.5, 1),
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				Name = "container",
				Position = UDim2.new(0.5, 0, 1, 0),
				ScrollBarImageColor3 = Color3.fromRGB(15, 15, 21),
				ScrollBarThickness = 4,
				Size = UDim2.new(1, -16, 1, -36),
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
			}, {
				textLabel({
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
					LineHeight = 1.1,
					RichText = true,
					Text = formatChangelog(),
					TextColor3 = Color3.fromRGB(159, 164, 186),
					TextTruncate = Enum.TextTruncate.None,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top
				})
			})
		});
	end);
end

do
	--[[ Variables ]]--

	local textLabel = framework.components.base.textLabel;
	local instanceUtils = framework.dependencies.utils.instance;

	local stepCount = 0;

	--[[ Module ]]--

	local startupStep = {};
	startupStep.__index = startupStep;

	function startupStep.new(startText: string, finishText: string, parent: Instance): {any}
		stepCount += 1;

		local frame = instanceUtils:Create("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Name = stepCount,
			Parent = parent,
			Size = UDim2.new(1, 0, 0, 22)
		}, {
			instanceUtils:Create("ImageLabel", {
				BackgroundTransparency = 1,
				Image = "rbxassetid://14840862230",
				ImageColor3 = Color3.fromRGB(235, 69, 69),
				ImageTransparency = 1,
				Name = "icon",
				Size = UDim2.new(0, 22, 0, 22)
			}),
			textLabel({
				AnchorPoint = Vector2.new(0, 0.5),
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Name = "note",
				Position = UDim2.new(0, 34, 0.5, 0),
				Text = startText,
				TextColor3 = Color3.fromRGB(159, 164, 186),
				TextTransparency = 1
			})
		});

		return setmetatable({
			frame = frame,
			finishText = finishText,
			isFinished = false
		}, startupStep);
	end

	function startupStep:Start(): {any}
		self.tween = instanceUtils:Tween(self.frame.icon, 1, {
			Rotation = 360
		}, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, math.huge);

		instanceUtils:Tween(self.frame.icon, 0.4, {
			ImageTransparency = 0
		});

		instanceUtils:Tween(self.frame.note, 0.4, {
			TextTransparency = 0
		}).Completed:Wait();
		return self;
	end

	function startupStep:Complete(overrideText: string?)
		if self.isFinished then
			return;
		end	
		self.isFinished = true;

		local icon = self.frame.icon;
		local note = self.frame.note;

		instanceUtils:Tween(note, 0.4, {
			TextTransparency = 1
		}).Completed:Connect(function()
			note.Text = overrideText or self.finishText;
			instanceUtils:Tween(note, 0.4, {
				TextTransparency = 0
			});
		end);

		instanceUtils:Tween(icon, 0.4, {
			ImageTransparency = 1
		}).Completed:Wait();
		self.tween:Cancel();
		icon.Image = "rbxassetid://14840859703";
		icon.Rotation = 0;
		instanceUtils:Tween(icon, 0.4, {
			ImageTransparency = 0
		});
	end

	framework.pages.startup.startupStep = startupStep;
end

do
	--[[ Variables ]]--

	local background = framework.components.base.background;
	local textBox = framework.components.base.textBox;
	local textButton = framework.components.base.textButton;
	local textLabel = framework.components.base.textLabel;
	local internalSettings = framework.data.internalSettings;
	local userSettings = framework.data.userSettings;
	local savedScripts = framework.data.savedScripts;
	local tabSystem = framework.data.tabSystem;
	local instanceUtils = framework.dependencies.utils.instance;
	local internalUtils = framework.dependencies.utils.internal;
	local changelog = framework.pages.startup.changelog;
	local startupStep = framework.pages.startup.startupStep;

	local httpService = cloneref(game:GetService("HttpService"));

	local completionSignal;
	local ui;

	--[[ Functions ]]--

	local function checkWhitelist()
		if getgenv then
			return internalUtils:Request("https://api.codex.lol/v1/auth/authenticate", "POST") ~= false;
		end
		return false;
	end

	local function createBasis(directory: Instance)
		local gui = instanceUtils:Create("ScreenGui", {
			Enabled = false,
			IgnoreGuiInset = true,
			Name = "gui",
			ResetOnSpawn = false,
			ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets, -- SPDM Team | Notch-aware UI
			ZIndexBehavior = Enum.ZIndexBehavior.Global
		}, {
			instanceUtils:Create("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(21, 21, 29),
				BackgroundTransparency = 1,
				Name = "background",
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 0
			}),
			instanceUtils:Create("Folder", {
				Name = "tabs"
			})
		});

		local popups = instanceUtils:Create("ScreenGui", {
			Enabled = false,
			IgnoreGuiInset = true,
			Name = "popups",
			ResetOnSpawn = false,
			ScreenInsets = Enum.ScreenInsets.None,
			ZIndexBehavior = Enum.ZIndexBehavior.Global
		});

		gui.Parent = directory;
		popups.Parent = directory;

		return {
			gui = gui,
			popups = popups
		};
	end

	local function doSetup()
		userSettings:Initialize();
		tabSystem:Initialize();
		savedScripts:Initialize();

		if userSettings.cache.executor.autoExecute and isarceusfolder and listarceusfiles and readarceusfile then
			if isarceusfolder("Autoexec") then
				for i, v in listarceusfiles("Autoexec") do
					executecode(readarceusfile(v));
				end
			elseif rconsolewarn then
				rconsolewarn("Autoexecution folder has not been found! Make sure to garant storage permissions.")
			end
		end
	end

	local function changeTab(isMainTab: boolean)
		ui.whitelist.Visible = isMainTab;
		ui.changelog.Visible = isMainTab;
		ui.specialUserInput.Visible = not isMainTab;
		ui.note.Text = isMainTab and "Please complete the whitelist to gain access to Codex" or "Please enter your key to activate your Premium License";
	end

	local function createUI(directory: Instance): ScreenGui
		ui = instanceUtils:Create("ScreenGui", {
			IgnoreGuiInset = true,
			Name = "startup",
			Parent = directory,
			ResetOnSpawn = false,
			ScreenInsets = Enum.ScreenInsets.None,
			ZIndexBehavior = Enum.ZIndexBehavior.Global
		}, {
			background(),
			instanceUtils:Create("ImageButton", { 
				AnchorPoint = Vector2.new(1, 0.5), 
				AutoButtonColor = false, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Image = "rbxassetid://14899492196", 
				Name = "close", 
				Position = UDim2.new(1, -24, 0.2, -20), 
				Size = UDim2.new(0, 28, 0, 28),
				MouseButton1Click = function()
					completionSignal:Fire(false);
				end
			}),
			textLabel({
				AnchorPoint = Vector2.new(0.5, 0.5),
				Name = "title",
				Position = UDim2.new(0.5, 0, 0.2, -20),
				Text = "Codex " .. (isiosdevice() and "iOS" or "Android"),
				TextSize = 24
			}),
			textLabel({
				AnchorPoint = Vector2.new(0.5, 0.5),
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Name = "note",
				Position = UDim2.new(0.5, 0, 0.2, 2),
				Text = "Please complete the whitelist to gain access to Codex",
				TextColor3 = Color3.fromRGB(159, 164, 186)
			}),
			instanceUtils:Create("Frame", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Name = "whitelist",
				Position = UDim2.new(0.5, -12, 0.2, 46),
				Size = UDim2.new(0.2, 120, 0.5, 0)
			}, {
				instanceUtils:Create("Frame", {
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					Name = "process",
					Position = UDim2.new(0.5, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, -36)
				}, {
					instanceUtils:Create("UIListLayout", {
						Name = "list",
						Padding = UDim.new(0, 6),
						SortOrder = Enum.SortOrder.LayoutOrder
					})
				}),
				textButton({
					AnchorPoint = Vector2.new(0.5, 1),
					AutomaticSize = Enum.AutomaticSize.None,
					MouseButton1Click = function()
						if setclipboard then
							local data = internalUtils:Request("https://api.codex.lol/v1/auth/session", "POST");
							if data then
								setclipboard("https://mobile.codex.lol?token=" .. httpService:JSONDecode(data).token);
							end
						end
						cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
							Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
							Text = "Whitelist link has been set to your clipboard."
						});
					end,
					Name = "copyWhitelistLink",
					Position = UDim2.new(0.5, 0, 1, -28),
					Size = UDim2.new(1, 0, 0, 32),
					Text = "Copy Whitelist Link"
				}),
				textButton({ 
					AnchorPoint = Vector2.new(0.5, 1), 
					AutomaticSize = Enum.AutomaticSize.None,
					BackgroundTransparency = 1, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					MouseButton1Click = function()
						changeTab(false);
					end,
					Name = "premiumUser", 
					Position = UDim2.new(0.5, 0, 1, 0), 
					RichText = true, 
					Size = UDim2.new(1, 0, 0, 20), 
					Text = "Premium User?  <font color=\"#eb4545\">Click Here!</font>", 
					TextColor3 = Color3.fromHex("9fa4ba")
				}),
				textButton({ -- SPDM Team | Buy Premium Button
					AnchorPoint = Vector2.new(0.5, 1), 
					AutomaticSize = Enum.AutomaticSize.None,
					MouseButton1Click = function()
						if setclipboard then
							setclipboard("https://codexseller.mysellix.io/");
						end
						cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
							Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
							Text = "Premium License purchase link has been set to your clipboard."
						});
					end,
					BackgroundTransparency = 1, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
					Name = "premiumUser", 
					Position = UDim2.new(0.5, 0, 1, 28), 
					RichText = true, 
					Size = UDim2.new(1, 0, 0, 20), 
					Text = "Or <font color=\"#eb4545\">Buy Premium!</font>", 
					TextColor3 = Color3.fromHex("9fa4ba")
				})
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "specialUserInput", 
				Position = UDim2.new(0.5, 0, 0.2, 46), 
				Size = UDim2.new(0.4, 264, 0.5, 0), 
				Visible = false
			}, {
				textButton({
					AnchorPoint = Vector2.new(1, 0), 
					AutomaticSize = Enum.AutomaticSize.None,
					MouseButton1Click = function()
						changeTab(true);
					end,
					Name = "cancel", 
					Position = UDim2.new(0.5, -6, 0.5, 6), 
					Size = UDim2.new(0, 160, 0, 32), 
					Text = "Cancel"
				}),
				textButton({
					AutomaticSize = Enum.AutomaticSize.None,
					MouseButton1Click = function()
						local key = ui.specialUserInput.key.Text;
						if #key > 0 then
							local res = internalUtils:Request("https://api.codex.lol/v1/auth/claim", "POST", {
								["Content-Type"] = "application/json"
							}, {
								key = key
							});
							if res then
								changeTab(true);
								return;
							end
						end
						cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
							Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
							Text = "Invalid key."
						});
					end,
					Name = "register", 
					Position = UDim2.new(0.5, 6, 0.5, 6), 
					Size = UDim2.new(0, 160, 0, 32), 
					Text = "Register", 
				}),
				textBox({
					AnchorPoint = Vector2.new(0.5, 1), 
					AutomaticSize = Enum.AutomaticSize.None,
					Name = "key", 
					PlaceholderText = "Key...", 
					Position = UDim2.new(0.5, 0, 0.5, -6),
					Size = UDim2.new(1, -62, 0, 32)
				})
			})
		});

		task.spawn(function()
			local dataStep = startupStep.new("Fetching Codex Data...", "Data Fetched!", ui.whitelist.process):Start();
			internalSettings:Initialize();

			changelog().Parent = ui;
			local currentVersion = identifyexecutor and select(2, identifyexecutor()) or "Invalid Version";
			if not (cloneref(game:GetService("RunService")):IsStudio() or internalUtils:AreVersionsAlike(currentVersion, isiosdevice() and internalSettings.data.iosVersion or internalSettings.data.androidVersion)) then
				dataStep:Complete("Please update Codex.");
				return;
			end
			dataStep:Complete();

			local whitelistStep = startupStep.new("Waiting for you to Whitelist...", "Whitelisted!", ui.whitelist.process):Start();
			repeat
				task.wait(5);
			until checkWhitelist() or cloneref(game:GetService("RunService")):IsStudio();
			whitelistStep:Complete();

			local setupStep = startupStep.new("Setting Up...", "Setup Completed!", ui.whitelist.process):Start();
			doSetup();
			setupStep:Complete();

			local loadUIStep = startupStep.new("Loading UI...", "Loaded!", ui.whitelist.process):Start();
			local basis = createBasis(directory);
			loadUIStep:Complete();
			task.wait(1);
			completionSignal:Fire(true, basis);
		end);

		return ui;
	end

	--[[ Module ]]--



	framework.pages.startup.startup = (function(directory: Instance, signal: {any}): ScreenGui
		completionSignal = signal;

		if checkWhitelist() then
			doSetup();
			signal:Fire(true, createBasis(directory));
			return;
		end

		return createUI(directory);
	end);
end

do
	--[[ Variables ]]--

	local navbarButton = framework.components.navbarButton;
	local instanceUtils = framework.dependencies.utils.instance;
	local mathsUtils = framework.dependencies.utils.maths;
	local codexEnum = framework.dependencies.codexEnum;
	local internalUtils = framework.dependencies.utils.internal;
	local userSettings = framework.data.userSettings;

	local userInputService = cloneref(game:GetService("UserInputService"));
	local tweenService = cloneref(game:GetService("TweenService"));
	local httpService = cloneref(game:GetService("HttpService"));

	local navbar = {
		state = "hidden"
	};

	local map = {};
	local selected;

	--[[ Functions ]]--

	local function setupDragBar(dragBar: TextButton, indent: NumberValue)
		local isDragging = false;
		local startPosition, startOffset;

		userInputService.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and mathsUtils:IsWithin2DBounds(input.Position, dragBar.AbsolutePosition, dragBar.AbsolutePosition + dragBar.AbsoluteSize) then
				isDragging = true;
				startPosition, startOffset = input.Position.X, input.Position.X - dragBar.AbsolutePosition.X;
				local endedConn; endedConn = input.Changed:Connect(function(property)
					if input.UserInputState == Enum.UserInputState.End then
						isDragging = false;
						endedConn:Disconnect();
						navbar:SetState(codexEnum.NavbarState[input.Position.X > 140 and "Full" or input.Position.X > 40 and "Partial" or "Hidden"]);
					end
				end);
			end
		end);

		userInputService.InputChanged:Connect(function(input)
			if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local offset = math.clamp(input.Position.X - startOffset, 0, 260)

				instanceUtils:Tween(indent, 0.06, {
					Value = offset
				});

				-- Indent pages
				if selected and map[selected] then
					instanceUtils:Tween(map[selected], 0.25, {
						Position = UDim2.new(0, offset, 1, 0);
						Size = UDim2.new(1, -offset, 1, 0);
					});
				end
			end
		end);
	end

	local function createNavbar(gui: ScreenGui): Instance


		local bar = instanceUtils:Create("Frame", {
			BackgroundTransparency = 1,
			Name = "navbar",
			Parent = gui,
			Size = UDim2.new(0, 0, 1, 0),
			ZIndex = 2
		}, {
			instanceUtils:Create("TextButton", { -- SPDM Team | Floating Icon
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromHex("15151d"), 
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Draggable = true,
				Name = "floatingIcon",
				Position =  UDim2.new(0, game.Workspace.CurrentCamera.ViewportSize.X*0.8, 0.7, 0),
				Size = UDim2.new(0, 50, 0, 50),
				Text = "",
				Visible = false,
				ZIndex = 2
			},
			{
				instanceUtils:Create("UICorner", {
					CornerRadius = UDim.new(1, 0),
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", {
					PaddingBottom = UDim.new(.15, 0),
					PaddingTop = UDim.new(.15, 0),
					PaddingLeft = UDim.new(.15, 0),
					PaddingRight = UDim.new(.15, 0),
					Name = "UIPadding"
				}),
				instanceUtils:Create("ImageLabel", { 
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					Image = "rbxassetid://11558559086", 
					Name = "codexIcon2", 
					Position = UDim2.new(0.5, 0 ,0.5, 0), 
					Size = UDim2.new(1,0,1,0),
					ZIndex = 2
				})
			}),
			instanceUtils:Create("NumberValue", {
				Name = "indent",
				Value = 0
			}),
			instanceUtils:Create("TextButton", {
				BackgroundTransparency = 1,
				Name = "dragBar",
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(0, 20, 1, 0),
				Text = "",
				ZIndex = 2
			},
			{
				instanceUtils:Create("Frame", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 0.8,
					BorderSizePixel = 0,
					Name = "indicator",
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 2, 0, 80),
					ZIndex = 2
				}, {
					instanceUtils:Create("UICorner", {
						CornerRadius = UDim.new(1, 0),
						Name = "corner"
					})
				})
			}),
			instanceUtils:Create("Frame", { 
				BackgroundColor3 = Color3.fromHex("15151d"), 
				BorderSizePixel = 0, 
				ClipsDescendants = true, 
				Name = "main", 
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 2
			}, {
				instanceUtils:Create("ImageLabel", { 
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					Image = "rbxassetid://11558559086", 
					Name = "codexIcon", 
					Position = UDim2.new(0, 20, 0, 30), 
					Size = UDim2.new(0, 36, 0, 36),
					ZIndex = 2
				}),
				instanceUtils:Create("TextLabel", { 
					BackgroundTransparency = 1, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size18, 
					Name = "title", 
					Position = UDim2.new(0, 78, 0, 38), 
					Text = "Codex " .. (isiosdevice() and "iOS" or "Android"),
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 16, 
					TextTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left, 
					TextYAlignment = Enum.TextYAlignment.Top,
					ZIndex = 2
				}),
				instanceUtils:Create("TextLabel", { 
					BackgroundTransparency = 1, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size12, 
					Name = "poweredBy", 
					Position = UDim2.new(0, 78, 0, 59), 
					Text = "Powered By SPDM Team", 
					TextColor3 = Color3.fromHex("717176"), 
					TextSize = 12, 
					TextTransparency = 1, 
					TextXAlignment = Enum.TextXAlignment.Left, 
					TextYAlignment = Enum.TextYAlignment.Top,
					ZIndex = 2
				}),
				instanceUtils:Create("Frame", { 
					BackgroundTransparency = 1, 
					BorderSizePixel = 0, 
					Name = "container", 
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 2
				}, {
					instanceUtils:Create("UIListLayout", { 
						HorizontalAlignment = Enum.HorizontalAlignment.Center, 
						Name = "list", 
						SortOrder = Enum.SortOrder.LayoutOrder, 
						VerticalAlignment = Enum.VerticalAlignment.Center
					})
				})
			})
		});
		
		-- SPDM Team | Streak & Expiring Timer
		local function fetchData()
			local data
			local response = internalUtils:Request("https://api.codex.lol/v1/auth/authenticate", "POST")

			if response then
				data = httpService:JSONDecode(response)
			elseif cloneref(game:GetService("RunService")):IsStudio() then
				data = {
					expiry = os.time()*1000+1200000,
					streak = 24
				} 
			else
				data = {
					expiry = 0,
					streak = 0
				}
			end

			return data.expiry / 1000, data.streak;
		end

		local function updateText()
			local expiryTime, streak = fetchData()
			
			local function getTimeLeft()
				return expiryTime - os.time()
			end

			local timeLeft = getTimeLeft()

			local function updateFrequency()
				if timeLeft > 86400 then
					return 3600
				elseif timeLeft > 3600 then
					return 60  
				else return 1
				end
			end

			local function formatTimeLeft()
				if timeLeft <= 0 then
					return "Expired"
				elseif timeLeft < 60 then
					return string.format("%ds", timeLeft)
				else
					local days = math.floor(timeLeft / 86400)
					local hours = math.floor((timeLeft % 86400) / 3600)
					local minutes = math.floor((timeLeft % 3600) / 60)
					local seconds = timeLeft % 60

					local timeStr = ""
					if days > 0 then
						timeStr = string.format("%dd ", days)
					end
					if hours > 0 then
						timeStr ..= string.format("%dh ", hours)
					end
					if minutes > 0 or hours > 0 or days > 0 then
						timeStr ..= string.format("%dmin", minutes)
					end
					if days == 0 and hours == 0 then
						timeStr ..= string.format(" %ds", seconds)
					end
					return timeStr
				end
			end

			-- SPDM Team | Credits
			local textLabel = bar.main.poweredBy;
			local isAnimating = false;

			local function createFadeTween(object, goal, duration, easingStyle, easingDirection)
				local tweenInfo = TweenInfo.new(duration, easingStyle, easingDirection)
				local tween = tweenService:Create(object, tweenInfo, goal)
				return tween
			end

			local function updateFunction()
				if not isAnimating then
					timeLeft = getTimeLeft()
					local formattedTimeLeft = formatTimeLeft()
					local streakText = string.format("🔥 %d\t•\t🕓 %s", streak, formattedTimeLeft)
					textLabel.Text = streakText
				end
			end
			
			local function displayPoweredBySPDM()
				if timeLeft >= 0 and timeLeft <20 then return end; 
				isAnimating = true
				local originalText = textLabel.Text

				local fadeIn = createFadeTween(textLabel, {TextTransparency = 0}, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
				local fadeOut = createFadeTween(textLabel, {TextTransparency = 1}, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

				fadeOut:Play()
				fadeOut.Completed:Wait()
				textLabel.Text = "Powered By SPDM Team"
				fadeIn:Play()
				fadeIn.Completed:Wait()

				wait(2)

				fadeOut:Play()
				fadeOut.Completed:Wait()


				isAnimating = false
				updateFunction()
				fadeIn:Play()
				fadeIn.Completed:Wait()

			end
			


			updateFunction()

			local freq = updateFrequency()
			if freq then
				task.spawn(function()
					while getTimeLeft() > 0 do
						wait(freq)
						updateFunction()
					end
				end)
			end
			
			task.spawn(function()
				while true do
					wait(math.random(10, 20))
					displayPoweredBySPDM()
				end
			end)
		end

		updateText()
		

		-- SPDM Team | Floating Icon
		arceus_libs.input.handleCustomDrag(bar.floatingIcon)
		arceus_libs.buttons.holdable(bar.floatingIcon).ShortClick.Event:Connect(function()
			if userSettings.cache.executor.showParticles then
				local ScreenGui = bar.Parent
				local particleCount = 30
				
				local mainColors = {
					Color3.fromRGB(219, 0, 0),    -- #DB0000
					Color3.fromRGB(219, 27, 27),  -- #DB1B1B
					Color3.fromRGB(221, 71, 71),  -- #DD4747
					Color3.fromRGB(226, 111, 111),-- #E26F6F 
					Color3.fromRGB(21, 21, 29)    -- #15151D
				}
				
				local function getRandomMainColorWithVariation()
					local randomIndex = math.random(1, #mainColors)
					return mainColors[randomIndex]
				end

				local function createAndAnimateParticle()
					local particle = Instance.new("Frame")
					local size = math.random(5, 15)
					particle.Size = UDim2.new(0, size, 0, size)
					particle.BackgroundColor3 = getRandomMainColorWithVariation()
					particle.Parent = ScreenGui

					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0.5, 0)
					uiCorner.Parent = particle

					local radius = bar.floatingIcon.Size.X.Offset / 2
					local theta = math.random() * 2 * math.pi
					local r = radius * math.sqrt(math.random())
					local offsetX = r * math.cos(theta)
					local offsetY = r * math.sin(theta)

					local iconCenter = bar.floatingIcon.AbsolutePosition + bar.floatingIcon.AbsoluteSize / 2
					local newPositionX = iconCenter.X + offsetX - (particle.Size.X.Offset / 2) - ScreenGui.AbsolutePosition.X
					local newPositionY = iconCenter.Y + offsetY - (particle.Size.Y.Offset / 2) - ScreenGui.AbsolutePosition.Y

					particle.Position = UDim2.new(0, newPositionX, 0, newPositionY)
					particle.AnchorPoint = Vector2.new(0.5, 0.5)


					local tween = tweenService:Create(particle, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true), {BackgroundTransparency = 0})
					tween:Play()

					local moveTween = tweenService:Create(particle, TweenInfo.new(math.random(), Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false), {Position = UDim2.new(0, -size, 0, math.random(0, ScreenGui.AbsoluteSize.Y - size))})
					moveTween:Play()

					moveTween.Completed:Connect(function()
						particle:Destroy()
					end)
				end

				for i = 1, particleCount do
					createAndAnimateParticle()
				end

				wait(.15)
			end
			
			navbar:SetState(codexEnum.NavbarState["Partial"])
		end)

		bar.indent:GetPropertyChangedSignal("Value"):Connect(function()
			local value = bar.indent.Value;
			local percentage = (math.clamp(value, 76, 260) - 76) / 184;

			navbar.bar.Size = UDim2.new(0, value, 1, 0);
			navbar.bar.main.codexIcon.Size = UDim2.new(0, 36 + percentage * 12, 0, 36 + percentage * 12);
			navbar.bar.main.title.TextTransparency = 1 - percentage;
			navbar.bar.main.poweredBy.TextTransparency = 0.2 + (1 - percentage) * 0.8;
			for i, v in map do
				i.instance.text.TextTransparency = 0.2 + (1 - percentage) * 0.8;
			end
			navbar.fade.BackgroundTransparency = 1 - percentage;
		end);

		setupDragBar(bar.dragBar, bar.indent);

		return bar;
	end

	local function createFade(gui: ScreenGui): Instance
		return instanceUtils:Create("Frame", {
			BackgroundColor3 = Color3.new(),
			BackgroundTransparency = 1,
			Name = "fade",
			Parent = gui,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 0
		}, {
			instanceUtils:Create("UIGradient", {
				Name = "gradient",
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.3),
					NumberSequenceKeypoint.new(0.2, 0.3),
					NumberSequenceKeypoint.new(1, 1)
				})
			})
		});
	end

	--[[ Module ]]--

	function navbar:Initialize(directory: Instance)
		self.bar = createNavbar(directory.gui);
		self.fade = createFade(directory.gui);
		self.background = directory.gui.background;

		for i, v in { "editor", "localScripts", "globalScripts", "exploitSettings", "console" } do
			local module = framework[string.format("pages.%s.%s", v, v)];
			self:Add(module.title, module.icon, module:Initialize(), module.overwritePosition);
		end

		self:SetState(codexEnum.NavbarState.Full, true);
	end

	function navbar:Add(text: string, icon: string, designatedFrame: Frame, overwritePosition: UDim2?)
		local button = navbarButton.new(text, icon);
		map[button] = designatedFrame;

		button.instance.MouseButton1Click:Connect(function()
			self:Select(button);
		end);

		if self.state ~= "full" then
			button.instance.text.TextTransparency = 1;
		end

		if overwritePosition then
			button.instance.Position = overwritePosition;
			button.instance.Parent = self.bar.main;
		else
			button.instance.Parent = self.bar.main.container;
		end
		designatedFrame.Parent = self.bar.Parent.tabs;
	end

	function navbar:SetState(navbarState: number, ignoreTimeouts: boolean?)
		local indent, state = 0, "hidden";
		if navbarState == codexEnum.NavbarState.Partial or (navbarState == codexEnum.NavbarState.Hidden and selected) then
			indent, state = 76, "partial";
		elseif navbarState == codexEnum.NavbarState.Full then
			indent, state = 260, "full";
		end

		if self.tween then
			self.tween:Cancel();
		end
		if self.nextInputCheck then
			self.nextInputCheck:Disconnect();
			pcall(task.cancel, self.timeoutDelay); -- if this is called from self.timeoutDelay itself, it will error. Cba to do a proper check. It'll be dead immediately after anyways
		end

		self.state = state;
		self.tween = instanceUtils:Tween(self.bar.indent, 0.25, {
			Value = indent;
		});

		-- SPDM | Indent pages
		if selected and map[selected] then
			instanceUtils:Tween(map[selected], 0.25, {
				Position = UDim2.new(0, indent, 1, 0);
				Size = UDim2.new(1, -indent, 1, 0);
			});
		end

		if state ~= "hidden" and not ignoreTimeouts then
			self.timeoutDelay = task.delay(10, function()
				if self.state == state then
					self:SetState(codexEnum.NavbarState.Hidden);
				end
			end);

			self.nextInputCheck = userInputService.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					if self.state ~= "hidden" and input.Position.X > self.bar.indent.Value then
						self:SetState(codexEnum.NavbarState.Hidden);
					end
				end
			end);
		end

		-- SPDM Team | Opening modes handler
		local function createTween(target, properties)
			return game:GetService("TweenService"):Create(target, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), properties)
		end

		local openingModes = {
			["Edge Swipe"] = 
				function() 
					if self.bar.dragBar.indicator.BackgroundTransparency ~= 0.8 then
					createTween(self.bar.dragBar.indicator, {BackgroundTransparency = 0.8}):Play()
				end
				end,
			["Floating Icon"] = 
				function() 
					if self.state == "hidden" then
						if self.bar.dragBar.indicator.BackgroundTransparency ~= 1 then
							createTween(self.bar.dragBar.indicator, {BackgroundTransparency = 1}):Play()
						end 
						if userSettings.cache.executor.showParticles then
							local ScreenGui = self.bar.Parent
							local particleCount = 30

							local mainColors = {
								Color3.fromRGB(219, 0, 0),    -- #DB0000
								Color3.fromRGB(219, 27, 27),  -- #DB1B1B
								Color3.fromRGB(221, 71, 71),  -- #DD4747
								Color3.fromRGB(226, 111, 111),-- #E26F6F 
								Color3.fromRGB(21, 21, 29)    -- #15151D
							}

							local function getRandomMainColorWithVariation()
								local randomIndex = math.random(1, #mainColors)
								return mainColors[randomIndex]
							end

							local function createAndAnimateParticle()
								local particle = Instance.new("Frame")
								local size = math.random(5, 15)
								particle.Size = UDim2.new(0, size, 0, size)
								particle.BackgroundColor3 = getRandomMainColorWithVariation()
								particle.Parent = ScreenGui

								local uiCorner = Instance.new("UICorner")
								uiCorner.CornerRadius = UDim.new(0.5, 0)
								uiCorner.Parent = particle

								local startPositionX = math.random(0, ScreenGui.AbsoluteSize.X * 0.1)
								local startPositionY = math.random(0, ScreenGui.AbsoluteSize.Y - size)
								particle.Position = UDim2.new(0, startPositionX, 0, startPositionY)
								particle.AnchorPoint = Vector2.new(0.5, 0.5)

								local iconCenter = self.bar.floatingIcon.AbsolutePosition + self.bar.floatingIcon.AbsoluteSize / 2
								local endPositionX = iconCenter.X - (particle.Size.X.Offset / 2) - ScreenGui.AbsolutePosition.X
								local endPositionY = iconCenter.Y - (particle.Size.Y.Offset / 2) - ScreenGui.AbsolutePosition.Y

								local tweenService = game:GetService("TweenService")
								local moveTween = tweenService:Create(particle, TweenInfo.new(.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0, endPositionX, 0, endPositionY)})
								moveTween:Play()

								moveTween.Completed:Connect(function()
									particle:Destroy()
								end)
							end

							for i = 1, particleCount do
								createAndAnimateParticle()
							end

							wait(.35);
						end
					else
						createTween(self.bar.dragBar.indicator, {BackgroundTransparency = 0.8}):Play()
					end


					local targetTransparency = self.state == "hidden" and 0.5 or 1
					if self.bar.floatingIcon.BackgroundTransparency ~= targetTransparency then
					local targetSize = self.state == "hidden" and UDim2.new(0, 70, 0, 70) or UDim2.new(0, 0, 0, 0)
					local delayTime = self.bar.floatingIcon.BackgroundTransparency == 0.5 and 0.25 or 0

					task.delay(delayTime, function() self.bar.floatingIcon.Visible = self.state == "hidden" end)

					createTween(self.bar.floatingIcon, {BackgroundTransparency = targetTransparency, Size = targetSize}):Play()
					createTween(self.bar.floatingIcon.codexIcon2, {ImageTransparency = targetTransparency == 0.5 and 0 or 1}):Play()
				end
				end,
			["Invisible Edge Swipe"] = 
				function() 
					if self.bar.dragBar.indicator.BackgroundTransparency ~= 1 then
						createTween(self.bar.dragBar.indicator, {BackgroundTransparency = 1}):Play()
					end
				end
		}

		openingModes[userSettings.cache.executor.openingMode]()


	end

	function navbar:Select(button: TextButton)
		if selected ~= nil then
			selected:Highlight(false);
			instanceUtils:Tween(map[selected], 0.2, {
				Position = UDim2.new(1, 0, 1, 0)
			});
			if selected == button then
				selected = nil;
				instanceUtils:Tween(self.background, 0.2, {
					BackgroundTransparency = 1
				});
				return;
			end
		end
		selected = button;
		selected:Highlight(true);
		self:SetState(codexEnum.NavbarState.Partial);
		instanceUtils:Tween(self.background, 0.2, {
			BackgroundTransparency = 0.1
		});
		--[[
		instanceUtils:Tween(map[button], 0.2, {
			Position = UDim2.new(0, 0, 1, 0)
		});
		]]
	end

	framework.pages.navbar.navbar = navbar;
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local mathsUtils = framework.dependencies.utils.maths;
	local popups = framework.popups.popups;

	local textService = cloneref(game:GetService("TextService"));

	local tagOrder = { "verified", "isPatched", "isUniversal", "key" };
	local tags = {
		key = {
			title = "Key",
			colour = "#eab515"
		},
		isPatched = {
			title = "Patched",
			colour = "#eb4545"
		},
		isUniversal = {
			title = "Universal",
			colour = "#459beb"
		},
		verified = {
			title = "Verified",
			colour = "#15151d"
		}
	};

	--[[ Functions ]]--

	local function generateTag(data: {any}): Instance
		return instanceUtils:Create("TextLabel", { 
			AutomaticSize = Enum.AutomaticSize.X, 
			BackgroundColor3 = Color3.fromHex(data.colour), 
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
			FontSize = Enum.FontSize.Size14, 
			Name = data.title, 
			Size = UDim2.new(0, 0, 0, 30), 
			Text = data.title, 
			TextColor3 = Color3.fromHex("ffffff"), 
			TextSize = 14
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 5), 
				Name = "corner"
			}),
			instanceUtils:Create("UIPadding", { 
				Name = "padding", 
				PaddingLeft = UDim.new(0, 10), 
				PaddingRight = UDim.new(0, 10)
			})
		});
	end

	--[[ Module ]]--

	framework.pages.globalScripts.scriptResult = (function(scriptResult: {any}): Instance
		local viewCount = mathsUtils:FormatAsCount(scriptResult.views, 0.1);

		local base = instanceUtils:Create("ImageButton", { 
			Active = false, 
			AutoButtonColor = false, 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Image = string.format("https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid=%d&fmt=png&wd=1920&ht=1080", scriptResult.isUniversal and 4483381587 or scriptResult.game.gameId), 
			ImageTransparency = 0.5, 
			Name = scriptResult.title, 
			Selectable = false, 
			Size = UDim2.new(1, 0, 1, 0)
		}, {
			instanceUtils:Create("UICorner", { 
				CornerRadius = UDim.new(0, 5), 
				Name = "corner"
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size18, 
				Name = "title", 
				Position = UDim2.new(0.5, 0, 0, 48), 
				Size = UDim2.new(1, -28, 0, 0), 
				Text = scriptResult.title, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 16, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				BackgroundTransparency = 1, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "description", 
				Position = UDim2.new(0.5, 0, 1, -14), 
				Size = UDim2.new(1, -28, 1, -86), 
				Text = scriptResult.description or "", 
				TextColor3 = Color3.fromHex("c8c8c8"), 
				TextSize = 13, 
				TextTruncate = Enum.TextTruncate.AtEnd, 
				TextWrap = true, 
				TextWrapped = true, 
				TextXAlignment = Enum.TextXAlignment.Left, 
				TextYAlignment = Enum.TextYAlignment.Top
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(1, 0), 
				AutomaticSize = Enum.AutomaticSize.X, 
				BackgroundColor3 = Color3.fromHex("3a3a4a"), 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "views", 
				Position = UDim2.new(1, -10, 0, 10), 
				Size = UDim2.new(0, 0, 0, 30), 
				Text = viewCount, 
				TextColor3 = Color3.fromHex("ffffff"), 
				TextSize = 14
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 5), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 10), 
					PaddingRight = UDim.new(0, 10)
				})
			}),
			instanceUtils:Create("ScrollingFrame", { 
				Active = true, 
				AutomaticCanvasSize = Enum.AutomaticSize.X, 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "tags", 
				Position = UDim2.new(0, 10, 0, 10), 
				ScrollBarImageColor3 = Color3.fromHex("000000"), 
				ScrollBarThickness = 0, 
				ScrollingDirection = Enum.ScrollingDirection.X, 
				Size = UDim2.new(1, -(textService:GetTextBoundsAsync(instanceUtils:Create("GetTextBoundsParams", {
					Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
					Text = viewCount,
					Size = 14,
					Width = math.huge
				})).X + 46), 0, 30)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			})
		});

		for i, v in tagOrder do
			if scriptResult[v] then
				generateTag(tags[v]).Parent = base.tags;
			end
		end

		base.MouseButton1Click:Connect(function()
			popups:Show("globalScriptSelection", scriptResult);
		end);

		return base;
	end);
end

do
	--[[ Variables ]]--

	local instanceUtils = framework.dependencies.utils.instance;
	local internalUtils = framework.dependencies.utils.internal;
	local scriptResult = framework.pages.globalScripts.scriptResult;

	local httpService = cloneref(game:GetService("HttpService"));

	local basis;

	--[[ Module ]]--

	local globalScripts = {
		title = "Global Scripts",
		icon = "rbxassetid://13449277995",
		isSearching = false
	};

	function globalScripts:Initialize(directory: Instance)
		basis = instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0, 1), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Name = "globalScripts", 
			Position = UDim2.new(1, 0, 1, 0), 
			Size = UDim2.new(1, 0, 1, -36)
		}, {
			instanceUtils:Create("ScrollingFrame", { 
				AnchorPoint = Vector2.new(0.5, 1), 
				AutomaticCanvasSize = Enum.AutomaticSize.Y, 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "container", 
				Position = UDim2.new(0.5, 0, 1, 0), 
				ScrollBarImageColor3 = Color3.fromHex("050507"), 
				ScrollBarThickness = 4, 
				ScrollingDirection = Enum.ScrollingDirection.Y, 
				Size = UDim2.new(1, -28, 1, -60), 
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
			}, {
				instanceUtils:Create("UIGridLayout", { 
					CellPadding = UDim2.new(0, 12, 0, 12), 
					CellSize = UDim2.new(0.333, -12, 0.3, 50), 
					HorizontalAlignment = Enum.HorizontalAlignment.Center, 
					Name = "grid", 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			}),
			instanceUtils:Create("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = Color3.fromRGB(21, 21, 29),
				MouseButton1Click = function()
					basis.searchBox.input:CaptureFocus();
				end,
				Name = "searchBox",
				Position = UDim2.new(0, 14, 0, 14),
				Size = UDim2.new(1, -74, 0, 36),
				Text = ""
			}, {
				instanceUtils:Create("TextBox", { 
					AnchorPoint = Vector2.new(0.5, 0.5), 
					BackgroundTransparency = 1, 
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size14, 
					Name = "input", 
					PlaceholderColor3 = Color3.fromHex("b2b2b2"), 
					PlaceholderText = "Search...", 
					Position = UDim2.new(0.5, 0, 0.5, 0), 
					Size = UDim2.new(1, 0, 1, 0), 
					Text = "", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 14, 
					TextTruncate = Enum.TextTruncate.AtEnd, 
					TextXAlignment = Enum.TextXAlignment.Left
				}),
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 5), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 12), 
					PaddingRight = UDim.new(0, 12)
				})
			}),
			instanceUtils:Create("TextLabel", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticSize = Enum.AutomaticSize.X, 
				BackgroundColor3 = Color3.fromHex("15151d"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "credit",
				Position = UDim2.new(0.5, 0, 0, -28), 
				Size = UDim2.new(0, 0, 0, 34), 
				Text = "Powered by scriptblox.com", 
				TextColor3 = Color3.fromHex("b2b2b2"), 
				TextSize = 14
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 5), 
					Name = "corner"
				}),
				instanceUtils:Create("UIPadding", { 
					Name = "padding", 
					PaddingLeft = UDim.new(0, 12), 
					PaddingRight = UDim.new(0, 12)
				})
			}),
			instanceUtils:Create("TextButton", { 
				AnchorPoint = Vector2.new(1, 0), 
				AutoButtonColor = false, 
				BackgroundColor3 = Color3.fromHex("15151d"), 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal), 
				FontSize = Enum.FontSize.Size14, 
				Name = "openFilters", 
				Position = UDim2.new(1, -14, 0, 14), 
				Size = UDim2.new(0, 36, 0, 36), 
				Text = "", 
				TextColor3 = Color3.fromHex("000000"), 
				TextSize = 14
			}, {
				instanceUtils:Create("UICorner", { 
					CornerRadius = UDim.new(0, 5), 
					Name = "corner"
				})
			})
		});

		basis.searchBox.input.FocusLost:Connect(function()
			local contents = basis.searchBox.input.Text;
			if #contents > 0 then
				self:Search(contents);
			end
		end);

		do
			local res = internalUtils:Request("https://scriptblox.com/api/script/search?filters=free&q=Hub", "GET", {
				["Content-Type"] = "application/json"
			});

			if res then
				self:ParseResults(httpService:JSONDecode(res).result.scripts);
			end
		end

		return basis;
	end

	function globalScripts:Search(query: string)
		if self.isSearching or getgenv == nil then
			return;
		end
		self.isSearching = true;
		local res = internalUtils:Request("https://scriptblox.com/api/script/search?filters=free&q=" .. httpService:UrlEncode(query), "GET", {
			["Content-Type"] = "application/json"
		});
		if res then
			self:ParseResults(httpService:JSONDecode(res).result.scripts);
		end
		self.isSearching = false;
	end

	function globalScripts:ParseResults(res: {any})
		for i, v in basis.container:GetChildren() do
			if v:IsA("ImageButton") then
				v:Destroy();
			end
		end
		for i, v in res do
			scriptResult(v).Parent = basis.container;
		end
	end

	framework.pages.globalScripts.globalScripts = globalScripts;
end

do
	--[[ Variables ]]--

	local sets = {
		keywords = {
			"local",
			"function",
			"if",
			"and",
			"or",
			"not",
			"then",
			"else",
			"elseif",
			"repeat",
			"until",
			"while",
			"do",
			"end",
			"for",
			"in",
			"break",
			"continue",
			"return"
		},
		constants = {
			"true",
			"false",
			"nil"
		},
		operators = {
			"and",
			"or",
			"not",
			"<",
			">",
			"<=",
			">=",
			"==",
			"~=",
			"+",
			"-",
			"*",
			"/",
			"%",
			"^",
			"#",
			".."
		},
		assignments = {
			"=",
			"+=",
			"-=",
			"*=",
			"/=",
			"%=",
			"^=",
			"..="
		},
		globals = getfenv()
	};

	--[[ Functions ]]--

	local function isDigit(character: string, index: number): boolean
		return (character >= "0" and character <= "9") or (index > 0 and (character == "e" or character == "_"));
	end

	local function isHexadecimalDigit(character: string): boolean
		return (character >= "0" and character <= "9") or (character >= "a" and character <= "f") or (character >= "A" and character <= "F");
	end

	local function isWord(character: string, isFirstCharacter: boolean): boolean
		return character == "_" or (character >= "a" and character <= "z") or (character >= "A" and character <= "Z") or (not isFirstCharacter and isDigit(character, 0));
	end

	local function isWhitespace(character: string): boolean
		return character == " " or character == "\t" or character == "\n";
	end

	--[[ Module ]]--

	local lexer = {};

	function lexer:_consume(): string
		self.position += 1;
		return string.sub(self.string, self.position, self.position);
	end

	function lexer:_peek(amount: number | nil): string
		local index = self.position + (amount or 1);
		return string.sub(self.string, index, index);
	end

	function lexer:_pushToken(tokenName: string, value: string)
		self.result[#self.result + 1] = {
			token = tokenName,
			value = value
		};
	end

	function lexer:_pushSymbol(text: string)
		local token = "symbol";
		if table.find(sets.operators, text) then
			token = "operator";
		elseif table.find(sets.assignments, text) then
			token = "assignment";
		end
		self:_pushToken(token, text);
	end

	function lexer:_readString(): string
		local delimiter, value = self:_peek(), self:_consume();
		while self.position <= self.length do
			local character = self:_consume();
			if character == "\\" then
				value ..= character .. self:_consume();
			else
				value ..= character;
				if character == delimiter then
					break;
				end
			end
		end
		return value;
	end

	function lexer:_readMultilineString(): string | nil
		local delimiter = self:_peek();
		if delimiter ~= "[" then
			return nil;
		end	
		local start = self.position;
		local value = self:_consume();
		local nestedEquals = 0;
		while self.position <= self.length and self:_peek() == "=" do
			value ..= self:_consume();
			nestedEquals += 1;
		end
		if self:_peek() ~= "[" then
			self.position = start;
			return nil;
		end
		value ..= self:_consume();
		while self.position <= self.length do
			local character = self:_consume();
			value ..= character;
			if character == "]" then
				local equalsCount = 0;
				while self.position <= self.length and self:_peek() == "=" do
					value ..= self:_consume();
					equalsCount += 1;
				end
				if self:_peek() == "]" and nestedEquals == equalsCount then
					value ..= self:_consume();
					break;
				end
			end
		end
		return value;
	end

	function lexer:_readComment(): string
		local value = self:_consume() .. self:_consume();
		if self:_peek() == "[" then
			local multilineString = self:_readMultilineString();
			if multilineString ~= nil then
				return value .. multilineString;
			end
		end
		while self.position <= self.length do
			local character = self:_peek();
			if character == "\n" then
				break;
			end
			value ..= self:_consume();
		end
		return value;
	end

	function lexer:_readWord(): string | nil
		local value = "";
		local isFirstCharacter = true;
		while self.position <= self.length do
			local character = self:_peek();
			if not isWord(character, isFirstCharacter) then
				break;
			end
			value ..= self:_consume();
			isFirstCharacter = false;
		end
		return value ~= "" and value or nil;
	end

	function lexer:_readWhitespace(): string | nil
		local value = "";
		while self.position <= self.length do
			local character = self:_peek();
			if not isWhitespace(character) then
				break;
			end
			value ..= self:_consume();
		end
		return value ~= "" and value or nil
	end

	function lexer:_readNumber(): string | nil
		local value = "";
		local isHexadecimal = false;
		local index = 0;
		while self.position <= self.length do
			local character = self:_peek();
			if character == "0" or character == "x" then
				isHexadecimal = true;
				value ..= self:_consume();
				index += 1;
				continue;
			elseif (isHexadecimal and not isHexadecimalDigit(character)) or not isDigit(character, index) then
				break;
			end
			value ..= self:_consume();
			index += 1;
		end
		return value ~= "" and value or nil;
	end

	function lexer:_getAssociatedToken(word: string): string
		if table.find(sets.keywords, word) then
			return "keyword";
		elseif table.find(sets.constants, word) then
			return "constant";
		elseif table.find(sets.operators, word) then
			return "operator";
		elseif sets.globals[word] then
			return "global";
		elseif self:_peek() == "(" then
			return "callback";
		end
		return "identifier";
	end

	function lexer:Parse(text: string): {any}
		self.string = text;
		self.position = 0;
		self.length = #text;
		self.result = {};

		local symbol = "";

		while self.position <= self.length do
			local character = self:_peek();
			if character == "[" then
				local multilineString = self:_readMultilineString();
				if multilineString ~= nil then
					self:_pushToken("string", multilineString);
					continue;
				end
			elseif character == "'" or character == "\"" then
				self:_pushToken("string", self:_readString());
				continue;
			elseif isDigit(character, 0) then
				local value = self:_readNumber();
				if value ~= nil then
					self:_pushToken("number", value);
					continue;
				end
			elseif isWord(character, true) then
				local value = self:_readWord();
				if value ~= nil then
					self:_pushToken(self:_getAssociatedToken(value), value);
					continue;
				end
			elseif character == "-" and self:_peek(2) == "-" then
				self:_pushToken("comment", self:_readComment());
				continue;
			elseif isWhitespace(character) then
				local value = self:_readWhitespace();
				if value ~= nil then
					self:_pushToken("whitespace", value);
					continue;
				end
			end

			symbol ..= self:_consume();
			if symbol ~= "" then
				self:_pushSymbol(symbol);
				symbol = "";
			else
				break;
			end
		end

		local result = {};
		for i, v in self.result do
			if string.match(v.value, "\n") then
				local lines = string.split(v.value, "\n");
				for i2, v2 in lines do
					if v2 ~= "" then
						result[#result + 1] = {
							token = v.token,
							value = v2
						};
					end
					if i2 < #lines then
						result[#result + 1] = {
							token = "whitespace",
							value = "\n"
						};
					end
				end
			else
				result[#result + 1] = v;
			end
		end

		return result;
	end

	framework.pages.editor.lexer = lexer;
end

do
	--[[ Variables ]]--

	local editorButton = framework.components.editorButton;
	local tabButton = framework.components.tabButton;
	local userSettings = framework.data.userSettings;
	local instanceUtils = framework.dependencies.utils.instance;
	local internalUtils = framework.dependencies.utils.internal;
	local lexer = framework.pages.editor.lexer;
	local tabSystem = framework.data.tabSystem;
	local popups = framework.popups.popups;

	local userInputService = cloneref(game:GetService("UserInputService"));
	local textService = cloneref(game:GetService("TextService"));

	local highlightAssociations = {
		string = "#69B397",
		number = "#91C087",
		constant = "#E0BA91",
		callback = "#81a6da",
		keyword = "#E18DB9",
		comment = "#606060",
		global = "#bd93db",
		operator = "#AAAAAA",
		assignment = "#AAAAAA",
		identifier = "#DCDCCC",
		symbol = "#DCDCCC"
	};
	local map = {};

	local base;

	--[[ Functions ]]--

	-- | SPDM | Riky47#3355

	local debounceTime = 0.1
	local lastUpdateTime = 0
	local lastLexResult = {}
	local currentCursor = nil
	local textBoundsCache = {}

	local function lexResultsAreEqual(a, b)
		if #a ~= #b then return false end
		for i = 1, #a do
			if a[i].token ~= b[i].token or a[i].value ~= b[i].value then
				return false
			end
		end
		return true
	end

	local function calculateTextBounds(text: string, dontStore: boolean)
		local result = textBoundsCache[text]

		if not result then
			result = textService:GetTextBoundsAsync(instanceUtils:Create("GetTextBoundsParams", {
				Font = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				Size = 16,
				Text = text,
				Width = math.huge
			})).X
		end

		if not dontStore then
			textBoundsCache[text] = result
		end

		return result
	end

	local function needsUpdate(container, lexResult)
		local isSame = lexResultsAreEqual(lexResult, lastLexResult)

		lastLexResult = {}
		for i, v in ipairs(lexResult) do
			lastLexResult[i] = { token = v.token, value = v.value }
		end

		return not isSame
	end

	local function insertHighlight(position: Vector2, size: number, text: string, colour: string)
		return instanceUtils:Create("TextLabel", {
			BackgroundTransparency = 1,
			FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
			Name = text,
			Parent = base.contentContainer.inputBox,
			Position = position,
			Size = UDim2.new(0, size, 0, 16),
			Text = text,
			TextColor3 = Color3.fromHex(colour),
			TextSize = 16,
			ZIndex = 2
		});
	end

	local function updateCustomCursor(cursor: number)
		local input: TextBox = base.contentContainer.inputBox

		if cursor < 1 then
			if currentCursor then
				currentCursor.Visible = false
			end

			return
		end

		local cursorSize = calculateTextBounds("|")
		local before = input.Text:sub(0, cursor -1)
		local lines = string.split(before, "\n")		
		local line = lines[#lines]

		local actualCursor = cursor -(before:len() -line:len()) -1 
		local lastBefore = line:sub(0, actualCursor)

		local position = UDim2.new(0, calculateTextBounds(lastBefore, true) -cursorSize/2, 0, (#lines -1) * 16)

		if currentCursor and not currentCursor.Parent then
			currentCursor:Destroy()
			currentCursor = nil
		end

		if not currentCursor then
			currentCursor = insertHighlight(position, cursorSize, "|", "#FFFFFF")
		end

		currentCursor.ZIndex = 3
		currentCursor.Position = position
		currentCursor.Visible = true
	end

	local function handleLexResult(lexResult: {any}, addTruncateEllipsis: boolean)
		--[[ SPDM | You can eventually enable this
		
		local currentTime = os.clock()
		if currentTime - lastUpdateTime < debounceTime then
			return
		end
		
		lastUpdateTime = currentTime
		]]

		local input = base.contentContainer.inputBox
		if needsUpdate(input, lexResult) then
			input:ClearAllChildren()
			updateCustomCursor(input.CursorPosition)

			local x, y = 0, 0
			for i, v in ipairs(lexResult) do
				local lastX = calculateTextBounds(v.value)
				if v.value == "\n" then
					y += 16
					x = 0
				else
					local associatedColour = highlightAssociations[v.token]
					if associatedColour then
						insertHighlight(UDim2.new(0, x, 0, y), lastX, v.value, associatedColour)
					end
				end

				x += lastX

				if i == #lexResult and addTruncateEllipsis then
					insertHighlight(UDim2.new(0, x, 0, y), 24, "...", highlightAssociations.identifier)
				end
			end
		end
	end

	-- |

	local function generateLineNumberString(text: string)
		local str = "";
		for i = 1, #string.split(text, "\n") do
			str ..= tostring(i) .. "\n";
		end
		return string.sub(str, 1, #str - 1);
	end

	local function createUI(directory: Instance): Instance
		return instanceUtils:Create("Frame", { 
			AnchorPoint = Vector2.new(0, 1), 
			BackgroundColor3 = Color3.fromHex("15151d"), 
			BackgroundTransparency = 1, 
			BorderSizePixel = 0, 
			Name = "editor", 
			Parent = directory, 
			Position = UDim2.new(1, 0, 1, 0), 
			Size = UDim2.new(1, 0, 1, -36)
		}, {
			instanceUtils:Create("ScrollingFrame", { 
				AnchorPoint = Vector2.new(0.5, 0), 
				AutomaticCanvasSize = Enum.AutomaticSize.X, 
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(0, 0, 0, 0), 
				Name = "tabButtons", 
				Position = UDim2.new(0.5, 0, 0, 10), 
				ScrollBarImageColor3 = Color3.fromHex("515158"), 
				ScrollBarThickness = 4, 
				ScrollingDirection = Enum.ScrollingDirection.X, 
				Size = UDim2.new(1, -20, 0, 40)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			}),
			instanceUtils:Create("ScrollingFrame", { 
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1, 
				BorderSizePixel = 0, 
				CanvasSize = UDim2.new(),
				HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				Name = "contentContainer", 
				Position = UDim2.new(0, 0, 0, 50), 
				ScrollBarThickness = 4,
				Size = UDim2.new(1, 0, 1, -50),
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
			}, {
				instanceUtils:Create("TextLabel", { 
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1, 
					FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size18, 
					Name = "lineNumbers", 
					Size = UDim2.new(0, 30, 0, 0), 
					Text = "1", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 16, 
					TextTransparency = 0.7, 
					TextXAlignment = Enum.TextXAlignment.Right, 
					TextYAlignment = Enum.TextYAlignment.Top
				}),
				instanceUtils:Create("TextBox", { 
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1, 
					ClearTextOnFocus = false, 
					CursorPosition = -1, 
					FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal), 
					FontSize = Enum.FontSize.Size18, 
					MultiLine = true, 
					Name = "inputBox", 
					Position = UDim2.new(0, 40, 0, 0), 
					Size = UDim2.new(1, -40, 1, 0), 
					Text = "", 
					TextColor3 = Color3.fromHex("ffffff"), 
					TextSize = 16, 
					TextTransparency = 1, 
					TextTruncate = Enum.TextTruncate.AtEnd, 
					TextXAlignment = Enum.TextXAlignment.Left, 
					TextYAlignment = Enum.TextYAlignment.Top
				})
			}),
			instanceUtils:Create("Frame", { 
				AnchorPoint = Vector2.new(1, 1), 
				BackgroundColor3 = Color3.fromHex("ffffff"), 
				BackgroundTransparency = 1, 
				BorderColor3 = Color3.fromHex("000000"), 
				BorderSizePixel = 0, 
				Name = "buttons", 
				Position = UDim2.new(1, -25, 1, -25), 
				Size = UDim2.new(1, -50, 0, 50)
			}, {
				instanceUtils:Create("UIListLayout", { 
					FillDirection = Enum.FillDirection.Horizontal, 
					HorizontalAlignment = Enum.HorizontalAlignment.Right, 
					Name = "list", 
					Padding = UDim.new(0, 6), 
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			})
		});
	end

	--[[ Module ]]--

	local editor = {
		title = "Editor",
		icon = "rbxassetid://11558196842",
		selected = nil,
		cursorPos = 0,
		text = ""
	};

	function editor:Initialize(directory: Instance)
		base = createUI();

		do
			local inputBox = base.contentContainer.inputBox;
			inputBox:GetPropertyChangedSignal("Text"):Connect(function()
				local text = inputBox.Text
				if userInputService:GetFocusedTextBox() == inputBox and self.text ~= text then
					self:UpdateText(text);
				end
			end);

			inputBox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
				local cursorPos = inputBox.CursorPosition
				if userInputService:GetFocusedTextBox() == inputBox and self.cursorPos ~= cursorPos then
					self.cursorPos = cursorPos
					updateCustomCursor(cursorPos)
				end
			end);

			inputBox.FocusLost:Connect(function()
				if userSettings.cache.executor.autoSaveTabs then
					tabSystem:Save();
				end
			end);
		end

		do
			editorButton("New Tab", "rbxassetid://14808232261", {
				MouseButton1Click = function()
					tabSystem:Add("Script " .. tostring(tabSystem.accumulator + 1));
				end,
				Parent = base.buttons
			});

			editorButton("Save Current Tab", "rbxassetid://14883119324", {
				MouseButton1Click = function()
					popups:Show("saveCurrentTab", select(-1, tabSystem:Get(self.selected)));
				end,
				Parent = base.buttons
			});

			editorButton("Execute Clipboard", "rbxassetid://14808228630", {
				MouseButton1Click = function()
					if getclipboard then
						cloneref(game:GetService("StarterGui")):SetCore("SendNotification", { -- SPDM Team | Execution Notification
							Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
							Text = "Clipboard Executed!"
						});
						internalUtils:Execute(getclipboard());
					end
				end,
				Parent = base.buttons
			});

			editorButton("Clear", "rbxassetid://14808219001", {
				MouseButton1Click = function()
					self:SetText("");
				end,
				Parent = base.buttons
			});

			editorButton("Execute", "rbxassetid://14808225296", {
				BackgroundColor3 = Color3.fromRGB(235, 69, 69),
				MouseButton1Click = function()
					cloneref(game:GetService("StarterGui")):SetCore("SendNotification", { -- SPDM Team | Execution Notification
						Title = "Codex " .. (isiosdevice() and "iOS" or "Android"),
						Text = "Editor Executed!"
					});
					internalUtils:Execute(self.text);
				end,
				Parent = base.buttons
			}, Color3.new(1, 1, 1));
		end

		tabSystem.onTabCreated:Connect(function(tab)
			local btn = tabButton.new(tab);
			btn.instance.Parent = base.tabButtons;
			map[tab.index] = btn;
			if userSettings.cache.executor.autoSaveTabs then
				tabSystem:Save();
			end
		end);

		tabSystem.onTabRemoved:Connect(function(tab)
			map[tab.index]:Destroy();
			map[tab.index] = nil;
			if userSettings.cache.executor.autoSaveTabs then
				tabSystem:Save();
			end
		end);

		tabSystem.onTabSelected:Connect(function(tab)
			if self.selected then
				map[self.selected]:Highlight(false);
			end
			map[tab.index]:Highlight(true);

			self.selected = tab.index;
			self:SetText(tab.content);
		end);

		if #tabSystem.cache > 0 then
			for i, v in tabSystem.cache do
				tabSystem.onTabCreated:Fire(v);
			end
			tabSystem:Select(tabSystem.cache[1].index);
		else
			tabSystem:Add("Script 1");
		end

		return base;
	end

	function editor:UpdateText(text: string, truncated: string)
		local truncatedText = truncated or string.sub(text, 1, 16384);
		self.text = text;

		tabSystem:UpdateContent(self.selected, text);
		base.contentContainer.lineNumbers.Text = generateLineNumberString(truncatedText);
		handleLexResult(lexer:Parse(truncatedText), #truncatedText < #text);
	end

	function editor:SetText(text: string)
		local truncatedText = string.sub(text, 1, 16384);
		base.contentContainer.inputBox.Text = truncatedText;
		editor:UpdateText(text, truncatedText)
	end

	framework.pages.editor.editor = editor;
end

do
	local signal = framework.dependencies.signal;
	local instanceUtils = framework.dependencies.utils.instance;

	framework.init = (function()
		local sig = signal.new();
		local directory = instanceUtils:DynamicParent(instanceUtils:Create("Folder", {
			Name = "Codex"
		}));
		local login;

		sig:Connect(function(shouldContinue, basis)
			if login then
				login:Destroy();
			end

			if shouldContinue then
				basis.gui.Enabled = true;
				basis.popups.Enabled = true;

				framework.popups.popups:RegisterGUI(basis.popups);
				framework.pages.navbar.navbar:Initialize(directory);
			end
		end);

		login = framework.pages.startup.startup(directory, sig);
	end);
end

arceus_libs.renderer.startRendering()
framework.init(); -- SPDM Team
