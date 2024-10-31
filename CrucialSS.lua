local CrucialUI = Instance.new("ScreenGui")
local MainGUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local OutputGUI = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Exploit = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local command = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local BUTTONS = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Remotes = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local InfPart = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local ClearOutput = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local OutputLines = Instance.new("Folder")
local Line = Instance.new("TextLabel")

-- Properties:

CrucialUI.Name = "CrucialUI"
CrucialUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CrucialUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainGUI.Name = "MainGUI"
MainGUI.Parent = CrucialUI
MainGUI.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
MainGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainGUI.BorderSizePixel = 0
MainGUI.Position = UDim2.new(0.213173658, 0, 0.163316578, 0)
MainGUI.Size = UDim2.new(0.573652685, 0, 0.673366845, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainGUI

Title.Name = "Title"
Title.Parent = MainGUI
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 958, 0, 50)
Title.Font = Enum.Font.Unknown
Title.Text = "Crucial SS"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

OutputGUI.Name = "OutputGUI"
OutputGUI.Parent = MainGUI
OutputGUI.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
OutputGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
OutputGUI.BorderSizePixel = 0
OutputGUI.Position = UDim2.new(0.753653467, 0, 0.188432842, 0)
OutputGUI.Size = UDim2.new(0.233820453, 0, 0.789179087, 0)

UICorner_2.Parent = OutputGUI

UIListLayout.Parent = OutputGUI
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Exploit.Name = "Exploit"
Exploit.Parent = MainGUI
Exploit.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
Exploit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exploit.BorderSizePixel = 0
Exploit.Position = UDim2.new(0.611121058, 0, 0.901119411, 0)
Exploit.Size = UDim2.new(0.126820087, 0, 0.0764925405, 0)
Exploit.Font = Enum.Font.Unknown
Exploit.Text = "Exploit"
Exploit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exploit.TextScaled = true
Exploit.TextSize = 14.000
Exploit.TextWrapped = true

UICorner_3.Parent = Exploit

command.Name = "command"
command.Parent = MainGUI
command.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
command.BorderColor3 = Color3.fromRGB(0, 0, 0)
command.BorderSizePixel = 0
command.Position = UDim2.new(0.0146753239, 0, 0.901119411, 0)
command.Size = UDim2.new(0.588043511, 0, 0.0764925405, 0)
command.Font = Enum.Font.Unknown
command.PlaceholderText = "Type a command"
command.Text = ""
command.TextColor3 = Color3.fromRGB(168, 168, 168)
command.TextSize = 30.000
command.TextWrapped = true

UICorner_4.Parent = command

BUTTONS.Name = "BUTTONS"
BUTTONS.Parent = MainGUI
BUTTONS.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
BUTTONS.BorderColor3 = Color3.fromRGB(0, 0, 0)
BUTTONS.BorderSizePixel = 0
BUTTONS.Position = UDim2.new(0.0146753239, 0, 0.108208954, 0)
BUTTONS.Size = UDim2.new(0.723265886, 0, 0.770522416, 0)

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = BUTTONS

Remotes.Name = "Remotes"
Remotes.Parent = BUTTONS
Remotes.BackgroundColor3 = Color3.fromRGB(0, 159, 0)
Remotes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Remotes.BorderSizePixel = 0
Remotes.Position = UDim2.new(0.0159423891, 0, 0.0217917673, 0)
Remotes.Size = UDim2.new(0.26230213, 0, 0.104116224, 0)
Remotes.Font = Enum.Font.Unknown
Remotes.Text = "Remotes"
Remotes.TextColor3 = Color3.fromRGB(0, 0, 0)
Remotes.TextScaled = true
Remotes.TextSize = 14.000
Remotes.TextWrapped = true

UICorner_6.Parent = Remotes

InfPart.Name = "InfPart"
InfPart.Parent = BUTTONS
InfPart.BackgroundColor3 = Color3.fromRGB(0, 159, 0)
InfPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfPart.BorderSizePixel = 0
InfPart.Position = UDim2.new(0.288412333, 0, 0.0217917673, 0)
InfPart.Size = UDim2.new(0.26230213, 0, 0.104116224, 0)
InfPart.Font = Enum.Font.Unknown
InfPart.Text = "Inf Part"
InfPart.TextColor3 = Color3.fromRGB(0, 0, 0)
InfPart.TextScaled = true
InfPart.TextSize = 14.000
InfPart.TextWrapped = true

UICorner_7.Parent = InfPart

ClearOutput.Name = "ClearOutput"
ClearOutput.Parent = MainGUI
ClearOutput.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
ClearOutput.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearOutput.BorderSizePixel = 0
ClearOutput.Position = UDim2.new(0.753653407, 0, 0.108208954, 0)
ClearOutput.Size = UDim2.new(0.233820409, 0, 0.0615671724, 0)
ClearOutput.Font = Enum.Font.Unknown
ClearOutput.Text = "Clear Output"
ClearOutput.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearOutput.TextScaled = true
ClearOutput.TextSize = 14.000
ClearOutput.TextWrapped = true

UICorner_8.Parent = ClearOutput

OutputLines.Name = "OutputLines"
OutputLines.Parent = CrucialUI

Line.Name = "Line"
Line.Parent = OutputLines
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(1, 0, 0.0472813249, 0)
Line.Font = Enum.Font.Unknown
Line.TextColor3 = Color3.fromRGB(170, 170, 170)
Line.TextSize = 22.000
Line.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function ZASQ_fake_script()
    local script = Instance.new('LocalScript', OutputGUI)

    local OutputGUI = script.Parent
    local Line = script.Parent.Parent.Parent.OutputLines.Line
    local maxLines = 21

    while true do
        wait(1)
        local children = OutputGUI:GetChildren()
        for i = #children, maxLines + 1, -1 do
            children[i]:Destroy()
        end
    end
end
coroutine.wrap(ZASQ_fake_script)()

local function PYES_fake_script()
    local script = Instance.new('LocalScript', Exploit)

    local prompt = script.Parent.Parent.command

    script.Parent.MouseButton1Click:Connect(function()
        script.Parent.ExploitEvent:FireServer(prompt.Text)
    end)
end
coroutine.wrap(PYES_fake_script)()

local function OGLRURZ_fake_script()
    local script = Instance.new('Script', Exploit)

    local ExploitEvent = Instance.new("RemoteEvent", script.Parent)
    ExploitEvent.Name = "ExploitEvent"

    ExploitEvent.OnServerEvent:Connect(function(plr, prompt)
        if prompt == "/tp all me" then
            for _, v in pairs(game.Players:GetPlayers()) do
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
                   plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    v.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                    print(v.Name .. " : teleported")
                end
            end
        end
    end)
end
coroutine.wrap(OGLRURZ_fake_script)()

local function KFBMK_fake_script()
    local script = Instance.new('LocalScript', MainGUI)

    local UIS = game:GetService("UserInputService")
    local gui = script.Parent

    UIS.InputBegan:Connect(function(input, gameProcessedEvent)
        if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.F2 then
            gui.Visible = not gui.Visible
        end
    end)
end
coroutine.wrap(KFBMK_fake_script)()