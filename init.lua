local placeid = game.PlaceId

local preloadasync do
  preloadasync = function()
    -- ContentProvider Bypasses
    local Content = cloneref(game:GetService("ContentProvider"));
    local CoreGui = cloneref(game:GetService("CoreGui"));
    local randomizedCoreGuiTable;
    local randomizedGameTable;
    
    local coreguiTable = {}
    
    game:GetService("ContentProvider"):PreloadAsync({CoreGui}, function(assetId) --use preloadasync to patch preloadasync :troll:
        if not assetId:find("rbxassetid://") then
            table.insert(coreguiTable, assetId);
    end
    end)
    local gameTable = {}
    
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("ImageLabel") then
            if v.Image:find('rbxassetid://') and v:IsDescendantOf(CoreGui) then else
                table.insert(gameTable, v.Image)
            end
        end
    end
    
    local function randomizeTable(t)
        local n = #t
        while n > 0 do
            local k = math.random(n)
            t[n], t[k] = t[k], t[n]
            n = n - 1
        end
        return t
    end
    
    local ContentProviderBypass
    ContentProviderBypass = hookmetamethod(game, "__namecall", function(self, Instances, ...)
        local method = getnamecallmethod();
        local args = ...;
    
        if not checkcaller() and (method == "preloadAsync" or method == "PreloadAsync") then
            if Instances and Instances[1] and self.ClassName == "ContentProvider" then
                if Instances ~= nil then
                    if typeof(Instances[1]) == "Instance" and (table.find(Instances, CoreGui) or table.find(Instances, game)) then
                        if Instances[1] == CoreGui then
                            randomizedCoreGuiTable = randomizeTable(coreguiTable)
                            return ContentProviderBypass(self, randomizedCoreGuiTable, ...)
                        end
    
                        if Instances[1] == game then
                            randomizedGameTable = randomizeTable(gameTable)
                            return ContentProviderBypass(self, randomizedGameTable, ...)
                        end
                    end
                end
            end
        end
    
        return ContentProviderBypass(self, Instances, ...)
    end)
    
    local preloadBypass; preloadBypass = hookfunction(Content.PreloadAsync, function(a, b, c)
        if not checkcaller() then
            if typeof(a) == "Instance" and tostring(a) == "ContentProvider" and typeof(b) == "table" then
                if (table.find(b, CoreGui) or table.find(b, game)) and not (table.find(b, true) or table.find(b, false)) then
                    if b[1] == CoreGui then -- Double Check
                        randomizedCoreGuiTable = randomizeTable(coreguiTable)
                        return preloadBypass(a, randomizedCoreGuiTable, c)
                    end
                    if b[1] == game then -- Triple Check
                        randomizedGameTable = randomizeTable(gameTable)
                        return preloadBypass(a, randomizedGameTable, c)
                    end
                end
            end
        end
    
        return preloadBypass(a, b, c)
    end)
  end
end

local whitelist, torun = {
  --[88066229991962] = "Mingle",
  --[14708612238] = "Bazooka"
}, {
  [2788229376] = preloadasync
}

if whitelist[placeid] then return end
local action = torun[placeid]
if action then action() end
