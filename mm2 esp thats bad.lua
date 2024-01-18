-- credits to maxey for fixing the broken script
-- esp on

--script.Parent.ESPon.MouseButton1Down:connect(function()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.E then
	
		for i, v in pairs(game.Players:children()) do

			local equipped = false

			for j, a in pairs(v.Character.Hair:children()) do
				if a.ClassName == "BoxHandleAdornment" then
					equipped = true
					break
					
				end
			end

			if equipped == false then



			if v.Backpack:findFirstChild("Knife") or v.Character:findFirstChild("Knife") then
				local esp = Instance.new("BoxHandleAdornment")
				esp.Parent = v.Character.Hair
				esp.Size = Vector3.new(1,1,1)
				esp.Color3 = Color3.new(255, 0, 0)
				esp.AlwaysOnTop = true
				esp.Adornee = v.Character.Hair
				esp.Visible = true
				esp.ZIndex = 2
				 
			elseif v.Backpack:findFirstChild("Gun") or v.Character:findFirstChild("Gun") then
				local esp = Instance.new("BoxHandleAdornment")
				esp.Parent = v.Character.Hair
				esp.Size = Vector3.new(1,1,1)
				esp.Color3 = Color3.new(0, 0, 255)
				esp.AlwaysOnTop = true
				esp.Adornee = v.Character.Hair
				esp.Visible = true
				esp.ZIndex = 2
			else
				local esp = Instance.new("BoxHandleAdornment")
				esp.Parent = v.Character.Hair
				esp.Size = Vector3.new(1,1,1)
				esp.Color3 = Color3.new(0, 255, 0)
				esp.AlwaysOnTop = true
				esp.Adornee = v.Character.Hair
				esp.Visible = true
				esp.ZIndex = 2
				print("esp on now")
			end

			end
		end		
	end
end)
--)


--script.Parent.ESPOff.MouseButton1Down:connect(function()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.P then
		for i, v in pairs(game.Players:children()) do
			for i, a in pairs(v.Character.Hair:children()) do
				if a.ClassName == "BoxHandleAdornment" then
					a:remove()
					print("esp off now")
				end
			end
		end
	end
end)

--end)
print("script ran esp")
