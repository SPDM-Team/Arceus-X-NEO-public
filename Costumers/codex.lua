loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/refs/heads/main/init.lua"))()

-- Beta testing
local whitelist = {
    "0cf0fb04cb7e5571", "30baba33dcefc57c", -- Android
    "94709c29191e6396", "41d9fd434a3716e7",
    "af15143601cdd261", "fd4e1f5c3b175b1d",
    "02b4b02b35dd9cc4", "4cd6f60cb195d6d9",
	
    "397A62E6-297F-4706-88AA-7C00CA31FB6B", -- iOS
    "2574FBB5-C46B-4CC6-AF83-86185A05F63D",
    "D92E826F-0C14-44C3-BB3C-82A499D97032"
}

local isfile = clonefunction(arceus and arceus.isarceusfile or isfile)
protectfunction(isfile)
local succ, oldUI = pcall(isfile, "data/OldUI")

if gethwid and table.find(whitelist, gethwid()) then
	warn("[!] THIS IS A BETA TESTING VERSION OF CODEX")
	if not succ or not oldUI then -- New UI
		return executecode(game:HttpGet("https://gist.githubusercontent.com/Riky47/1d3625ee40e98e70311370e8d6642172/raw/4a84e341778a006859ab6a2203ff32ea57c90a51/Codex-Beta.lua"))
	end
end

if not succ or not oldUI then -- New UI
	--return executecode(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))
	return executecode(game:HttpGet("https://gist.githubusercontent.com/Riky47/1d3625ee40e98e70311370e8d6642172/raw/4a84e341778a006859ab6a2203ff32ea57c90a51/Codex-Beta.lua"))
end

-- Old UI
executecode(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))
