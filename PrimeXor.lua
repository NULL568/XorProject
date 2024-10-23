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

function RefreshSheriff()
	for _, player in pairs(plrs:GetPlayers()) do
		if player.Backpack:FindFirstChild("Gun") then
			local ESP = Instance.new("Highlight")
			ESP.Name = "ESP_G"
			ESP.Parent = player.Character
			ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			ESP.FillColor = Color3.new(0, 255, 0)
			ESP.FillTransparency = 0.5
		end
		task.wait(0.5)
		RefreshSheriff()
	end
end

function mm2()
	LoadNotifier("[ Xor Script MM2 ] script loaded!", "MM2")
	task.wait(5)
	UnloadNotifier()
	RefreshMurder()
	RefreshSheriff()
end

function ESP_ALL()
	local limit = 1
	LoadNotifier("[ Xor Script ESP ] script loaded!")
	task.wait(5)
	UnloadNotifier()
	for _, gp in pairs(plrs:GetPlayers()) do
		local ESP = Instance.new("Highlight")
		ESP.Name = "ESP_GLOBAL"
		ESP.Parent = gp.Character
		ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		ESP.FillColor = Color3.new(255, 255, 255)
		ESP.FillTransparency = 0.5
		if limit <= 0 then
			LoadNotifier("[ Xor Script ESP ] script loaded!", "ESP")
			wait(5)
			UnloadNotifier("[ Empty ]", "Xor Notifier")
			local espError = Line:Clone()
			espError.Text = "[ Xor Info ] ESP is already enabled!"
			espError.Parent = Output
			espError.Visible = true
			print("[ Xor Info ] ESP is already enabled!")
			limit -= 1
		end
	end
	task.wait(3)
	ESP_ALL()
end

function updatePrimeXor()
	LoadNotifier("[ Xor System Update ] don't re-execute script on your executor, he will be executed automatically!", "Update")
	task.wait(5)
	UnloadNotifier()
	local UpdateXor = Line:Clone()
	UpdateXor.Text = "[ Xor Update ] please wait (don't re-execute)"
	UpdateXor.Parent = Output
	UpdateXor.Visible = true
	local UpdateXor2 = Line:Clone()
	UpdateXor2.Text = "[ Xor Update ] Prime Xor will start in a few seconds!"
	UpdateXor2.Parent = Output
	UpdateXor2.Visible = true
	PGui:FindFirstChild("PrimeXorUi"):Destroy()
	task.wait(3)
	loadPrimeXor()
end

function Help()
	local line1 = Line:Clone()
	local line2 = Line:Clone()
	local line3 = Line:Clone()
	local line4 = Line:Clone()
	local line5 = Line:Clone()
	local line6 = Line:Clone()
	local line7 = Line:Clone()
	local line8 = Line:Clone()
	local line9 = Line:Clone()
	local line10 = Line:Clone()
	local line11 = Line:Clone()

	line1.Text = "--- [ Xor Commands ] ---"
	line1.Parent = Output
	line1.Visible = true
	
	line2.Parent = Output
	line2.Text = "-- /help : show commands list"
	line2.Visible = true
	
	line3.Text = "-- /clear : clean output"
	line3.Parent = Output
	line3.Visible = true
	
	line4.Text = "-- /mm2 : run Xor Script for MM2 (Murder Mystery 2)"
	line4.Parent = Output
	line4.Visible = true
	
	line5.Text = "-- /sb : run Xor Script for Slap Battles"
	line5.Parent = Output
	line5.Visible = true
	
	line6.Text = "-- /esp : see all players in game"
	line6.Parent = Output
	line6.Visible = true

	line7.Text = "-- /update : update repository GitHub of PrimeXor"
	line7.Parent = Output
	line7.Visible = true

	line8.Text = "-- /XE : run Xor Explorer ( UPDATING! )"
	line8.Parent = Output
	line8.Visible = true

	line9.Text = "-- /XE --show-options : show options for Xor Explorer"
	line9.Parent = Output
	line9.Visible = true

	line10.Text = "-- /discord : get link of our Server Discord (you can copy from the Output of PrimeXor)"
	line10.Parent = Output
	line10.Visible = true

	line11.text = "-- /tp [nameOfPlayer] : teleport to a player"
	line11.Parent = Output
	line11.Visible = true
end

function XE(ins, nameOfIns, paramOrPropertyOrWay, valOfInsOrValOfInsVectorArg1, valOfInsVectorArg2, valOfInsVectorArg3)
	LoadNotifier("[ Xor Script XE ] script loaded!", "XE v2.1")
	task.wait(5)
	UnloadNotifier()
	local lineForRE = Line:Clone()
	local line1 = Line:Clone()
	local line2 = Line:Clone()
	local line3 = Line:Clone()
	local line4 = Line:Clone()
	local line5 = Line:Clone()
	local line6 = Line:Clone()
	local line7 = Line:Clone()
	local line8 = Line:Clone()
	local line9 = Line:Clone()
	local line10 = Line:Clone()

	for _, obj in pairs(game:GetDescendants()) do
	end
end

function XE_ShowOptions()
	local line1 = Line:Clone()
	line1.Text = "[ Xor Explorer ] /XE --RemoteEvent"
	line1.Parent = Output
	line1.Visible = true
	local line2 = Line:Clone()
end

function discord()
	LoadNotifier("[ Xor Script ] see the output of PrimeXor!", "Discord")
	local line1 = Line:Clone()
	line1.Text = "Link : https://discord.gg/qRBZm9qGsf"
	line1.Parent = Output
	line1.Visible = true
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

function TP(plrTarget)
	if plrs:FindFirstChild(plrTarget) then
		hrp.CFrame = plrs:FindFirstChild(plrTarget).Character.HumanoidRootPart.CFrame
		local line1 = Line:Clone()
		line1.Text = "[ Xor TP ] teleported to "..plrTarget
		line1.Parent = Output
		line1.Visible = true
	else
		local line2 = Line:Clone()
		line2.Text = "[ Xor TP ] player not found!"
		line2.Parent = Output
		line2.Visible = true
	end
end

function about()
	LoadNotifier("[ About Xor ] Prime Xor is a powerfull terminal made by Xor Ownder", "About of Prime Xor")
	task.wait(5)
	UnloadNotifier()
	local line1 = Line:Clone()
	line1.Text = "[ About Xor ] Prime Xor is updated from GitHub by Xor Owner"
	line1.Parent = Output
	line1.Visible = true
end

Execute.MouseButton1Click:Connect(function()
	if CommandBar.Text == "/help" then
		Help()
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
	elseif CommandBar.Text == "/update" then
		updatePrimeXor()
	elseif CommandBar.Text == "/XE --show-options" then
		XE_ShowOptions()
	elseif CommandBar.Text == "/discord" then
		discord()
	elseif splitCmd[1] == "/tp" then
		TP(splitCmd[2])
	elseif CommandBar.Text == "/about" then
		about()
	end
end)