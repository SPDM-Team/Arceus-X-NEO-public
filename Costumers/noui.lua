local hwid = gethwid();
local status, key = pcall(function()
    return arceus.readarceusfile("Configs/key.txt")
end)

if status then
    print("file exists")
end

for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
    executecode(arceus.readarceusfile(file))
end
