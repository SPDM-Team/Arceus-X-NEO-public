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
	loadstring(game:HttpGet("https://gist.githubusercontent.com/Riky47/e700ab56da79354c03c2a869ba7c69b8/raw/e815b85365e71fd58addbea6badf7733b9575223/Anemo%2520-%2520Testing"))()
	warn("[!] FEATURES TESTING VERSION.")
	return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))()
