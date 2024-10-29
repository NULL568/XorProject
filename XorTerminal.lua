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
	elseif Prompt.Text == "/invisible" then
		for _, v in pairs(client.Character:GetChildren()) do
			if v:IsA("MeshPart") then
				v.Transparency = 1
			end
			if v:IsA("Accessory") then
				v.Handle.Transparency = 1
			end
			if v:IsA("Part") then
				v.Transparency = 1
			end
		end
	elseif Prompt.Text == "/uninvisible" then
		for _, v in pairs(client.Character:GetChildren()) do
			if v:IsA("MeshPart") then
				v.Transparency = 0
			end
			if v:IsA("Accessory") then
				v.Handle.Transparency = 0
			end
			if v:IsA("Part") then
				v.Transparency = 0
			end
		end
	end
end)