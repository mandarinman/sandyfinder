repeat wait() until game:IsLoaded()
wait(5)

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
