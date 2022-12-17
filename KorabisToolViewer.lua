coroutine.wrap(function()
	local BackpackViewer = Instance.new("ScreenGui")
	BackpackViewer.ResetOnSpawn = false
	local Frame = Instance.new("Frame")

	local TextLabel = Instance.new("TextLabel")

	local TextBox = Instance.new("TextBox")

	local UICorner = Instance.new("UICorner")

	local UICorner_2 = Instance.new("UICorner")

	local bp = Instance.new("TextLabel")

	local ScrollingFrame = Instance.new("ScrollingFrame")

	local UIListLayout = Instance.new("UIListLayout")

	local Frame_2 = Instance.new("Frame")

	local ImageLabel = Instance.new("ImageLabel")

	local TextLabel_2 = Instance.new("TextLabel")

	local uis = Instance.new("UIStroke")

	uis.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	uis.Thickness = 0.6

	uis.Color = Color3.new(255, 255, 255)

	local uis2 = uis:Clone()

	uis.Parent = Frame

	uis2.Parent = TextBox

	--Properties:

	BackpackViewer.Name = "Backpack Viewer"

	BackpackViewer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	BackpackViewer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = BackpackViewer

	Frame.AnchorPoint = Vector2.new(0.5, 0.5)

	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

	Frame.BackgroundTransparency = 0.300

	Frame.ClipsDescendants = true

	Frame.Position = UDim2.new(0.5, 0, 0.499427259, 0)

	Frame.Size = UDim2.new(0.311246186, 0, 0.378006876, 0)

	TextLabel.Parent = Frame

	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	TextLabel.BackgroundTransparency = 1.000

	TextLabel.Position = UDim2.new(0.3203125, 0, 0.0181818176, 0)

	TextLabel.Size = UDim2.new(0.33593753, 0, 0.11212121, 0)

	TextLabel.Font = Enum.Font.GothamMedium

	TextLabel.Text = "Player:"

	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

	TextLabel.TextScaled = true

	TextLabel.TextSize = 14.000

	TextLabel.TextWrapped = true

	TextBox.Parent = Frame

	TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

	TextBox.BackgroundTransparency = 0.800

	TextBox.Position = UDim2.new(0.19921875, 0, 0.166666672, 0)

	TextBox.Size = UDim2.new(0.603515685, 0, 0.0818181783, 0)

	TextBox.Font = Enum.Font.Gotham

	TextBox.Text = ""

	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

	TextBox.TextScaled = true

	TextBox.TextSize = 14.000

	TextBox.TextWrapped = true

	UICorner.CornerRadius = UDim.new(0, 6)

	UICorner.Parent = TextBox

	UICorner_2.CornerRadius = UDim.new(0, 6)

	UICorner_2.Parent = Frame

	bp.Name = "bp"

	bp.Parent = Frame

	bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	bp.BackgroundTransparency = 1.000

	bp.Position = UDim2.new(0.19921875, 0, 0.300000012, 0)

	bp.Size = UDim2.new(0, 309, 0, 37)

	bp.Visible = false

	bp.Font = Enum.Font.GothamMedium

	bp.Text = "Korabi20's Backpack:"

	bp.TextColor3 = Color3.fromRGB(255, 255, 255)

	bp.TextScaled = true

	bp.TextSize = 14.000

	bp.TextWrapped = true

	ScrollingFrame.Parent = Frame

	ScrollingFrame.Active = true

	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

	ScrollingFrame.BackgroundTransparency = 1.000

	ScrollingFrame.Position = UDim2.new(0.199218765, 0, 0.472727269, 0)

	ScrollingFrame.Size = UDim2.new(0.951816022, 0, 0.4939394, 0)

	ScrollingFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY

	ScrollingFrame.BottomImage = ""

	ScrollingFrame.MidImage = ""

	ScrollingFrame.ScrollBarThickness = 0

	ScrollingFrame.TopImage = ""

	UIListLayout.Parent = ScrollingFrame

	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	UIListLayout.Padding = UDim.new(0, 3)

	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	Frame_2.BackgroundTransparency = 1.000

	Frame_2.Size = UDim2.new(0, 309, 0, 42)

	ImageLabel.Parent = Frame_2

	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	ImageLabel.BackgroundTransparency = 1.000

	ImageLabel.BorderSizePixel = 0

	ImageLabel.Position = UDim2.new(0.0744336545, 0, -0.0238095243, 0)

	ImageLabel.Size = UDim2.new(0, 53, 0, 42)

	ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	TextLabel_2.Parent = Frame_2

	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	TextLabel_2.BackgroundTransparency = 1.000

	TextLabel_2.Position = UDim2.new(0.249115095, 0, 0.161039084, 0)

	TextLabel_2.Size = UDim2.new(0, 172, 0, 28)

	TextLabel_2.Font = Enum.Font.GothamMedium

	TextLabel_2.Text = "Toolname"

	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)

	TextLabel_2.TextScaled = true

	TextLabel_2.TextSize = 14.000

	TextLabel_2.TextWrapped = true

	local gui = BackpackViewer

	local function rem()
		for i, v in next, gui.Frame.ScrollingFrame:GetChildren() do
			if v:IsA("Frame") then
				v:Destroy()
			end
		end
	end

	local function getplayer(input)
		if not input or type(input) ~= "string" or input == "" then
			return
		end

		local input = input:lower()

		local found = false

		local r = nil

		for i, p in pairs(game:GetService("Players"):GetPlayers()) do
			if not found then
				if p.Name:lower():match("^" .. input) or p.Name:lower() == input then
					found = true

					r = p
				end

				if p.DisplayName:lower():match("^" .. input) or p.DisplayName:lower() == input then
					r = p
				end
			else
				break
			end
		end

		return r
	end

	local function processtool(v, e)
		if not v:IsA("Tool") then
			return
		end

		local clon = Frame_2:Clone()

		if v.TextureId then
			clon.ImageLabel.Image = v.TextureId
		else
			clon.ImageLabel:Destroy()
		end

		local a = ""

		if e then
			a = " (Equipped)"
		end

		clon.TextLabel.Text = v.Name .. a

		clon.Parent = gui.Frame.ScrollingFrame
	end

	local function upd()
		pcall(function()
			rem()

			local plr = getplayer(TextBox.Text)

			if plr then
				gui.Frame.bp.Text = plr.Name .. "'s backpack"

				gui.Frame.bp.Visible = true

				for i, v in next, plr.Backpack:GetChildren() do
					processtool(v, false)
				end

				for i, v in next, plr.Character:GetChildren() do
					processtool(v, true)
				end
			else
				gui.Frame.bp.Visible = false
			end
		end)
	end

	gui.Frame.TextBox.Changed:Connect(upd)

	game:GetService("UserInputService").InputBegan:Connect(function(i, c)
		pcall(function()
			if c then
				return
			end

			if i.KeyCode == Enum.KeyCode.B then
				gui.Frame.Visible = not gui.Frame.Visible
			end
		end)
	end)

	print("\n\nLoaded Korabi's Backpack Viewer\n\nPress B to toggle\n\nCredits to Tech for the original idea")
end)()
