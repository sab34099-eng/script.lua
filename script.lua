local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local ButtonCorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 220, 0, 120)
Frame.Position = UDim2.new(0.5, -110, 0.5, -60)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 14)

UIStroke.Parent = Frame
UIStroke.Color = Color3.fromRGB(255,255,255)
UIStroke.Thickness = 2

Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,35)
Title.BackgroundTransparency = 1
Title.Text = "FLASH TP"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24

ToggleButton.Parent = Frame
ToggleButton.Size = UDim2.new(0,160,0,45)
ToggleButton.Position = UDim2.new(0.5,-80,0.55,0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(20,20,20)
ToggleButton.Text = "OFF"
ToggleButton.TextColor3 = Color3.fromRGB(255,255,255)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextSize = 22

ButtonCorner.Parent = ToggleButton
ButtonCorner.CornerRadius = UDim.new(0,12)

local enabled = false

ToggleButton.MouseButton1Click:Connect(function()
	enabled = not enabled
	
	if enabled then
		ToggleButton.Text = "ON"
		ToggleButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ToggleButton.TextColor3 = Color3.fromRGB(0,0,0)
	else
		ToggleButton.Text = "OFF"
		ToggleButton.BackgroundColor3 = Color3.fromRGB(20,20,20)
		ToggleButton.TextColor3 = Color3.fromRGB(255,255,255)
	end
end)