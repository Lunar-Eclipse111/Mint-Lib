
local lib={}


for _,v in pairs(game.CoreGui:GetChildren()) do
	if v.Name == "MINT" then
		v:Destroy()
	end
end
local _New_ = Instance.new;
--objects
local MINT = _New_("ScreenGui", game.CoreGui);
MINT.Name = "MINT";
MINT.ZIndexBehavior = Enum.ZIndexBehavior.Global;



function lib:Make(Text)
	local main = _New_("Frame", MINT);
	main.AnchorPoint = Vector2.new(0.5, 0.5);
	main.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871);
	main.BorderColor3 = Color3.fromRGB(0, 0, 0);
	main.BorderSizePixel = 0;
	main.Name = "main";
	main.Position = UDim2.new(0.5, 0, 0.5, 0);
	main.Size = UDim2.new(0, 402, 0, 280);

	local UICorner = _New_("UICorner", main);

	local tabContainer = _New_("Frame", main);
	tabContainer.AnchorPoint = Vector2.new(0.5, 0.5);
	tabContainer.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871);
	tabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0);
	tabContainer.BorderSizePixel = 0;
	tabContainer.Name = "tabContainer";
	tabContainer.Position = UDim2.new(0, -46, 0, 139);
	tabContainer.Size = UDim2.new(0, 84, 0, 280);
	tabContainer.Visible = false;

	local UICorner_0 = _New_("UICorner", tabContainer);

	local UIListLayout = _New_("UIListLayout", tabContainer);
	UIListLayout.Padding = UDim.new(0, 4);
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;

	local UIPadding = _New_("UIPadding", tabContainer);
	UIPadding.PaddingTop = UDim.new(0, 6);
	local NM = _New_("Frame", main);

	NM.BackgroundColor3 = Color3.fromRGB(40.00000141561031, 40.00000141561031, 40.00000141561031);
	NM.BorderColor3 = Color3.fromRGB(0, 0, 0);
	NM.BorderSizePixel = 0;
	NM.Name = "NM";
	NM.Size = UDim2.new(1, 0, 0, 33);

	local UICorner_2 = _New_("UICorner", NM);

	local blocker = _New_("Frame", NM);
	blocker.BackgroundColor3 = Color3.fromRGB(40.00000141561031, 40.00000141561031, 40.00000141561031);
	blocker.BorderColor3 = Color3.fromRGB(0, 0, 0);
	blocker.BorderSizePixel = 0;
	blocker.Name = "blocker";
	blocker.Position = UDim2.new(0, 0, 0.6363636255264282, 0);
	blocker.Size = UDim2.new(1, 0, 0, 12);

	local Close = _New_("TextButton", NM);
	Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Close.BorderSizePixel = 0;
	Close.Name = "Close";
	Close.Position = UDim2.new(0.9203979969024658, 0, 0.27272728085517883, 0);
	Close.Size = UDim2.new(0, 15, 0, 15);
	Close.Font = Enum.Font.SourceSans;
	Close.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Close.Text = "";
	Close.TextColor3 = Color3.fromRGB(0, 0, 0);
	Close.TextSize = 14;

	Close.MouseButton1Down:Connect(function()
game.CoreGui.MINT:Destroy()
		end)

	local UICorner_3 = _New_("UICorner", Close);
	UICorner_3.CornerRadius = UDim.new(1, 0);

	local Name = _New_("TextLabel", NM);
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Name.BackgroundTransparency = 1;
	Name.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Name.BorderSizePixel = 0;
	Name.Name = "Name";
	Name.Position = UDim2.new(0.15920397639274597, 0, 0, 0);
	Name.Size = UDim2.new(0.6940298676490784, 0, 1, 0);
	Name.Font = Enum.Font.Unknown;
	Name.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Name.Text = Text or "LUNR LIB";
	Name.TextColor3 = Color3.fromRGB(108.00000876188278, 108.00000876188278, 108.00000876188278);
	Name.TextSize = 14;

	local OpenTabs = _New_("TextButton", NM);
	OpenTabs.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
	OpenTabs.BackgroundTransparency = 1;
	OpenTabs.BorderColor3 = Color3.fromRGB(0, 0, 0);
	OpenTabs.BorderSizePixel = 0;
	OpenTabs.Name = "OpenTabs";
	OpenTabs.Position = UDim2.new(0.017412934452295303, 0, 0.09090909361839294, 0);
	OpenTabs.Size = UDim2.new(0, 26, 0, 26);
	OpenTabs.Font = Enum.Font.Unknown;
	OpenTabs.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	OpenTabs.Text = "+";
	OpenTabs.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
	OpenTabs.TextSize = 23;

	local UICorner_4 = _New_("UICorner", OpenTabs);
	UICorner_4.CornerRadius = UDim.new(1, 0);

	local open = false

	OpenTabs.MouseButton1Down:Connect(function()
		if open == false then
			open = true
			tabContainer.Visible = true
		else
			open = false
			tabContainer.Visible = false
		end
	end)
	local Smooth_GUI_Dragging = _New_("LocalScript", main);
	Smooth_GUI_Dragging.Name = "Smooth GUI Dragging";
	task.spawn(function()--[[Smooth_GUI_Dragging]] 
		local script = Smooth_GUI_Dragging;


		local UserInputService = game:GetService("UserInputService")
		local runService = (game:GetService("RunService"));

		local gui = script.Parent
		local dragger = main

		local dragging
		local dragInput
		local dragStart
		local startPos

		function Lerp(a, b, m)
			return a + (b - a) * m
		end;

		local lastMousePos
		local lastGoalPos
		local DRAG_SPEED = (99); -- // The speed of the UI darg.
		function Update(dt)
			if not (startPos) then return end;
			if not (dragging) and (lastGoalPos) then
				gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
				return 
			end;

			local delta = (lastMousePos - UserInputService:GetMouseLocation())
			local xGoal = (startPos.X.Offset - delta.X);
			local yGoal = (startPos.Y.Offset - delta.Y);
			lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
		end;

		dragger.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				lastMousePos = UserInputService:GetMouseLocation()

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		dragger.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		runService.Heartbeat:Connect(Update)
	end);





	local tabs={}

	function tabs:Tab(Text)

		local main1 = _New_("TextButton", tabContainer);
		main1.BackgroundColor3 = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993);
		main1.BorderColor3 = Color3.fromRGB(0, 0, 0);
		main1.BorderSizePixel = 0;
		main1.Name = "main1";
		main1.Position = UDim2.new(0.0500001460313797, 0, 0, 0);
		main1.Size = UDim2.new(0.9000000953674316, 0, -0.11313868314027786, 50);
		main1.Font = Enum.Font.Unknown;
		main1.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		main1.Text = Text or "MISSING TEXT";
		main1.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
		main1.TextSize = 14;

		local UICorner_1 = _New_("UICorner", main1);



		local container = _New_("Frame", main);
		container.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		container.BackgroundTransparency = 1;
		container.BorderColor3 = Color3.fromRGB(0, 0, 0);
		container.BorderSizePixel = 0;
		container.Name = "container";
		container.Position = UDim2.new(0, 0, 0.11785714328289032, 0);
		container.Size = UDim2.new(1, 0, 0, 247);

		local Items = _New_("ScrollingFrame", container);
		Items.Active = true;
		Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Items.BackgroundTransparency = 1;
		Items.Name = "Items";
		Items.Size = UDim2.new(1, 0, 1, 0);
		Items.Visible = true;
		Items.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Items.CanvasSize = UDim2.new(0, 0, 0, 0);
		Items.ElasticBehavior = Enum.ElasticBehavior.Never;
		Items.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar;
		Items.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
		Items.ScrollBarThickness = 0;

		local UIListLayout_0 = _New_("UIListLayout", Items);
		UIListLayout_0.Padding = UDim.new(0, 6);
		UIListLayout_0.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		UIListLayout_0.SortOrder = Enum.SortOrder.LayoutOrder;

		container.Visible = false
		local UIPadding_0 = _New_("UIPadding", Items);
		UIPadding_0.PaddingTop = UDim.new(0, 6);
		-- tab code

		main1.MouseButton1Click:Connect(function()
			for _,v in pairs(game.CoreGui:FindFirstChild('MINT').main:GetChildren()) do
				if v.Name == "container" then
					v.Visible = false
				end
			end
			for _,v in pairs(game.CoreGui['MINT'].main.tabContainer:GetChildren()) do
				if v:IsA('TextButton') then
					game:GetService('TweenService'):Create(v, TweenInfo.new(0.3), {TextTransparency = 0.5}):Play()
				end
			end
			container.Visible = true
			game:GetService('TweenService'):Create(main1, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
		end)


		local stuff={}

		function stuff:Label(Text)
			local Label = _New_("Frame", Items);
			Label.BackgroundColor3 = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993);
			Label.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Label.Name = "Label";
			Label.Position = UDim2.new(0.1223958358168602, 0, -1.059638137235197e-07, 0);
			Label.Size = UDim2.new(0, 368, 0, 38);

			local UICorner = _New_("UICorner", Label);

			local Action = _New_("TextButton", Label);
			Action.AutoButtonColor = false;
			Action.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Action.BackgroundTransparency = 1;
			Action.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Action.Name = "Action";
			Action.Position = UDim2.new(0.016227180138230324, 0, 0, 0);
			Action.Size = UDim2.new(0.9837728142738342, 0, 1, 0);
			Action.Font = Enum.Font.Unknown;
			Action.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Action.Text = Text;
			Action.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
			Action.TextSize = 14;
			Action.TextXAlignment = Enum.TextXAlignment.Left;
		end


		function stuff:Button(Text,callback)

			local Button = _New_("Frame", Items);
			Button.BackgroundColor3 = Color3.fromRGB(53.000004440546036, 53.000004440546036, 53.000004440546036);
			Button.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Button.Name = "Button";
			Button.Position = UDim2.new(0.1223958358168602, 0, 0.30555546283721924, 0);
			Button.Size = UDim2.new(0, 368, 0, 38);

			local UICorner = _New_("UICorner", Button);

			local ButtonText = _New_("TextLabel", Button);
			ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ButtonText.BackgroundTransparency = 1;
			ButtonText.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			ButtonText.Name = "ButtonText";
			ButtonText.Position = UDim2.new(0.016227180138230324, 0, 0, 0);
			ButtonText.Size = UDim2.new(0.36916837096214294, 0, 1, 0);
			ButtonText.Font = Enum.Font.Unknown;
			ButtonText.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			ButtonText.Text = Text;
			ButtonText.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
			ButtonText.TextSize = 14;
			ButtonText.TextXAlignment = Enum.TextXAlignment.Left;

			local Buttonnn = _New_("TextButton", Button);
			Buttonnn.AutoButtonColor = false;
			Buttonnn.BackgroundColor3 = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);
			Buttonnn.BackgroundTransparency = 1;
			Buttonnn.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Buttonnn.Name = "Buttonnn";
			Buttonnn.Size = UDim2.new(1, 0, 1, 0);
			Buttonnn.Font = Enum.Font.SourceSans;
			Buttonnn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Buttonnn.Text = "";
			Buttonnn.TextColor3 = Color3.fromRGB(0, 0, 0);
			Buttonnn.TextSize = 14;

			local UICorner_0 = _New_("UICorner", Buttonnn);

			Buttonnn.MouseButton1Down:Connect(function()
				callback();
			end)
		end

		function stuff:Toggle(Text,callback)

			local Toggle = _New_("Frame", Items);
			Toggle.BackgroundColor3 = Color3.fromRGB(53.000004440546036, 53.000004440546036, 53.000004440546036);
			Toggle.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Toggle.Name = "Toggle";
			Toggle.Position = UDim2.new(0.1223958358168602, 0, -1.059638137235197e-07, 0);
			Toggle.Size = UDim2.new(0, 368, 0, 38);

			local UICorner = _New_("UICorner", Toggle);

			local Action = _New_("TextButton", Toggle);
			Action.AutoButtonColor = false;
			Action.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Action.BackgroundTransparency = 1;
			Action.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Action.Name = "Action";
			Action.Position = UDim2.new(0.016227180138230324, 0, 0, 0);
			Action.Size = UDim2.new(0.9837728142738342, 0, 1, 0);
			Action.Font = Enum.Font.Unknown;
			Action.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Action.Text = Text;
			Action.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
			Action.TextSize = 14;
			Action.TextXAlignment = Enum.TextXAlignment.Left;

			local Checked = _New_("Frame", Toggle);
			Checked.BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818);
			Checked.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Checked.Name = "Checked";
			Checked.Position = UDim2.new(0.9121670722961426, 0, 0.2631579041481018, 0);
			Checked.Size = UDim2.new(0, 18, 0, 18);

			local UICorner_0 = _New_("UICorner", Checked);

			local enabled = false

			Action.MouseButton1Down:Connect(function()
				if enabled == false then
					enabled =true
					pcall(callback,true)
					game:GetService("TweenService"):Create(Checked, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(130, 130, 130)}):Play()
				else
					enabled =false
					pcall(callback,false)
					game:GetService("TweenService"):Create(Checked, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(34, 34, 34)}):Play()

				end
			end)

		end
		-- End Toggle
		function stuff:Slider(Text,minvalue,maxvalue,callback)
			callback = callback or function() end
			local Slider = _New_("Frame", Items);
			Slider.BackgroundColor3 = Color3.fromRGB(53.000004440546036, 53.000004440546036, 53.000004440546036);
			Slider.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Slider.Name = "Slider";
			Slider.Position = UDim2.new(0.1223958358168602, 0, 0.15277767181396484, 0);
			Slider.Size = UDim2.new(0, 368, 0, 38);

			local UICorner = _New_("UICorner", Slider);

			local SliderText = _New_("TextLabel", Slider);
			SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			SliderText.BackgroundTransparency = 1;
			SliderText.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			SliderText.Name = "SliderText";
			SliderText.Position = UDim2.new(0.016227180138230324, 0, 0, 0);
			SliderText.Size = UDim2.new(0.36916837096214294, 0, 1, 0);
			SliderText.Font = Enum.Font.Unknown;
			SliderText.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			SliderText.Text = Text or "N/A";
			SliderText.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
			SliderText.TextSize = 14;
			SliderText.TextXAlignment = Enum.TextXAlignment.Left;

			local Slider_Back = _New_("TextButton", Slider);
			Slider_Back.AutoButtonColor = false;
			Slider_Back.BackgroundColor3 = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);
			Slider_Back.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			Slider_Back.Name = "Slider Back";
			Slider_Back.Position = UDim2.new(0.3083164393901825, 0, 0.3684210479259491, 0);
			Slider_Back.Size = UDim2.new(0, 196, 0, 14);
			Slider_Back.Font = Enum.Font.SourceSans;
			Slider_Back.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Slider_Back.Text = "";
			Slider_Back.TextColor3 = Color3.fromRGB(0, 0, 0);
			Slider_Back.TextSize = 14;

			local UICorner_0 = _New_("UICorner", Slider_Back);

			local SliderFill = _New_("Frame", Slider_Back);
			SliderFill.BackgroundColor3 = Color3.fromRGB(24.000000469386578, 255, 166.00000530481339);
			SliderFill.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			SliderFill.Name = "SliderFill";
			SliderFill.Size = UDim2.new(0, 0, 1, 0);

			local UICorner_1 = _New_("UICorner", SliderFill);

			local ValueTXT = _New_("TextLabel", Slider);
			ValueTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ValueTXT.BackgroundTransparency = 1;
			ValueTXT.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
			ValueTXT.Name = "Value";
			ValueTXT.Position = UDim2.new(0.8409251570701599, 0, 0.2631579041481018, 0);
			ValueTXT.Size = UDim2.new(0.0690944641828537, 0, 0.5789473652839661, 0);
			ValueTXT.Font = Enum.Font.Unknown;
			ValueTXT.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			ValueTXT.Text = "0";
			ValueTXT.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
			ValueTXT.TextSize = 14;
			ValueTXT.TextXAlignment = Enum.TextXAlignment.Right;

			-----Values-----
			minvalue = minvalue or 0
			maxvalue = maxvalue or 100


			-----Callback-----
			callback = callback or function() end


			-----Variables-----
			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")
			local Value;




			-----Main Code-----

			Slider_Back.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 196) * -SliderFill.AbsoluteSize.X) + tonumber(minvalue)) or 0
				pcall(function()
					callback(Value)
				end)
				SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, 196), 0, 13)
				moveconnection = mouse.Move:Connect(function()
					ValueTXT.Text = Value
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 196) *SliderFill.AbsoluteSize.X) + tonumber(minvalue))
					pcall(function()
						callback(Value)
					end)
					SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, 196), 0, 13)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 196) * SliderFill.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()
							callback(Value)
						end)
						SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, 196), 0, 13)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)			
		end
		--end slider


		function stuff:ColorPicker(Text,callback)

			

local Cpicker = _New_("Frame", Items);
Cpicker.BackgroundColor3 = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993);
Cpicker.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
Cpicker.Name = "Cpicker";
Cpicker.Position = UDim2.new(0.1223958358168602, 0, -1.059638137235197e-07, 0);
Cpicker.Size = UDim2.new(0, 368, 0, 38);

local UICorner = _New_("UICorner", Cpicker);

local Action = _New_("TextButton", Cpicker);
Action.AutoButtonColor = false;
Action.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Action.BackgroundTransparency = 1;
Action.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
Action.Name = "Action";
Action.Position = UDim2.new(0.016227180138230324, 0, 0, 0);
Action.Size = UDim2.new(0.9837728142738342, 0, 1, 0);
Action.Font = Enum.Font.Unknown;
Action.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Action.Text = Text or "No Text Found" ;
Action.TextColor3 = Color3.fromRGB(179.000004529953, 179.000004529953, 179.000004529953);
Action.TextSize = 14;
Action.TextXAlignment = Enum.TextXAlignment.Left;

local LocalScript = _New_("LocalScript", Action);

local Checked = _New_("Frame", Cpicker);
Checked.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
Checked.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
Checked.Name = "Checked";
Checked.Position = UDim2.new(0.8409251570701599, 0, 0.2631579041481018, 0);
Checked.Size = UDim2.new(0, 44, 0, 18);

local ColorUI = _New_("Frame", main);
ColorUI.BackgroundColor3 = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993);
ColorUI.BorderColor3 = Color3.fromRGB(38.0000015348196, 38.0000015348196, 38.0000015348196);
ColorUI.BorderSizePixel = 0;
ColorUI.Name = "ColorUI";
ColorUI.Position = UDim2.new(1.0162773132324219, 0, 0.13928571343421936, 0);
ColorUI.Size = UDim2.new(0.6318408250808716, 0, 0.6021998524665833, 0);
ColorUI.Visible = false;
ColorUI.ZIndex = 2;

local UICorner = _New_("UICorner", ColorUI);
UICorner.CornerRadius = UDim.new(0, 6);

local HueSat = _New_("ImageLabel", ColorUI);
HueSat.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
HueSat.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
HueSat.Name = "HueSat";
HueSat.Position = UDim2.new(0, 7, 0, 5);
HueSat.Size = UDim2.new(0, 192, 0, 159);
HueSat.ZIndex = 2;
HueSat.Image = "rbxassetid://698052001";

local Frame = _New_("Frame", HueSat);
Frame.AnchorPoint = Vector2.new(0.5, 0.5);
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Frame.BackgroundTransparency = 0.20000000298023224;
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
Frame.Rotation = 45;
Frame.Size = UDim2.new(0, 4, 0, 4);

local UICorner_0 = _New_("UICorner", HueSat);

local Value = _New_("ImageLabel", ColorUI);
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Value.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
Value.Name = "Value";
Value.Position = UDim2.new(0, 215, 0, 4);
Value.Size = UDim2.new(0, 20, 0, 159);
Value.ZIndex = 2;
Value.Image = "rbxassetid://3641079629";

local Frame_0 = _New_("TextLabel", Value);
Frame_0.AnchorPoint = Vector2.new(0, 0.5);
Frame_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Frame_0.BackgroundTransparency = 1;
Frame_0.BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036);
Frame_0.Name = "Frame";
Frame_0.Position = UDim2.new(1, -6, 0, 0);
Frame_0.Size = UDim2.new(0, 16, 0, 16);
Frame_0.ZIndex = 2;
Frame_0.Font = Enum.Font.SourceSans;
Frame_0.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Frame_0.Text = "◄";
Frame_0.TextColor3 = Color3.fromRGB(0, 0, 0);
Frame_0.TextSize = 12;
Frame_0.TextStrokeColor3 = Color3.fromRGB(130.0000074505806, 130.0000074505806, 130.0000074505806);
Frame_0.TextStrokeTransparency = 0;

local UICorner_0 = _New_("UICorner", Checked);

--Scripts
task.spawn(function()--[[LocalScript]] 
	local script = LocalScript;


	local pick = false
	
	script.Parent.MouseButton1Down:Connect(function()
		if pick == false then
			pick = true
			ColorUI.Visible = pick
		else
			pick = false
			ColorUI.Visible = pick
		end
	end)
end);





local UICorner_1 = _New_("UICorner", Value);

local LocalScript = _New_("LocalScript", ColorUI);

--Scripts
task.spawn(function()--[[LocalScript]] 
	local script = LocalScript;



	local gui = ColorUI
	local pickingHueSat = false
	local pickingValue = false
	local update
	local volor = Checked
	local value = volor.BackgroundColor3

	local hue = 0
	local sat = 0
	local val = 1

	local function updateHueSat(input, obj)
		hue = (obj.AbsoluteSize.X-(input.Position.X-obj.AbsolutePosition.X))/obj.AbsoluteSize.X
		sat = (obj.AbsoluteSize.Y-(input.Position.Y-obj.AbsolutePosition.Y))/obj.AbsoluteSize.Y
		return (input.Position.X-obj.AbsolutePosition.X)/obj.AbsoluteSize.X, (input.Position.Y-obj.AbsolutePosition.Y)/obj.AbsoluteSize.Y
	end

	local function updateValue(input, obj)
		val = (obj.AbsoluteSize.Y-(input.Position.Y-obj.AbsolutePosition.Y))/obj.AbsoluteSize.Y
		return (input.Position.Y-obj.AbsolutePosition.Y)/obj.AbsoluteSize.Y
	end

	gui.HueSat.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			pickingHueSat = true
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					pickingHueSat = false
				end
			end)
			local x, y = updateHueSat(input, gui.HueSat)
			gui.HueSat.Frame.Position = UDim2.new(x,0,y,0)
			volor.BackgroundColor3 = Color3.fromHSV(hue, sat, val)
		end
	end)

	gui.Value.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			pickingValue = true
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					pickingValue = false
				end
			end)
			local y = updateValue(input, gui.Value)
			gui.Value.Frame.Position = UDim2.new(1,-6,y,0)


			--	gui.Color.BackgroundColor3 = Color3.fromHSV(hue, sat, val)



			volor.BackgroundColor3 = Color3.fromHSV(hue, sat, val)







		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if pickingHueSat then
				local x, y = updateHueSat(input, gui.HueSat)
				if x <= 0 then
					x = 0
					hue = 1
				end
				if x >= 1 then
					x = 1
					hue = 0
				end
				if y <= 0 then
					y = 0
					sat = 1
				end
				if y >= 1 then
					y = 1
					sat = 0
				end
				gui.HueSat.Frame.Position = UDim2.new(x,0,y,0)
				volor.BackgroundColor3 = Color3.fromHSV(hue,sat,val)






				-- Callback stuff here

				pcall(function()
					callback(Color3.fromHSV(hue, sat, val))
				end)


			end
			if pickingValue then
				local y = updateValue(input, gui.Value)
				if y <= 0 then
					y = 0
					val = 1
				end
				if y >= 1 then
					y = 1
					val = 0
				end
				gui.Value.Frame.Position = UDim2.new(1,-6,y,0)
				volor.BackgroundColor3 = Color3.fromHSV(hue,sat,val)



			end
		end
	end)


end);


		end
		--end color picker
		--End stuff	



		return stuff
	end

	return tabs
end
return lib


