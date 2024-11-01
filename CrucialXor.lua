local UIS = game:GetService("UserInputService")
local TS = game:GetService("TeleportService")

local WS = game.Workspace
local RS = game.ReplicatedStorage

local plrs = game.Players
local client = plrs.LocalPlayer
local char = client.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

local enabled = false

UIS.InputBegan:Connect(function(key)
    if key.KeyCode == Enum.KeyCode.F2 then
        enabled = not enabled
    end
end)

client.Chatted:Connect(function(msg)
    local split = string.split(msg, " ")

    if split[1] == "/tp" then
        local username = split[2]
        local mode = split[3]
        local target = plrs:FindFirstChild(username)

        if target then
            hrp.CFrame = target.Character.HumanoidRootPart.CFrame
        end
        if split[3] == "always" then
            while enabled do
                task.wait(0.5)
                hrp.CFrame = target.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)