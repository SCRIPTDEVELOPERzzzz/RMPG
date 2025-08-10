local Whitelist = {
  ["Russelarigore22"]
  ["The_LegendarkNinja"]
  ["Alt_golf67"]
  ["YNU_PQD"]
  ["ELKhodi4531"]
  ["gorgeportabes"]
  ["Queen_aliya189"]
}

local Players = game:GetService("Players")

local function isWhitelisted(username)
    return Whitelist[username] == true
end

Players.PlayerAdded:Connect(function(player)
    -- Delay to allow character to load and see message if desired
    task.wait(1)
    if not isWhitelisted(player.Name) then
        player:Kick("You are not whitelisted! Please contact the game owner.")
    end
end)

-- Optionally, kick any non-whitelisted player who is already in the game (in case the script is added after players are present)
for _, player in ipairs(Players:GetPlayers()) do
    task.spawn(function()
        task.wait(1)
        if not isWhitelisted(player.Name) then
            player:Kick("Na kick ka Kasi bayot ka")
        end
    end)
end
