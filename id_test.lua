local teleportService = game:GetService("TeleportService")
local player = game.Players.LocalPlayer
local placeId = game.PlaceId
local iq = player:WaitForChild("leaderstats"):WaitForChild("IQ").Value
local event = game:GetService("ReplicatedStorage").RemoteEvents.ChangeIQ

for i = iq, 200 do
    event:FireServer(i)
    -- autoreconnect to apply changes
    if i == 200 then teleportService:Teleport(placeId, player) end
    task.wait(0.1)
end
