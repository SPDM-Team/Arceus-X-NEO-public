--[[
local HTTP_SERVICE = cloneref(game:GetService("HttpService"))
local hwid = gethwid();
local encrypted = clonefunction(arceus.encrypted);
protectfunction(encrypted);
protectfunction(arceus.encrypted);
local status, key = pcall(function()
    return arceus.readarceusfile("Configs/key.txt")
end)
local status2, json = pcall(function()
    return arceus.readarceusfile("Configs/claimed.txt");
end)

if status then
    local result = "";
    if status2 then
        local base64decode = crypt.base64decode(json);
        local decrypt = crypt.decrypt(base64decode, encrypted(), encrypted(), "CBC");
        local decrypted_data = HTTP_SERVICE:JSONDecode(decrypt);
        result = game:HttpGet("https://spdmteam.com/api/noui/claim?key=" .. key .. "&hwid=" .. hwid .. "&random=" .. decrypted_data.random);
    else
        result = game:HttpGet("https://spdmteam.com/api/noui/claim?key=" .. key .. "&hwid=" .. hwid);
    end
    local data = HTTP_SERVICE:JSONDecode(result);
    if data then
        if data.status == "Claimed" then
            local jsonData = {
                random = data.random,
                hwid = hwid,
                key = key
            }
            local jsonString = HTTP_SERVICE:JSONEncode(jsonData)
            local crypted = crypt.encrypt(jsonString, encrypted(), encrypted(), "CBC");
            local base64 = crypt.base64encode(crypted);
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/claimed.txt", base64)
            end)
            for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
                executecode(arceus.readarceusfile(file))
            end
        elseif data.status == "GoodToGo" then
            for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
                executecode(arceus.readarceusfile(file))
            end
        elseif data.status == "Invalid Hwid" then
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/error.txt", "Invalid Hwid");
            end)
        elseif data.status == "Invalid Key" then
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/error.txt", "Invalid Key")
            end)
        elseif data.status == "Expired Key" then
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/error.txt", "Expired Key")
            end)
        end
    end
else
    local result = game:HttpGet("https://spdmteam.com/api/noui/claim?hwid=" .. hwid);
    if data.status == "GoodToGo" then
            for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
                executecode(arceus.readarceusfile(file))
            end
    elseif data.status == "Invalid Hwid" then
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/error.txt", "Invalid Hwid");
            end)
    elseif data.status == "Invalid Key" then
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/error.txt", "Invalid Key")
            end)
    elseif data.status == "Expired Key" then
            local writeStatus, writeError = pcall(function()
                arceus.writearceusfile("Configs/error.txt", "Expired Key")
            end)
    end
end
arceus = nil;
--]]
local encrypted = clonefunction(arceus.encrypted);
protectfunction(encrypted);
protectfunction(arceus.encrypted);
for _, file in ipairs(arceus.listarceusfiles("Autoexec")) do
    executecode(arceus.readarceusfile(file))
end
getgenv().arceus = nil;
