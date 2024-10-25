local UIS = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local client = plrs.LocalPlayer
local char = client.Character or client.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

client.Chatted:Connect(function(msg)
	if msg == ""
end)