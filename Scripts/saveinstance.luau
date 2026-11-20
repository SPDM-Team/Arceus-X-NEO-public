local Params = {
	RepoURL = "https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/",
	SSI = "saveinstance",
}

return assert(loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI))()
