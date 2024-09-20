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
	warn("Version tester executing init file.")
	executecode(readfile("Init.lua"))
	warn("[!] FEATURES TESTING VERSION.")
	return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))()
