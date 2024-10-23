local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local SG = game:GetService("StarterGui")
local SP = game:GetService("StarterPlayer")
local SPack = game:GetService("StarterPack")
local WS = game.Workspace
local RS = game.ReplicatedStorage
local Plrs = game:GetService("Players")
local client = game.Players.LocalPlayer
local backpack = client.Backpack
local mouse = client:GetMouse()
local PG = client:WaitForChild("PlayerGui")
local char = client.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

local T1 = Instance.new("Tool")
T1.Name = "ClickToTP"
T1.Parent = RS
T1.Activated:Connect(function()
      hrp.Position = mouse.Hit + Vector3.new(0,2.5,0)
end)


local enabled = false
local T2 = Instance.new("Tool")
T2.Name = "Fly"
T2.Parent = RS
T2.Activated:Connect(function()
      if enabled == false then
            enabled = true
            TS:Create(hrp, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, {Position = mouse.Hit})):Play()
            hrp.Anchored = true
      elseif enabled == true then
            hrp.Anchored = false
      end
end)

UIS.InputBegan:Connect(function(key)
      if key.KeyCode == Enum.KeyCode.F2 then
            client.Chatted:Connect(function(msg)
                  print("----- [ REMOTES ] -----")
                  for _, itm in pairs() do
                        if itm:IsA("RemoteEvent") then
                              print(itm.Name.." ("..itm.Classname..")")
                              if itm.Name == msg then
                                    itm:FireServer()
                              end
                        end
                  end
            end)
      elseif key.KeyCode == Enum.KeyCode.F3 then
            client.Chatted:Connect(function(msg)
                  for _, plr in pairs(Plrs:GetPlayers()) do
                        if plr.Name == msg then
                              hrp.CFrame = plr.Character.HumanoidRootPart.CFrame
                        end
                  end
            end)
      elseif key.KeyCode == Enum.KeyCode.F4 then
            local ESP = Instance.new("Highlight")
            ESP.Name = "ESP_"..client.Name
            ESP.Parent = RS
            ESP.FillColor = Color3.new(0,0,0)
            ESP.FillTransparency = 1
            ESP.OutlineColor = Color3.new(255,255,255)
            ESP.OutlineTransparency = 0
            for _, plr in pairs(Plrs:GetPlayers()) do
                  if plr.Name ~= client.Name then
                        ESP.Parent = plr.Character
                  end
            end
      elseif key.KeyCode == Enum.KeyCode.End then
            print("----- [ PLAYERS ] -----")
            for _, plr in pairs(Plrs:GetPlayers()) do
                  print(plr.DisplayName.." ("..plr.Name..")")
            end
      elseif key.KeyCode == Enum.KeyCode.Delete then
            local cooldown = false
            local cooldown2 = false
            if not backpack:FindFirstChild("ClickToTP") then
                  if cooldown == false then
                        cooldown = true
                        local Tl1 = T1:Clone()
                        Tl1.Parent = backpack
                        task.wait(0.1)
                        cooldown = false
                  end
            end
            if not backpack:FindFirstChild("Fly") then
                  if cooldown2 == false then
                        cooldown2 = true
                        local Tl2 = T2:Clone()
                        Tl2.Parent = backpack
                        task.wait(0.1)
                        cooldown2 = false
                  end
            end
      elseif key.KeyCode == Enum.KeyCode.Insert then
            local enabledAM = false

            if not char:FindFirstChild("AuraMode") then
                  if enabledAM == false then
                        enabledAM = true
                        local aura = Instance.new("Highlight")
                        aura.Name = "AuraMode"
                        aura.FillColor = Color3.new(0,0,0)
                        aura.FillTransparency = 0
                        aura.OutlineColor = Color3.new(255,0,0)
                        aura.OutlineTransparency = 0
                        aura.Parent = char
                        hum.WalkSpeed = 50
                        hum.JumpHeight = 50
                        task.wait(1)
                        enabledAM = false
                  end
            end

            local enabledRH = false
            local enabledLH = false
            
            local enabledRL = false
            local enabledLL = false
            for _, RH in pairs(char:GetChildren()) do
                  if RH:IsA("MeshPart") then
                        if not char.RightHand:FindFirstChild("auraRH") then
                              if enabledRH == false then
                                    enabledRH = true
                                    local auraRH = Instance.new("Highlight")
                                    auraRH.Name = "auraRH"
                                    auraRH.FillColor = Color3.new(255,0,0)
                                    auraRH.FillTransparency = 0
                                    auraRH.OutlineColor = Color3.new(255,0,0)
                                    auraRH.OutlineTransparency = 0
                                    auraRH.Parent = char.RightHand
                                    task.wait(1)
                                    enabledRH = false
                              end
                        end
                        if not char.LeftHand:FindFirstChild("auraLH") then
                              if enabledLH == false then
                                    enabledLH = true
                                    local auraLH = Instance.new("Highlight")
                                    auraLH.Name = "auraLH"
                                    auraLH.FillColor = Color3.new(255,0,0)
                                    auraLH.FillTransparency = 0
                                    auraLH.OutlineColor = Color3.new(255,0,0)
                                    auraLH.OutlineTransparency = 0
                                    auraLH.Parent = char.LeftHand
                                    task.wait(1)
                                    enabledLH = false
                              end
                        end
                        if not char.RightLeg:FindFirstChild("auraRL") then
                              if enabledRL == false then
                                    enabledRL = true
                                    local auraRL = Instance.new("Highlight")
                                    auraRL.Name = "auraRL"
                                    auraRL.FillColor = Color3.new(255,0,0)
                                    auraRL.FillTransparency = 0
                                    auraRL.OutlineColor = Color3.new(255,0,0)
                                    auraRL.OutlineTransparency = 0
                                    auraRL.Parent = char.RightLeg
                                    task.wait(1)
                                    enabledRL = false
                              end
                        end
                        if not char.LeftLeg:FindFirstChild("auraLL") then
                              if enabledLL == false then
                                    enabledLL = true
                              end
                        end
                  end
            end
      end
end)