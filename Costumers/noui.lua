
local HTTP_SERVICE = cloneref(game:GetService("HttpService"))
local hwid = gethwid();
local status, key = pcall(function()
    return arceus.readarceusfile("Configs/key.txt")
end)

if status then
    local result = game:HttpGet("https://spdmteam.com/api/noui/claim?key=" .. key);
    local data = HTTP_SERVICE:JSONDecode(result);
    if data and data.status == "Claimed" then
        local jsonData = {
            random = data.random,
            hwid = hwid,
            key = key
        }
        local jsonString = HTTP_SERVICE:JSONEncode(jsonData)
        
        local writeStatus, writeError = pcall(function()
            arceus.writearceusfile("Configs/claimed.txt", jsonString)
        end)
    end
end

for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
    executecode(arceus.readarceusfile(file))
end
