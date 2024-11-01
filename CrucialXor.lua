local UIS = game:GetService("UserInputService")
local TS = game:GetService("TeleportService")

local WS = game.Workspace
local RS = game.ReplicatedStorage

local plrs = game.Players
local client = plrs.LocalPlayer
local char = client.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

client.Chatted:Connect(function(msg)
    local split = string.split(msg, " ")

    if split[1] == "/tp" then
        local username = split[2]
        local target = plrs:FindFirstChild(username)

        if target then
            hrp.CFrame = target.Character.HumanoidRootPart.CFrame
        end
    end
end)