local http = cloneref(game:GetService("HttpService"))
local plr = cloneref(game:GetService("Players")).LocalPlayer

local succ, result = pcall(function()
	return http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/unauthorized.json"))
end)

if succ and result[plr.UserId] then
	player:Kick("unauthorized commercial use.")
	return
end

-- no
executecode(game:HttpGet("https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/delta_ax"))
