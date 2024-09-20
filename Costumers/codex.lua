-- stop being braindead pls -rexi

local http = cloneref(game:GetService("HttpService"))
local plr = cloneref(game:GetService("Players")).LocalPlayer

local succ, result = pcall(function()
	return http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/unauthorized.json"))
end)

if succ and result[plr.UserId] then
	player:Kick("unauthorized commercial use.")
	return
end

-- Testing updates without affecting users -riky
if gethwid and gethwid() == "0cf0fb04cb7e5571" then
	loadstring(game:HttpGet("https://gist.githubusercontent.com/Riky47/9b0e438a9d79404f86b4a3c4c58fc893/raw/22f1b19c7dc68cdc054f6d88838c1594a93b7663/HydraWare"))()
	warn("[!] FEATURES TESTING VERSION.")
	return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))()
