local UIS = game:GetService("UserInputService")
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local SG = game:GetService("StarterGui")
local plrs = game:GetService("Players")
local client = plrs.LocalPlayer
local PGui = client:WaitForChild("PlayerGui")
local char = client.Character or client.CharacterAdded:Wait() -- Attente si le personnage n'est pas encore chargé
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

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
local versionOfPrimeXor = "v4"

local function applyUICorner(element, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = element
end

local function applyUIStroke(element, thickness)
    local stroke = Instance.new("UIStroke")
    stroke.Thickness = thickness
    stroke.Parent = element
end

applyUIStroke(Main, 3)
applyUIStroke(Notifier, 3)

PrimeXorUi.Name = "PrimeXorUi"
PrimeXorUi.Parent = PGui
PrimeXorUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = PrimeXorUi
Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main.Position = UDim2.new(0.015, 0, 0.554, 0)
Main.Size = UDim2.new(0.4, 0, 0.425, 0)
applyUICorner(Main, 15)

Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundTransparency = 1
Logo.Size = UDim2.new(0.09, 0, 0.18, 0)
Logo.Image = "rbxassetid://95343397369048"
applyUICorner(Logo, 15)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.09, 0, 0, 0)
Title.Size = UDim2.new(0.31, 0, 0.16, 0)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Prime Xor"
Title.TextColor3 = Color3.fromRGB(156, 156, 156)
Title.TextScaled = true

local helpText = {
    "--- [ Xor Commands ] ---",
    "-- /help : show commands list",
    "-- /clear : clean output",
    "-- /mm2 : run Xor Script for MM2",
    "-- /sb : run Xor Script for Slap Battles",
    "-- /esp : see all players in game",
    "-- /tp : teleport to a player",
    "-- /XE : run Xor Explorer",
    "-- /XE --show-options : show Xor Explorer options",
    "-- /discord : get link to Discord",
    "-- /about : information about PrimeXor",
    "-- /controls : see controls for GUI",
    "-- /doors : run Xor Script for DOORS"
}

function Help()
    for _, text in pairs(helpText) do
        local line = Line:Clone()
        line.Text = text
        line.Parent = Output
        line.Visible = true
    end
end

function TP_Plr()
    client.Chatted:Connect(function(msg)
        local targetPlayer = plrs:FindFirstChild(msg)
        if targetPlayer and targetPlayer.Character then
            hrp.CFrame = targetPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
        end
    end)
end

function LoadNotifier(message)
    Notifier.Visible = true
    Notifier.Transparency = 1
    Notifier.Description.Text = message or "[ Xor Script ] script loaded!"
    Title_2.Text = "[ Xor Notifier ]"
    while Notifier.Transparency > 0 do
        Notifier.Transparency = Notifier.Transparency - 0.1
        wait(0.05)
    end
end

function UnloadNotifier()
    Notifier.Transparency = 0
    while Notifier.Transparency < 1 do
        Notifier.Transparency = Notifier.Transparency + 0.1
        wait(0.05)
    end
    Notifier.Visible = false
end

Execute.MouseButton1Click:Connect(function()
    local command = CommandBar.Text:lower()
    if command == "/help" then
        Help()
    elseif command == "/clear" then
        for _, line in pairs(Output:GetChildren()) do
            if line:IsA("TextLabel") then
                line:Destroy()
            end
        end
    elseif command == "/mm2" then
        mm2()
    elseif command == "/esp" then
        ESP_ALL()
    elseif command == "/XE" then
        XE_Explorer()
    elseif command == "/tp" then
        TP_Plr()
    end
end)