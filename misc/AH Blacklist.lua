local blacklist = {}
for _, v in pairs(getgenv().blackList) do
    table.insert(blacklist, string.lower(v))
end

game.Players.PlayerAdded:Connect(function(plr)
    if table.find(blacklist, plr.Name:lower()) then
        if plr.Name ~= plr.DisplayName then
            game.Players:Chat(":loadb %s | :chatnotify all DOM-AH has used the ban hammer on %s(%s) | :fviewcam %s %s":format(getgenv().crash, plr.DisplayName, plr.Name, plr.Name, getgenv().build))
        else
            game.Players:Chat(":loadb %s | :chatnotify all DOM-AH has used the ban hammer on %s | :fviewcam %s %s":format(getgenv().crash, plr.Name, plr.Name, getgenv().build))
        end
        wait(30)
        if plr ~= nil then
            warn("Player has survived!")
        end
    end
end)
