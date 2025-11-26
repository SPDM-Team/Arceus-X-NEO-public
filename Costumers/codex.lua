loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/refs/heads/main/init.lua"))()

-- Beta testing
local whitelist = {"af15143601cdd261","f7102dcfb20dae30","9b9e2c926606eeb9","73c1100e8694ce04","5ade587278748002"}

local isfile = clonefunction(arceus and arceus.isarceusfile or isfile)
protectfunction(isfile)
local succ, oldUI = pcall(isfile, "data/OldUI")

if gethwid and table.find(whitelist, gethwid()) then
	warn("[!] THIS IS A BETA TESTING VERSION OF CODEX")
	if not succ or not oldUI then -- New UI
		return executecode(game:HttpGet("https://gist.githubusercontent.com/Riky47/24098f62ce8ace77a5be95f46d41a8c2/raw/a7c6e2e27600760859401d7bfa29bc3a5cf249e3/Codex-Beta-2"))
	end
end

if not succ or not oldUI then -- New UI
	--return executecode(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))
	return executecode(game:HttpGet("https://gist.githubusercontent.com/Riky47/24098f62ce8ace77a5be95f46d41a8c2/raw/a7c6e2e27600760859401d7bfa29bc3a5cf249e3/Codex-Beta-2"))
	--return executecode(game:HttpGet("https://gist.githubusercontent.com/Riky47/1d3625ee40e98e70311370e8d6642172/raw/4a84e341778a006859ab6a2203ff32ea57c90a51/Codex-Beta.lua"))
end

-- Old UI
executecode(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/CodexUI"))
