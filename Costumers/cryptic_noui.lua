local listarceusfiles = clonefunction(arceus.listarceusfiles);
local readarceusfile = clonefunction(arceeus.readarceusfile);
local execod = clonefunction(executecode);
protectfunction(listarceusfiles);
protectfunction(arceus.listarceusfiles);
protectfunction(readarceusfile);
protectfunction(arceus.readarceusfile);
protectfunction(execod);
getgenv().arceus = nil;
for _, file in ipairs(listarceusfiles("Autoexec")) do
    execod(readarceusfile(file))
end


