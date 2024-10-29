local UIS = game:GetService("UserInputService")
local Plrs = game.Players
local client = game.Players.LocalPlayer
local mouse = client:GetMouse()
local char = client.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

local XorUI = Instance.new("ScreenGui")
local Terminal = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local StyleSeparator = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Prompt = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

local UiStroke = Instance.new("UIStroke")
UiStroke.Parent = Terminal
UiStroke.Thickness = 2

local canMove = false

XorUI.Name = "XorUI"
XorUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
XorUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Terminal.Name = "Terminal"
Terminal.Parent = XorUI
Terminal.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Terminal.BorderColor3 = Color3.fromRGB(0, 0, 0)
Terminal.BorderSizePixel = 0
Terminal.Position = UDim2.new(0.188023955, 0, 0.209798992, 0)
Terminal.Size = UDim2.new(0.332335323, 0, 0.402010053, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Terminal

StyleSeparator.Name = "StyleSeparator"
StyleSeparator.Parent = Terminal
StyleSeparator.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
StyleSeparator.BorderColor3 = Color3.fromRGB(0, 0, 0)
StyleSeparator.BorderSizePixel = 0
StyleSeparator.Position = UDim2.new(0, 0, 0.0531250015, 0)
StyleSeparator.Size = UDim2.new(1, 0, 0.065624997, 0)

Title.Name = "Title"
Title.Parent = Terminal
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0.118749999, 0)
Title.Font = Enum.Font.Unknown
Title.Text = "Xor Terminal"
Title.TextColor3 = Color3.fromRGB(176, 176, 176)
Title.TextSize = 25.000
Title.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Title

Prompt.Name = "Prompt"
Prompt.Parent = Terminal
Prompt.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Prompt.BorderColor3 = Color3.fromRGB(0, 0, 0)
Prompt.BorderSizePixel = 0
Prompt.Position = UDim2.new(0.0144144148, 0, 0.875, 0)
Prompt.Size = UDim2.new(0.904504478, 0, 0.096874997, 0)
Prompt.ClearTextOnFocus = false
Prompt.Font = Enum.Font.Nunito
Prompt.PlaceholderText = "Type a command"
Prompt.Text = ""
Prompt.TextColor3 = Color3.fromRGB(178, 178, 178)
Prompt.TextScaled = true
Prompt.TextSize = 14.000
Prompt.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = Prompt

Execute.Name = "Execute"
Execute.Parent = Terminal
Execute.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.931531549, 0, 0.875, 0)
Execute.Size = UDim2.new(0.0558558553, 0, 0.096874997, 0)
Execute.Font = Enum.Font.Unknown
Execute.Text = ">"
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true

local enabled = false

UICorner_4.Parent = Execute

UIS.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.F2 then
		Terminal.Visible = not Terminal.Visible
	end
end)

UIS.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.F4 then
		if canMove == false then
			canMove = true
		elseif canMove == true then
			canMove = false
		end
	end
end)

mouse.Move:Connect(function()
	if canMove == true then
		Terminal.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
	end
end)

Execute.MouseButton1Click:Connect(function()
	if Prompt.Text == "/exploit-remotes" then
		for _, re in pairs(game:GetDescendants()) do
			if re:IsA("RemoteEvent") then
				re:FireServer()
			end
		end
	elseif Prompt.Text == "/show-remotes" then
		print("----- [ REMOTES ] -----")
		print("")
		for _, re in pairs(game:GetDescendants()) do
			if re:IsA("RemoteEvent") then
				print(re.Name.." ("..re.ClassName..")")
			end
		end
	elseif Prompt.Text == "/ESP" then
		enabled = true
		local Aura = Instance.new("Highlight")
		Aura.Name = "ESP_Aura"
		Aura.FillColor = Color3.new(0.015686, 0.952941, 0.015686)
		Aura.FillTransparency = 0.5
		Aura.OutlineColor = Color3.new(1, 1, 1)
		Aura.OutlineTransparency = 0
		Aura.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		Aura.Parent = game.ReplicatedStorage
		while enabled do
			for _, plr in pairs(Plrs:GetPlayers()) do
				if plr.Name ~= client.Name then
					local ClonerAura = Aura:Clone()
					ClonerAura.Parent = plr.Character
				end
			end
			task.wait(0.1)
		end
	elseif Prompt.Text == "/unESP" then
		enabled = false
		for _, plr in pairs(Plrs:GetPlayers()) do
			if plr.Character:FindFirstChild("ESP_Aura") then
				plr.Character.ESP_Aura:Destroy()
			end
		end
	end
end)