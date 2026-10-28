local Params = {
	RepoURL = "https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/",
	SSI = "saveinstance",
}

local GLOBAL_ENV = getgenv and getgenv() or _G or shared
local synsaveinstance = GLOBAL_ENV.saveinstance
if synsaveinstance then
	return synsaveinstance
end

synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
GLOBAL_ENV.saveinstance = synsaveinstance

local Options = {} -- Documentation here https://luau.github.io/UniversalSynSaveInstance/api/SynSaveInstance
return synsaveinstance(Options)