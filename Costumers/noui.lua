for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
    executecode(arceus.readarceusfile(file))
end
task.spawn(function()
    while true do
        local response = game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/refs/heads/main/kill_apk", true)
        response = response:gsub("%s+", "")
        print(response)
        if response then
            print("hi")
            arceus.crash()
            break -- Exit the loop after crashing
        else
            task.wait(5) -- Wait for 5 seconds before re-checking
        end
    end
end)
