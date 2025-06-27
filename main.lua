-- Instances: 10 | Scripts: 4 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 2;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["2"]["Size"] = UDim2.new(0, 159, 0, 187);
G2L["2"]["Position"] = UDim2.new(0.3298, 0, 0.03234, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(209, 209, 79);


-- StarterGui.ScreenGui.Frame.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.ScreenGui.Frame.TextButton
G2L["4"] = Instance.new("TextButton", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 2;
G2L["4"]["TextSize"] = 14;
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Fondamento.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["Size"] = UDim2.new(0, 145, 0, 19);
G2L["4"]["BorderColor3"] = Color3.fromRGB(134, 140, 26);
G2L["4"]["Text"] = [[Kill All]];
G2L["4"]["Position"] = UDim2.new(0.04197, 0, 0.10959, 0);


-- StarterGui.ScreenGui.Frame.TextButton.LocalScript
G2L["5"] = Instance.new("LocalScript", G2L["4"]);



-- StarterGui.ScreenGui.Frame.ImageLabel
G2L["6"] = Instance.new("ImageLabel", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["6"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["6"]["Size"] = UDim2.new(0, 47, 0, 45);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Position"] = UDim2.new(0.3522, 0, 0.71658, 0);


-- StarterGui.ScreenGui.Frame.ImageLabel.LocalScript
G2L["7"] = Instance.new("LocalScript", G2L["6"]);



-- StarterGui.ScreenGui.Frame.TextLabel
G2L["8"] = Instance.new("TextLabel", G2L["2"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(0, 132, 0, 50);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[Troller Of Today :]];
G2L["8"]["Position"] = UDim2.new(0.08176, 0, 0.36364, 0);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["9"] = Instance.new("TextLabel", G2L["2"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 132, 0, 50);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Loading]];
G2L["9"]["Position"] = UDim2.new(0.08176, 0, 0.50267, 0);


-- StarterGui.ScreenGui.Frame.TextLabel.LocalScript
G2L["a"] = Instance.new("LocalScript", G2L["9"]);



-- StarterGui.ScreenGui.Frame.LocalScript
local function C_3()
local script = G2L["3"];
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end;
task.spawn(C_3);
-- StarterGui.ScreenGui.Frame.TextButton.LocalScript
local function C_5()
local script = G2L["5"];
	local buton = script.Parent
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local root = char:WaitForChild("HumanoidRootPart")
	local backpack = player:WaitForChild("Backpack")
	
	buton.MouseButton1Click:Connect(function()
		root.CFrame = CFrame.new(141, 1, 222)
		wait(1)
		root.CFrame = CFrame.new(-22, 1, 329)
		wait(0.5)
		local tool = backpack:FindFirstChildOfClass("Tool")
		if tool then
			tool.Parent = player.Character
		end
		local time = tick()
		repeat
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr ~= game.Players.LocalPlayer and plr.Character then
					local hum = plr.Character:FindFirstChildWhichIsA("Humanoid")
					local root = plr.Character:FindFirstChild("HumanoidRootPart")
					local tool = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
					local handle = tool and tool:FindFirstChild("Handle")
	
					if handle and root and hum and hum.Health > 0 then
						firetouchinterest(handle, root, 1)
						firetouchinterest(handle, root, 0)
					end
				end
			end
			task.wait(0.1)
		until tick() - time >= 5
	end)
end;
task.spawn(C_5);
-- StarterGui.ScreenGui.Frame.ImageLabel.LocalScript
local function C_7()
local script = G2L["7"];
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = Players:GetUserThumbnailAsync(player.UserId, thumbType, thumbSize)
	
	script.Parent.Image = content
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = script.Parent
	
end;
task.spawn(C_7);
-- StarterGui.ScreenGui.Frame.TextLabel.LocalScript
local function C_a()
local script = G2L["a"];
	local name = game.Players.LocalPlayer.Name
	local displayname = game.Players.LocalPlayer.DisplayName
	local stuff = name .. " " .. "(@" .. displayname .. ")"
	
	script.Parent.Text = stuff
end;
task.spawn(C_a);

return G2L["1"], require;
