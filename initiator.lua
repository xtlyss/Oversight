GitHub = _
publicGit = __
clientGit = GitHub.new("xtlyss/OversightClient",TOKEN)

ErrorGUI = Instance.new("ScreenGui")
ErrorGUI.Name = "ErrorGUI"
ErrorGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ErrorGUI.IgnoreGuiInset = true
ErrorGUI.DisplayOrder = 900000

Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.ZIndex = 2
Frame.Size = UDim2.new(0, 400, 0, 50)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Frame.Parent = ErrorGUI

UICorner = Instance.new("UICorner")
UICorner.Parent = Frame

TextLabel = Instance.new("TextLabel")
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.FontSize = Enum.FontSize.Size28
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextSize = 25
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text = "Please wait..."
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Parent = Frame

Frame2 = Instance.new("Frame")
Frame2.Name = "Frame2"
Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame2.Size = UDim2.new(0, 404, 0, 54)
Frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame2.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
Frame2.Parent = ErrorGUI

UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(0, 10)
UICorner1.Parent = Frame2

if not syn then
	Frame2.BackgroundColor3 = Color3.new(1,0,0)
	TextLabel.Text = "This script only works on Synapse X."
	ErrorGUI.Parent = game:GetService("CoreGui")
elseif game.GameId ~= 2440500124 then
	Frame2.BackgroundColor3 = Color3.new(1,0,0)
	syn.protect_gui(ErrorGUI)
	ErrorGUI.Parent = game:GetService("CoreGui")
	TextLabel.Text = "This script only works on Doors."
else
	syn.protect_gui(ErrorGUI)
	ErrorGUI.Parent = game:GetService("CoreGui")
	--local s,f = pcall(function()
	clientGit:Require("script.lua")
	--[[end)
	if not s then
		ErrorGUI:Destroy()
		warn(f)
	end]]
end