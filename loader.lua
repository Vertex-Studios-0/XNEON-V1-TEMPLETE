local player = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")

-- ⚙️ CONFIGURATION: Paste your Raw status.txt URL here
local statusUrl = "GITHUB-RAW-LINK-TO-YOUR-STATUS"

-- ⚙️ CONFIGURATION: Paste your Discord Webhook URL below
-- REPLACE "discord.com" WITH "webhook.cool" TO BYPASS ROBLOX WEB BLOCKS
local discordWebhookUrl = "PUT-YOUR-DISCORD-WEBHOOK"

-- 🌀 CACHE BYPASS: Forces GitHub to give Roblox the freshest live file
local freshUrl = statusUrl .. "?t=" .. tostring(os.time())

-- 🌐 Download the status text securely
local success, currentStatus = pcall(function()
    return game:HttpGet(freshUrl)
end)

if success and currentStatus then
    currentStatus = string.gsub(currentStatus, "%s+", "")
end

-- 🛑 REMOTE KILL SWITCH
if not success or currentStatus ~= "ON" then
    player:Kick("\n\n[XNEON V1 SCRIPT MANGMENT SYSTEM]\nThis script has been shutdown.")
    task.wait(1)
    error("Script compilation halted by remote kill-switch.")
    return
end

-- 📨 DISCORD WEBHOOK LOGGING
task.spawn(function()
    -- Gather tracking details from the executor environment
    local executorUsed = identifyexecutor and identifyexecutor() or "Unknown Executor"
    local jobID = game.JobId ~= "" and game.JobId or "Studio / Solo Session"
    
    -- Format the message payload into a clean Discord Embed card
    local payload = HttpService:JSONEncode({
        ["embeds"] = {{
            ["title"] = "🚀 XNEON V1 - Script Executed",
            ["color"] = 65280, -- Green color code
            ["fields"] = {
                {["name"] = "Player Name", ["value"] = player.Name, ["inline"] = true},
                {["name"] = "Roblox User ID", ["value"] = tostring(player.UserId), ["inline"] = true},
                {["name"] = "Account Age (Days)", ["value"] = tostring(player.AccountAge), ["inline"] = true},
                {["name"] = "Game ID (PlaceId)", ["value"] = tostring(game.PlaceId), ["inline"] = true},
                {["name"] = "Executor Engine", ["value"] = executorUsed, ["inline"] = false},
                {["name"] = "Server Job ID (For Tracking)", ["value"] = jobID, ["inline"] = false}
            },
            ["timestamp"] = DateTime.now():ToIsoDate()
        }}
    })

    -- Post the payload data to your Discord proxy channel
    pcall(function()
        game:HttpPost(discordWebhookUrl, payload, "application/json")
    end)
end)

-- =====================================================================
-- 🚀 PASTE YOUR ENTIRE LUA EXPLOIT SCRIPT STARTING AT LINE 63
-- =====================================================================
