-- SPDM File System adapter

local framework = ...
framework.env.arceus = framework.env.arceus or {}
(getgenv and getgenv() or {}).arceus = nil

framework.env.delfolder = framework.env.arceus.deletearceusfolder or framework.env.delfile
framework.env.makefolder = framework.env.arceus.makearceusfolder or framework.env.makefolder
framework.env.isfolder = framework.env.arceus.isarceusfolder or framework.env.isfolder

framework.env.writefile = framework.env.arceus.writearceusfile or framework.env.writefile
framework.env.listfiles = framework.env.arceus.listarceusfiles or framework.env.listfiles
framework.env.delfile = framework.env.arceus.deletearceusfile or framework.env.delfile
framework.env.readfile = framework.env.arceus.readarceusfile or framework.env.readfile
framework.env.isfile = framework.env.arceus.isarceusfile or framework.env.isfile
