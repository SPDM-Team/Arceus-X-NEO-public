do -- Arceus X Adapeter
	local uis = cloneref(game:GetService("UserInputService"))
	local platform = uis:GetPlatform()
	
	-- security
	local clonefunction = clonefunction(clonefunction)
	local protectfunction = protectfunction or clonefunction(protectfunction) or function(...) return ... end
	protectfunction(protectfunction)
	protectfunction(clonefunction)
		
	if (platform == Enum.Platform.IOS or not arceus) then
		local arceus, ax = arceus or {}, {}
		local function buddy() end
		
		protectfunction(writefile) -- protects the og one
		local writefile = clonefunction(writefile)
		protectfunction(writefile)
		
		local lower, match, err = clonefunction(string.lower), clonefunction(string.match), clonefunction(error)
		local spwn, load = clonefunction(task.spawn), clonefunction(loadstring)
		local folders = {"autoexec", "script hub", "configs"}
		local sel = clonefunction(select)
		protectfunction(folders)
		protectfunction(lower)
		protectfunction(match)
		protectfunction(load)
		protectfunction(spwn)
		protectfunction(err)
		protectfunction(sel)
		
		local idexec, execode = clonefunction(identifyexecutor), executecode and clonefunction(executecode) or function(content)
			spwn(load, content)
		end
		
		protectfunction(execode)
		protectfunction(idexec)
		
		local wf = function(path: string, ...)
			local low = lower(path)
			for _, folder in folders do
				if match(low, "^" ..folder)
					or match(low, "^/" ..folder)
					or match(low, "^\\" ..folder)

				then -- returns in case error is somehow hooked
					return err("Attempt to write in a restricted folder")
				end
			end

			writefile(path, ...)
		end
		
		protectfunction(wf)
		getgenv().writefile = wf
		
		-- Arceus table
		ax.is_ios = arceus.is_ios or function() return platform == Enum.Platform.IOS end
		ax.is_vng = arceus.is_vng or function() return false end
		ax.getversion = arceus.getversion or function()
			return sel(2, idexec()) or "1.0.0"
		end
		
		ax.deletearceusfolder = arceus.deletearceusfolder or delfolder or buddy
		ax.makearceusfolder = arceus.makearceusfolder or makefolder or buddy
		ax.isarceusfolder = arceus.isarceusfolder or isfolder or buddy
		
		ax.deletearceusfile = arceus.deletearceusfile or delfile or buddy
		ax.listarceusfiles = arceus.listarceusfiles or listfiles or buddy
		ax.readarceusfile = arceus.readarceusfile or readfile or buddy
		ax.isarceusfile = arceus.isarceusfile or isfile or buddy
		
		ax.getfilesize = arceus.getfilesize or function() return "N/A" end
		ax.writearceusfile = arceus.writearceusfile or writefile
		
		ax.doarceusfile = arceus.doarceusfile or dofile or function(...)
			if ax.isarceusfile(...) then
				local content = ax.readarceusfile(...)
				return execode(content)
			end
		end
		
		-- bad
		ax.ispermissiongranted = arceus.ispermissiongranted or buddy
		ax.retrievecustomasset = arceus.retrievecustomasset or buddy
		ax.deletecustomasset = arceus.deletecustomasset or buddy
		ax.writecustomasset = arceus.writecustomasset or buddy
		ax.WOWPALAKSZMNXBRU = arceus.WOWPALAKSZMNXBRU or buddy
		ax.SDKEUIEWOWOASKS = arceus.SDKEUIEWOWOASKS or buddy
		ax.UJSWOOALSKDSJEO = arceus.UJSWOOALSKDSJEO or buddy
		ax.iscustomasset = arceus.iscustomasset or buddy
		ax.openurl = arceus.openurl or buddy
		
		for _, closure in pairs(ax) do
			protectfunction(closure)
		end
		
		protectfunction(ax)
		getgenv().arceus = ax
	end
	
	if arceus then
		protectfunction(arceus)
		for _, closure in pairs(arceus) do
			protectfunction(closure)
		end
	end
end
