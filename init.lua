if gethwid() == "02b4b02b35dd9cc4" then -- For testing
	warn("Testing mode")
	repeat task.wait() until arceus
	getgenv().ax = arceus

	if isfile("Init.lua") then
		executecode(readfile("Init.lua"))
		return error("Testing mode") -- stops the original code
	end
end

--[[local placeid = game.PlaceId

local runtasks do
	local max_yield = 1.25
	
	runtasks = function(...: (any) -> ())
		local args = {...}
		local r = #args
		
		for _, func in ipairs(args) do
			local callback = Instance.new("BindableEvent")
			callback.Event:Once(function()
				r -= 1
				callback:Destroy()
			end)
					
			task.spawn(function()
				task.spawn(function()
					task.wait(max_yield)
					pcall(callback.Fire, callback)
				end)

				func()
				pcall(callback.Fire, callback)
			end)
		end
		
		repeat task.wait() until r == 0
	end
end

local gcinf do
	gcinf = function()
		--repeat task.wait() until game:IsLoaded()

		local Amplitude = 200
		local RandomValue = {-200,200}
		local RandomTime = {.1, 1}

		local floor = math.floor
		local cos = math.cos
		local sin = math.sin
		local acos = math.acos
		local pi = math.pi

		local Maxima = 0

		--Waiting for gcinfo to decrease
		while task.wait() do
			if gcinfo() >= Maxima then
				Maxima = gcinfo()
			else
				break
			end
		end

		--task.wait(0.30)
		local OldGcInfo = gcinfo()+Amplitude
		local tick = 0

		--Spoofing gcinfo
		local function getreturn()
			local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
			return floor(OldGcInfo + Formula);
		end

		local Old; Old = hookfunction(getrenv().gcinfo, function(...)
			return getreturn();
		end)
		local Old2; Old2 = hookfunction(getrenv().collectgarbage, function(arg, ...)
			local suc, err = pcall(Old2, arg, ...)
			if suc and arg == "count" then
				return getreturn();
			end
			return Old2(arg, ...);
		end)

		game:GetService("RunService").Stepped:Connect(function()
			local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude)
			if Formula > ((acos(cos(pi * (tick)+.01))/pi * (Amplitude * 2)) + -Amplitude) then
				tick = tick + .07
			else
				tick = tick + 0.01
			end
		end)

		local old1 = Amplitude
		for i,v in next, RandomTime do
			RandomTime[i] = v * 10000
		end

		local RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000

		--I can make it 0.003 seconds faster, yea, sure
		while wait(RandomTime) do
			Amplitude = math.random(old1+RandomValue[1], old1+RandomValue[2])
			RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000
		end
	end
end

local memoryv1 do
	memoryv1 = function()
		--repeat task.wait() until game:IsLoaded()

		local RunService = cloneref(game:GetService("RunService"))
		local Stats = cloneref(game:GetService("Stats"))

		local CurrMem = Stats:GetTotalMemoryUsageMb();
		local Rand = 0

		RunService.Stepped:Connect(function()
			local random = Random.new()
			Rand = random:NextNumber(-10, 10);
		end)

		local function GetReturn()
			return CurrMem + Rand;
		end

		local _MemBypass
		_MemBypass = hookmetamethod(game, "__namecall", function(self,...)
			local method = getnamecallmethod();

			if not checkcaller() then
				if typeof(self) == "Instance" and (method == "GetTotalMemoryUsageMb" or method == "getTotalMemoryUsageMb") and self.ClassName == "Stats" then
					return GetReturn();
				end
			end

			return _MemBypass(self,...)
		end)

		-- Indexed Versions
		local _MemBypassIndex; _MemBypassIndex = hookfunction(Stats.GetTotalMemoryUsageMb, function(self, ...)
			if not checkcaller() then
				if typeof(self) == "Instance" and self.ClassName == "Stats" then
					return GetReturn();
				end
			end
		end)
	end
end

local memoryv2 do
	memoryv2 = function()
		--repeat task.wait() until game:IsLoaded()

		local RunService = cloneref(game:GetService("RunService"))
		local Stats = cloneref(game:GetService("Stats"))

		local CurrMem = Stats:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Gui);
		local Rand = 0

		RunService.Stepped:Connect(function()
			local random = Random.new()
			Rand = random:NextNumber(-0.1, 0.1);
		end)

		local function GetReturn()
			return CurrMem + Rand;
		end

		local _MemBypass
		_MemBypass = hookmetamethod(game, "__namecall", function(self,...)
			local method = getnamecallmethod();

			if not checkcaller() then
				if typeof(self) == "Instance" and (method == "GetMemoryUsageMbForTag" or method == "getMemoryUsageMbForTag") and self.ClassName == "Stats" then
					return GetReturn();
				end
			end

			return _MemBypass(self,...)
		end)

		-- Indexed Versions
		local _MemBypassIndex; _MemBypassIndex = hookfunction(Stats.GetMemoryUsageMbForTag, function(self, ...)
			if not checkcaller() then
				if typeof(self) == "Instance" and self.ClassName == "Stats" then
					return GetReturn();
				end
			end
		end)
	end
end

local preloadasync do
	preloadasync = function()
		-- ContentProvider Bypasses
		local Content = cloneref(game:GetService("ContentProvider"));
		local CoreGui = cloneref(game:GetService("CoreGui"));
		local randomizedCoreGuiTable;
		local randomizedGameTable;

		local coreguiTable = {}

		game:GetService("ContentProvider"):PreloadAsync({CoreGui}, function(assetId) --use preloadasync to patch preloadasync :troll:
			if not assetId:find("rbxassetid://") then
				table.insert(coreguiTable, assetId);
			end
		end)
		local gameTable = {}

		for i, v in pairs(game:GetDescendants()) do
			if v:IsA("ImageLabel") then
				if v.Image:find('rbxassetid://') and v:IsDescendantOf(CoreGui) then else
					table.insert(gameTable, v.Image)
				end
			end
		end

		local function randomizeTable(t)
			local n = #t
			while n > 0 do
				local k = math.random(n)
				t[n], t[k] = t[k], t[n]
				n = n - 1
			end
			return t
		end

		local ContentProviderBypass
		ContentProviderBypass = hookmetamethod(game, "__namecall", function(self, Instances, ...)
			local method = getnamecallmethod();
			local args = ...;

			if not checkcaller() and (method == "preloadAsync" or method == "PreloadAsync") then
				if Instances and Instances[1] and self.ClassName == "ContentProvider" then
					if Instances ~= nil then
						if typeof(Instances[1]) == "Instance" and (table.find(Instances, CoreGui) or table.find(Instances, game)) then
							if Instances[1] == CoreGui then
								randomizedCoreGuiTable = randomizeTable(coreguiTable)
								return ContentProviderBypass(self, randomizedCoreGuiTable, ...)
							end

							if Instances[1] == game then
								randomizedGameTable = randomizeTable(gameTable)
								return ContentProviderBypass(self, randomizedGameTable, ...)
							end
						end
					end
				end
			end

			return ContentProviderBypass(self, Instances, ...)
		end)

		local preloadBypass; preloadBypass = hookfunction(Content.PreloadAsync, function(a, b, c)
			if not checkcaller() then
				if typeof(a) == "Instance" and tostring(a) == "ContentProvider" and typeof(b) == "table" then
					if (table.find(b, CoreGui) or table.find(b, game)) and not (table.find(b, true) or table.find(b, false)) then
						if b[1] == CoreGui then -- Double Check
							randomizedCoreGuiTable = randomizeTable(coreguiTable)
							return preloadBypass(a, randomizedCoreGuiTable, c)
						end
						if b[1] == game then -- Triple Check
							randomizedGameTable = randomizeTable(gameTable)
							return preloadBypass(a, randomizedGameTable, c)
						end
					end
				end
			end

			return preloadBypass(a, b, c)
		end)
	end
end

local textbox do
	textbox = function()
		local _IsDescendantOf = game.IsDescendantOf

		local TextboxBypass
		TextboxBypass = hookmetamethod(game, "__namecall", function(self,...)
			local method = getnamecallmethod();
			local args = ...;

			if not checkcaller() then
				if typeof(self) == "Instance" and method == "GetFocusedTextBox" and self.ClassName == "UserInputService" then
					local Textbox = TextboxBypass(self,...);
					if Textbox and typeof(Textbox) == "Instance" then
						local succ,err = pcall(function() _IsDescendantOf(Textbox, Bypassed_Dex) end)

						if err and err:match("The current identity") then
							return nil;
						end
					end
				end
			end

			return TextboxBypass(self,...);
		end)
	end
end

local proxy do
	proxy = function()
		local TableNumbaor001 = {}
		local SomethingOld;
		SomethingOld = hookfunction(getrenv().newproxy, function(...)
			local proxy = SomethingOld(...)
			table.insert(TableNumbaor001, proxy)
			return proxy
		end)

		local RunService = cloneref(game:GetService("RunService"))
		RunService.Stepped:Connect(function()
			for i,v in pairs(TableNumbaor001) do
				if v == nil then end
			end
		end)
	end
end

local whitelist, torun = {
	--[88066229991962] = "Mingle",
	--[14708612238] = "Bazooka"
}, {
	[2788229376] = function()
		runtasks(
			preloadasync,
			memoryv1,
			memoryv2,
			textbox,
			gcinf,
			proxy
		)
	end
}

if whitelist[placeid] then return end
local action = torun[placeid]
if action then action() end
--]]
