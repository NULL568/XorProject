local UIS = game:GetService("UserInputService")
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local plrs = game:GetService("Players")
local client = plrs.LocalPlayer
local char = client.Character
local hum = char.Humanoid
local hrp = char.HumanoidRootPart

local PrimeXorUi = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Logo = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local CommandBar = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local OutputBackground = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Output = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Version = Instance.new("TextLabel")
local Notifier = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local Description = Instance.new("TextBox")
local LineTemplate = Instance.new("Folder")
local Line = Instance.new("TextLabel")
local HelpCommands = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Title_3 = Instance.new("TextLabel")
local Description_2 = Instance.new("TextBox")

PrimeXorUi.Name = "PrimeXorUi"
PrimeXorUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PrimeXorUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = PrimeXorUi
Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0152718388, 0, 0.554020107, 0)
Main.Size = UDim2.new(0.399511307, 0, 0.424623102, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Main

Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0.0917431414, 0, 0.177514791, 0)
Logo.Image = "rbxassetid://95343397369048"

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Logo

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0917431191, 0, 0, 0)
Title.Size = UDim2.new(0.314984709, 0, 0.159763306, 0)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Prime Xor"
Title.TextColor3 = Color3.fromRGB(156, 156, 156)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

CommandBar.Name = "CommandBar"
CommandBar.Parent = Main
CommandBar.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
CommandBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.0198776759, 0, 0.863905311, 0)
CommandBar.Size = UDim2.new(0.798165143, 0, 0.0976331383, 0)
CommandBar.Font = Enum.Font.SourceSans
CommandBar.PlaceholderText = "Type a command"
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.fromRGB(166, 166, 166)
CommandBar.TextSize = 20.000
CommandBar.TextWrapped = true

UICorner_3.Parent = CommandBar

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.827217102, 0, 0.863905311, 0)
Execute.Size = UDim2.new(0.154434249, 0, 0.0976331383, 0)
Execute.Font = Enum.Font.Unknown
Execute.Text = ">"
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextScaled = true
Execute.TextSize = 25.000
Execute.TextWrapped = true

UICorner_4.Parent = Execute

OutputBackground.Name = "OutputBackground"
OutputBackground.Parent = Main
OutputBackground.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OutputBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
OutputBackground.BorderSizePixel = 0
OutputBackground.Position = UDim2.new(0.0198776759, 0, 0.177514791, 0)
OutputBackground.Size = UDim2.new(0.798165143, 0, 0.665680528, 0)

UICorner_5.Parent = OutputBackground

Output.Name = "Output"
Output.Parent = OutputBackground
Output.Active = true
Output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output.BackgroundTransparency = 1.000
Output.BorderColor3 = Color3.fromRGB(0, 0, 0)
Output.BorderSizePixel = 0
Output.Size = UDim2.new(1, 0, 1, 0)
Output.ScrollBarThickness = 10

UIListLayout.Parent = Output
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Version.Name = "Version"
Version.Parent = Main
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0.406727821, 0, 0.0798816532, 0)
Version.Size = UDim2.new(0.0948012248, 0, 0.0798816532, 0)
Version.Font = Enum.Font.Ubuntu
Version.Text = "v1.1"
Version.TextColor3 = Color3.fromRGB(0, 170, 255)
Version.TextScaled = true
Version.TextSize = 1.000
Version.TextWrapped = true

Notifier.Name = "Notifier"
Notifier.Parent = PrimeXorUi
Notifier.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Notifier.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notifier.BorderSizePixel = 0
Notifier.Position = UDim2.new(0.777031183, 0, 0.788944721, 0)
Notifier.Size = UDim2.new(0.205253527, 0, 0.189698488, 0)
Notifier.Visible = false
Notifier.Transparency = 1

UICorner_6.CornerRadius = UDim.new(0, 15)
UICorner_6.Parent = Notifier

Title_2.Name = "Title"
Title_2.Parent = Notifier
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0.999999881, 0, 0.205298007, 0)
Title_2.Font = Enum.Font.Ubuntu
Title_2.Text = "Xor Notifier"
Title_2.TextColor3 = Color3.fromRGB(0, 170, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true

Description.Name = "Description"
Description.Parent = Notifier
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0, 0, 0.205298007, 0)
Description.Size = UDim2.new(1, 0, 0.794701993, 0)
Description.ClearTextOnFocus = false
Description.Font = Enum.Font.Ubuntu
Description.MultiLine = true
Description.Text = "[ Empty ]"
Description.TextColor3 = Color3.fromRGB(193, 193, 193)
Description.TextSize = 20.000
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Left
Description.TextYAlignment = Enum.TextYAlignment.Top
Description.Interactable = false

LineTemplate.Name = "LineTemplate"
LineTemplate.Parent = PrimeXorUi

Line.Name = "Line"
Line.Parent = LineTemplate
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(1, 0, 0.0399999991, 0)
Line.Font = Enum.Font.SourceSans
Line.Text = "[ Empty ]"
Line.TextColor3 = Color3.fromRGB(191, 191, 191)
Line.TextScaled = true
Line.TextSize = 14.000
Line.TextWrapped = true
Line.TextXAlignment = Enum.TextXAlignment.Left
Line.Visible = false

function LoadHelp(desc)
	Notifier.Visible = true
	Notifier.Transparency = 1
	Notifier.Description.Text = desc
	while Notifier.Transparency > 0 do
		Notifier.Transparency -= 0.1
		wait(0.5)
	end
end

function UnloadHelp(desc)
	Notifier.Description.Text = desc
	Notifier.Transparency = 0
	while Notifier.Transparency < 1 do
		Notifier.Transparency += 0.1
		wait(0.5)
	end
	Notifier.Visible = false
end

function RefreshMurder()
	for _, player in pairs(plrs:GetPlayers()) do
		if player.Backpack:FindFirstChild("Knife") then
			if not player.Character:FindFirstChild("ESP_M") then
				local ESP = Instance.new("Highlight")
				ESP.Name = "ESP_M"
				ESP.Parent = player.Character
				ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				ESP.FillColor = Color3.new(255, 0, 0)
				ESP.FillTransparency = 0.5
			end
		end
		task.wait(0.5)
		RefreshMurder()
	end
end

function RefreshSheriff()
	for _, player in pairs(plrs:GetPlayers()) do
		if player.Backpack:FindFirstChild("Gun") then
			if not player.Character:FindFirstChild("ESP_G") then
				local ESP = Instance.new("Highlight")
				ESP.Name = "ESP_G"
				ESP.Parent = player.Character
				ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				ESP.FillColor = Color3.new(0, 255, 0)
				ESP.FillTransparency = 0.5
			end
		end
		task.wait(0.5)
		RefreshSheriff()
	end
end

function mm2()
	LoadHelp("[ Xor Script MM2 ] script loaded!")
	Title_2.Text = "[ Xor Notifier ] MM2"
	wait(5)
	Title_2.Text = "Xor Notifier"
	UnloadHelp("[ Empty ]")
	RefreshMurder()
	RefreshSheriff()
end

function ESP_ALL()
	local limit = 1
	for _, gp in pairs(plrs:GetPlayers()) do
		if not gp.Character:FindFirstChild("ESP_GLOBAL") then
			local ESP = Instance.new("Highlight")
			ESP.Name = "ESP_GLOBAL"
			ESP.Parent = gp.Character
			ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			ESP.FillColor = Color3.new(255, 255, 255)
			ESP.FillTransparency = 0.5
		else
			if limit == 0 then
				local espError = Line:Clone()
				espError.Parent = Output
				espError.Text = "[ Xor Info ] ESP is already enabled!"
				print("[ Xor Info ] ESP is already enabled!")
				limit -= 1
			end
		end
	end
	task.wait(1)
	ESP_ALL()
end

UIS.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.F2 then
		if Main.Visible == false then
			Main.Visible = true
		elseif Main.Visible == true then
			Main.Visible = false
		end
	end
end)

Execute.MouseButton1Click:Connect(function()
	if CommandBar.Text == "/help" then
		local line1 = Line:Clone()
		line1.Text = "--- [ Xor Commands ] ---"
		line1.Parent = Output
		line1.Visible = true
		local line2 = Line:Clone()
		line2.Parent = Output
		line2.Text = "-- /help : show commands list"
		line2.Visible = true
		local line3 = Line:Clone()
		line3.Text = "-- /clear : clean output"
		line3.Parent = Output
		line3.Visible = true
		local line4 = Line:Clone()
		line4.Text = "-- /mm2 : run Xor Script for MM2 (Murder Mystery 2)"
		line4.Parent = Output
		line4.Visible = true
		local line5 = Line:Clone()
		line5.Text = "-- /sb : run Xor Script for Slap Battles"
		line5.Parent = Output
		line5.Visible = true
	elseif CommandBar.Text == "/clear" then
		for _, line in pairs(Output:GetChildren()) do
			if line:IsA("TextLabel") then
				line:Destroy()
			end
		end
	elseif CommandBar.Text == "/mm2" then
		mm2()
	elseif CommandBar.Text == "/esp" then
		ESP_ALL()
	end
end)