local UIS = game:GetService("UserInputService")
local players = game.Players
local client = game.Players.LocalPlayer
local char = client.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

UIS.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.T then
		client.Chatted:Connect(function(msg)
			hrp.CFrame = players:FindFirstChild(msg)
		end)
	end
end)