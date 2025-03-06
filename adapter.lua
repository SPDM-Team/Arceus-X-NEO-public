do -- Arceus X Adapeter
	local uis = cloneref(game:GetService("UserInputService"))
	if (uis:GetPlatform() == Enum.Platform.IOS or not arceus) then
		local arceus, ax = arceus or {}, {}
		local function buddy() end
		
		-- security
		local writefile = clonefunction(writefile)
		protectfunction(writefile)
		
		local lower, match = clonefunction(string.lower), clonefunction(string.match)
		protectfunction(lower)
		protectfunction(match)
		
		local wf = function(path: string, ...)
			local folder, lower = "autoexec", lower(path)
			if match(lower, "^" ..folder)
				or match(lower, "^/" ..folder)
				or match(lower, "^\\" ..folder)

			then -- returns in case error is somehow hooked
				return error("attempt to write in the auto-execution folder")
			end

			writefile(path, ...)
		end
		
		protectfunction(wf)
		getgenv().writefile = wf
		
		-- Arceus table
		ax.is_ios = arceus.is_ios or function() return uis:GetPlatform() == Enum.Platform.IOS end
		ax.is_vng = arceus.is_vng or function() return false end
		ax.getversion = arceus.getversion or function()
			return select(2, identifyexecutor()) or "1.0.0"
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
				if executecode then
					return executecode(content)
				end
				
				task.spawn(loadstring, content)
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
		
		for _, closure in pairs(arceus) do
			protectfunction(closure)
		end
		
		for _, closure in pairs(ax) do
			protectfunction(closure)
		end
		
		protectfunction(ax)
		getgenv().arceus = ax
	end
end
