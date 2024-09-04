-- stop being braindead pls -rexi

local unauthorizedUsernames = {
    "BL_XAA",
    "BL_TAA",
    "BL_UAA",
    "MM2_TAA",
    "MM2_PAA",
    "MM2_DAA",
    "AM_CXC"
}

local player = game.Players.LocalPlayer

local function checkLocalPlayer()
    for _, username in ipairs(unauthorizedUsernames) do
        if player.Name == username then
            player:Kick("unauthorized commercial use.")
            break
        end
    end
end

checkLocalPlayer()

-- Testing updates without affecting users -riky
if gethwid and gethwid() == "0cf0fb04cb7e5571" then
	loadstring(game:HttpGet("https://gist.githubusercontent.com/Riky47/e700ab56da79354c03c2a869ba7c69b8/raw/e815b85365e71fd58addbea6badf7733b9575223/Anemo%2520-%2520Testing"))()
	warn("[!] FEATURES TESTING VERSION.")
	return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))()
