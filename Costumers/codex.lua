loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/refs/heads/main/init.lua"))()

-- Beta testing
local whitelist = {
    "0cf0fb04cb7e5571", "30baba33dcefc57c", -- Android
    "94709c29191e6396", "41d9fd434a3716e7",
    "af15143601cdd261", "74f9c74111c1e6f2",
    "fd4e1f5c3b175b1d", "74f9c74111c1e6f2",
    "02b4b02b35dd9cc4",
	
    "397A62E6-297F-4706-88AA-7C00CA31FB6B", -- iOS
    "2574FBB5-C46B-4CC6-AF83-86185A05F63D"
}

if gethwid and table.find(whitelist, gethwid()) then
	warn("[!] THIS IS A BETA TESTING VERSION OF CODEX")
	return executecode(game:HttpGet("https://gist.githubusercontent.com/Riky47/1d3625ee40e98e70311370e8d6642172/raw/8534fbcdb0189b9d408dbe2d55ff7be89748a8ed/Codex-Beta.lua"))
end

executecode(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))
