local UIS = game:GetService("UserInputService")
local players = game:GetService("Players")
local client = players.LocalPlayer
local char = client.Character or client.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local function teleportToPlayer(playerName)
    local targetPlayer = players:FindFirstChild(playerName)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        hrp.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
    else
        warn("Player not found or doesn't have a valid HumanoidRootPart")
    end
end

local function fireAllRemoteEvents()
    for _, remote in pairs(game:GetDescendants()) do
        if remote:IsA("RemoteEvent") then
            remote:FireServer()
        end
    end
end

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        client.Chatted:Connect(function(msg)
            teleportToPlayer(msg)
        end)
    elseif input.KeyCode == Enum.KeyCode.R then
        fireAllRemoteEvents()
    end
end)