local UIS = game:GetService("UserInputService")
local players = game.Players
local client = game.Players.LocalPlayer
local char = client.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

client.Chatted:Connect(function(msg)
	UIS.InputBegan:Connect(function(key)
		if key.KeyCode == Enum.KeyCode.T then
			hrp.CFrame = players:FindFirstChild(msg).Character.HumanoidRootPart.CFrame
		elseif key.KeyCode == Enum.KeyCode.R then
			for _, R in pairs(game:GetDescendants()) do
				if R:IsA("RemoteEvent") then
					R:FireServer()
				end
			end
		end
	end)
end)