for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
    executecode(arceus.readarceusfile(file))
end
