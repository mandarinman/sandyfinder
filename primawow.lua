if game.PlaceId == 4111023553 then
    repeat wait() until game:IsLoaded()
    local ohString1 = "A"
    local jobID = "none"
    local ohTable2 = {
        ["PrivateTest"] = false
    }
    game:GetService("ReplicatedStorage").Requests.StartMenu.Start:FireServer(ohString1, ohTable2)
    wait(0.5)
    pcall(function()
        local RL = game:GetService("ReplicatedStorage")
        local Req = RL.Requests
        local SM = Req.StartMenu
        local PS = SM.PickServer
        PS:FireServer(jobID)
    end)
end

if game.PlaceId == 6032399813 then
    repeat wait() until game:IsLoaded()
    local itemWhitelist = {"Curved", "Crypt", "Railblade", "Gran Sud", "Light's Final Toll", "Razor Cutlass"}
    local lplr = game.Players.Assanatal
    for _, player in pairs(game.Players:GetChildren()) do
        if player.Name == game.Players.LocalPlayer.Name then continue end
        for _, tool in pairs(player.Backpack:GetChildren()) do
            for _, itemName in pairs(itemWhitelist) do
                if string.find(tool.Name:lower(), itemName:lower()) then
                    local data = {
                        ["content"] = "<@919246967639519262>, the target is in "..tostring(game.PlaceId),
                        ["username"] = "PRIMADON SEX DUNGEON",
                        ["avatar_url"] = "https://c0.wallpaperflare.com/preview/908/958/489/primate-ape-monkey-mammal.jpg",
                        ["embeds"] = {
                            {
                                ["title"] = "PRIMADON'S TARGET: "..tostring(player.Name),
                                ["description"] = "Item: "..tostring(tool.Name),
                                ["type"] = "rich",
                                ["color"] = 22000,
                                ["footer"] = {
                                    ["icon_url"] = "https://c0.wallpaperflare.com/preview/908/958/489/primate-ape-monkey-mammal.jpg",
                                    ["text"] = "a"..tostring(game.JobId)
                                }
                            }    
                        }            
                    }
                    local newdata = game:GetService("HttpService"):JSONEncode(data)
                    local headers = {
                        ["content-type"] = "application/json"
                        
                    }
                    request = http_request or request or HttpPost or syn.request
                    local send = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                    request(send)
                end
            end
        end
    end
    
    math.randomseed(os.clock())
    local plrs = game.Players:GetChildren()
    local targetPlayer
    repeat wait()
	    targetPlayer = plrs[math.random(1,#plrs)]
	    if targetPlayer == lplr then targetPlayer = nil end
    until targetPlayer
    game.StarterGui:SetCore("PromptBlockPlayer", targetPlayer)
    wait(2)
    mouse1click(885, 636)
    wait(1)
    game:GetService'TeleportService':Teleport(4111023553)
end
