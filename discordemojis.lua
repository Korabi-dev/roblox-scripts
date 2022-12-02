local emojis = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/discordemojis.json", true))
local chatbar = nil
repeat task.wait() until game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do
    if v.Name == "ChatBar" then
        chatbar = v
    end
end

chatbar:GetPropertyChangedSignal("Text"):Connect(function()
    local reversed = string.reverse(chatbar.Text)
    if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
        local theend = string.find(reversed, ":", 2)
        local emojiname = string.reverse(string.sub(reversed, 2, theend - 1)) 
        if emojis[emojiname] ~= nil then
            local message = string.reverse(string.sub(reversed, theend + 1, -1))..emojis[emojiname].." "
            chatbar.Text = message
        end
    end
end)

game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(desc)
    if desc.Name == "ChatBar" then
        chatbar = desc
        chatbar:GetPropertyChangedSignal("Text"):Connect(function()
            local reversed = string.reverse(chatbar.Text)
            if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
                local theend = string.find(reversed, ":", 2)
                local emojiname = string.reverse(string.sub(reversed, 2, theend - 1)) 
                if emojis[emojiname] ~= nil then
                    local message = string.reverse(string.sub(reversed, theend + 1, -1))..emojis[emojiname].." "
                    chatbar.Text = message
                end
            end
        end)
    end
end)
