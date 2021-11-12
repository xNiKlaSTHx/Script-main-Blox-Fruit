-------------------------BF OGED HUB-------------------------

wait(1)

if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
local RadientPaid = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")
local pfp
local user
local tag
local userinfo = {}

_G.Key = ""
_G.Discord = ""

if game.CoreGui:FindFirstChild(_G.Key .."," .. _G.Discord) then
   game.CoreGui:FindFirstChild(_G.Key .."," .. _G.Discord):Destroy()
end

pcall(function()
   userinfo = HttpService:JSONDecode(readfile("Radient.txt"));
end)

pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
user =  userinfo["user"] or game.Players.LocalPlayer.Name
tag = userinfo["tag"] or tostring(math.random(1,10))

local function SaveInfo()
   userinfo["pfp"] = pfp
   userinfo["user"] = user
   userinfo["tag"] = tag
   writefile("Radient.txt", HttpService:JSONEncode(userinfo));
end

local function MakeDraggable(topbarobject, object)
   local Dragging = nil
   local DragInput = nil
   local DragStart = nil
   local StartPosition = nil

   local function Update(input)
      local Delta = input.Position - DragStart
      local pos =
         UDim2.new(StartPosition.X.Scale,StartPosition.X.Offset + Delta.X,StartPosition.Y.Scale,StartPosition.Y.Offset + Delta.Y)
      local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
      Tween:Play()
   end

   topbarobject.InputBegan:Connect(
      function(input)
         if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position

            input.Changed:Connect(function()
               if input.UserInputState == Enum.UserInputState.End then
                  Dragging = false
               end
            end)
         end
      end)

   topbarobject.InputChanged:Connect(
      function(input)
         if
            input.UserInputType == Enum.UserInputType.MouseMovement or
               input.UserInputType == Enum.UserInputType.Touch
         then
            DragInput = input
         end
      end)

   UserInputService.InputChanged:Connect(
      function(input)
         if input == DragInput and Dragging then
            Update(input)
         end
      end)
end

local RadientPaidSC = Instance.new("ScreenGui")
RadientPaidSC.Name = _G.Key .."," .. _G.Discord
RadientPaidSC.Parent = game.CoreGui
RadientPaidSC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
   if inputObject.KeyCode == Enum.KeyCode.RightControl then
      wait()
      RadientPaidSC.Enabled = not RadientPaidSC.Enabled
   end
end)

function RadientPaid:Window(text,maincolor)

   local currentservertoggled = ""
   local minimized = false
   local fs = false
   local settingsopened = false
   local MainFrame = Instance.new("Frame")
   local TopFrame = Instance.new("Frame")
   local Title = Instance.new("TextLabel")
   local CloseBtn = Instance.new("TextButton")
   local CloseIcon = Instance.new("ImageLabel")
   local MinimizeBtn = Instance.new("TextButton")
   local MinimizeIcon = Instance.new("ImageLabel")
   local ServersHolder = Instance.new("Folder")
   local Userpad = Instance.new("Frame")
   local UserIcon = Instance.new("Frame")
   local UserIconCorner = Instance.new("UICorner")
   local Corner_1 = Instance.new("UICorner")
   local UserImage = Instance.new("ImageLabel")
   local UserCircleImage = Instance.new("ImageLabel")
   local UserName = Instance.new("TextLabel")
   local UserTag = Instance.new("TextLabel")
   local ServersHoldFrame = Instance.new("Frame")
   local ServersHold = Instance.new("ScrollingFrame")
   local ServersHoldLayout = Instance.new("UIListLayout")
   local ServersHoldPadding = Instance.new("UIPadding")
   local TopFrameHolder = Instance.new("Frame")
   local TopFramess = Instance.new("Frame")

   MainFrame.Name = "MainFrame"
   MainFrame.Parent = RadientPaidSC
   MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
   MainFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
   MainFrame.BackgroundTransparency = 1
   MainFrame.BorderSizePixel = 0
   MainFrame.ClipsDescendants = true
   MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
   MainFrame.Size = UDim2.new(0, 611, 0, 396)

   Corner_1.CornerRadius = UDim.new(0, 7)
   Corner_1.Name = "UserIconCorner"
   Corner_1.Parent = MainFrame

   TopFrame.Name = "TopFrame"
   TopFrame.Parent = MainFrame
   TopFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
   TopFrame.BackgroundTransparency = 1
   TopFrame.BorderSizePixel = 0
   TopFrame.Position = UDim2.new(-0.000658480625, 0, 0, 0)
   TopFrame.Size = UDim2.new(0, 681, 0, 22)

   TopFramess.Name = "TopFramess"
   TopFramess.Parent = TopFrame
   TopFramess.BackgroundColor3 = Color3.fromRGB(255,255,255)
   TopFramess.BackgroundTransparency = 1
   TopFramess.BorderSizePixel = 0
   TopFramess.ZIndex = 99
   TopFramess.Position = UDim2.new(-0.2, 0, 1.3, 0)
   TopFramess.Size = UDim2.new(0, 681, 0, 22)

   TopFrameHolder.Name = "TopFrameHolder"
   TopFrameHolder.Parent = TopFrame
   TopFrameHolder.BackgroundColor3 = Color3.fromRGB(20,20,20)
   TopFrameHolder.BackgroundTransparency = 1.000
   TopFrameHolder.BorderSizePixel = 0
   TopFrameHolder.Position = UDim2.new(-0.000658480625, 0, 0, 0)
   TopFrameHolder.Size = UDim2.new(0, 20, 0, 22)


   Title.Name = "Title"
   Title.Parent = TopFrame
   Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Title.BackgroundTransparency = 1.000
   Title.Position = UDim2.new(0.0102790017, 0, 0, 0)
   Title.Size = UDim2.new(0, 192, 0, 23)
   Title.Font = Enum.Font.GothamBold
   Title.Text = text
   Title.TextTransparency = 0
   Title.TextColor3 = Color3.fromRGB(255,255,255)
   Title.TextSize = 13.000
   Title.TextXAlignment = Enum.TextXAlignment.Left

   CloseBtn.Name = "CloseBtn"
   CloseBtn.Parent = TopFrame
   CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
   CloseBtn.BackgroundTransparency = 1
   CloseBtn.Position = UDim2.new(0.85, 0, 1.3, 0)
   CloseBtn.Size = UDim2.new(0, 28, 0, 22)
   CloseBtn.Font = Enum.Font.Gotham
   CloseBtn.Text = ""
   CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   CloseBtn.TextSize = 14.000
   CloseBtn.BorderSizePixel = 0
   CloseBtn.AutoButtonColor = false

   CloseIcon.Name = "CloseIcon"
   CloseIcon.Parent = CloseBtn
   CloseIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   CloseIcon.BackgroundTransparency = 1.000
   CloseIcon.Position = UDim2.new(0.2, 0, 0.128935531, 0)
   CloseIcon.Size = UDim2.new(0, 17, 0, 17)
   CloseIcon.Image = "http://www.roblox.com/asset/?id=6035047409"
   CloseIcon.ImageColor3 = Color3.fromRGB(220, 221, 222)

   MinimizeBtn.Name = "MinimizeButton"
   MinimizeBtn.Parent = TopFrame
   MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
   MinimizeBtn.BackgroundTransparency = 1
   MinimizeBtn.Position = UDim2.new(0.8, 0, 1.3, 0)
   MinimizeBtn.Size = UDim2.new(0, 28, 0, 22)
   MinimizeBtn.Font = Enum.Font.Gotham
   MinimizeBtn.Text = ""
   MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   MinimizeBtn.TextSize = 14.000
   MinimizeBtn.BorderSizePixel = 0
   MinimizeBtn.AutoButtonColor = false

   MinimizeIcon.Name = "MinimizeLabel"
   MinimizeIcon.Parent = MinimizeBtn
   MinimizeIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   MinimizeIcon.BackgroundTransparency = 1.000
   MinimizeIcon.Position = UDim2.new(0.2, 0, 0.128935531, 0)
   MinimizeIcon.Size = UDim2.new(0, 17, 0, 17)
   MinimizeIcon.Image = "http://www.roblox.com/asset/?id=6035067836"
   MinimizeIcon.ImageColor3 = Color3.fromRGB(220, 221, 222)

   ServersHolder.Name = "ServersHolder"
   ServersHolder.Parent = TopFrameHolder

   Userpad.Name = "Userpad"
   Userpad.Parent = TopFrameHolder
   Userpad.BackgroundColor3 = Color3.fromRGB(20,20,20)
   Userpad.BorderSizePixel = 0
   Userpad.Position = UDim2.new(0.106243297, 0, 15.9807148, 0)
   Userpad.Size = UDim2.new(0, 179, 0, 43)

   UserIcon.Name = "UserIcon"
   UserIcon.Parent = Userpad
   UserIcon.BackgroundColor3 = Color3.fromRGB(20,20,20)
   UserIcon.BorderSizePixel = 0
   UserIcon.Position = UDim2.new(0.0340000018, 0, 0.123999998, 0)
   UserIcon.Size = UDim2.new(0, 32, 0, 32)

   UserIconCorner.CornerRadius = UDim.new(1, 8)
   UserIconCorner.Name = "UserIconCorner"
   UserIconCorner.Parent = UserIcon

   UserImage.Name = "UserImage"
   UserImage.Parent = UserIcon
   UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserImage.BackgroundTransparency = 1.000
   UserImage.Size = UDim2.new(0, 32, 0, 32)
   UserImage.Image = "http://www.roblox.com/asset/?id=7878352337"

   UserCircleImage.Name = "UserImage"
   UserCircleImage.Parent = UserImage
   UserCircleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserCircleImage.BackgroundTransparency = 1.000
   UserCircleImage.Size = UDim2.new(0, 32, 0, 32)
   UserCircleImage.Image = "rbxassetid://4031889928"
   UserCircleImage.ImageColor3 = Color3.fromRGB(20,20,20)

   UserName.Name = "UserName"
   UserName.Parent = Userpad
   UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserName.BackgroundTransparency = 1.000
   UserName.BorderSizePixel = 0
   UserName.Position = UDim2.new(0.230000004, 0, 0.115999997, 0)
   UserName.Size = UDim2.new(0, 98, 0, 17)
   UserName.Font = Enum.Font.GothamSemibold
   UserName.TextSize = 13.000
   UserName.TextTransparency = 1
   UserName.TextXAlignment = Enum.TextXAlignment.Left
   UserName.ClipsDescendants = true

   UserTag.Name = "UserTag"
   UserTag.Parent = Userpad
   UserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserTag.BackgroundTransparency = 1.000
   UserTag.BorderSizePixel = 0
   UserTag.Position = UDim2.new(0.230000004, 0, 0.275000013, 0)
   UserTag.Size = UDim2.new(0, 95, 0, 17)
   UserTag.Font = Enum.Font.GothamBold
   UserTag.TextColor3 = Color3.fromRGB(233, 25, 42)
   UserTag.TextSize = 13.000
   UserTag.TextTransparency = 0
   UserTag.TextXAlignment = Enum.TextXAlignment.Left

   UserName.Text = "OGED Hub"
   UserTag.Text = "#" .. " OGED"

   ServersHoldFrame.Name = "ServersHoldFrame"
   ServersHoldFrame.Parent = MainFrame
   ServersHoldFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ServersHoldFrame.BackgroundTransparency = 1.000
   ServersHoldFrame.BorderColor3 = Color3.fromRGB(20,20,20)
   ServersHoldFrame.Size = UDim2.new(0, 71, 0, 396)

   ServersHold.Name = "ServersHold"
   ServersHold.Parent = ServersHoldFrame
   ServersHold.Active = true
   ServersHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ServersHold.BackgroundTransparency = 1.000
   ServersHold.BorderSizePixel = 0
   ServersHold.Position = UDim2.new(-0.000359333731, 0, 0.0580808073, 0)
   ServersHold.Size = UDim2.new(0, 71, 0, 373)
   ServersHold.ScrollBarThickness = 1
   ServersHold.ScrollBarImageTransparency = 1
   ServersHold.CanvasSize = UDim2.new(0, 0, 0, 0)

   ServersHoldLayout.Name = "ServersHoldLayout"
   ServersHoldLayout.Parent = ServersHold
   ServersHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
   ServersHoldLayout.Padding = UDim.new(0, 7)

   ServersHoldPadding.Name = "ServersHoldPadding"
   ServersHoldPadding.Parent = ServersHold

   CloseBtn.MouseButton1Click:Connect(
      function()
         MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .5, true)
      end
   )

   CloseBtn.MouseEnter:Connect(
      function()
         CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   CloseBtn.MouseLeave:Connect(
      function()
         CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   MinimizeBtn.MouseEnter:Connect(
      function()
         MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   MinimizeBtn.MouseLeave:Connect(
      function()
         MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   MinimizeBtn.MouseButton1Click:Connect(
      function()
         if minimized == false then
            MainFrame:TweenSize(
               UDim2.new(0, 611, 0, 64),
               Enum.EasingDirection.Out,
               Enum.EasingStyle.Quart,
               .3,
               true
            )
         else
            MainFrame:TweenSize(
               UDim2.new(0, 611, 0, 396),
               Enum.EasingDirection.Out,
               Enum.EasingStyle.Quart,
               .3,
               true
            )
         end
         minimized = not minimized
      end
   )

   local SettingsOpenBtn = Instance.new("TextButton")
   local SettingsOpenBtnIco = Instance.new("ImageLabel")

   SettingsOpenBtn.Name = "SettingsOpenBtn"
   SettingsOpenBtn.Parent = Userpad
   SettingsOpenBtn.BackgroundColor3 = Color3.fromRGB(53, 56, 62)
   SettingsOpenBtn.BackgroundTransparency = 1.000
   SettingsOpenBtn.Position = UDim2.new(0.849161983, 0, 0.279069781, 0)
   SettingsOpenBtn.Size = UDim2.new(0, 0, 0, 0)
   SettingsOpenBtn.Font = Enum.Font.SourceSans
   SettingsOpenBtn.Text = ""
   SettingsOpenBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
   SettingsOpenBtn.TextSize = 14.000

   SettingsOpenBtnIco.Name = "SettingsOpenBtnIco"
   SettingsOpenBtnIco.Parent = SettingsOpenBtn
   SettingsOpenBtnIco.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
   SettingsOpenBtnIco.BackgroundTransparency = 1.000
   SettingsOpenBtnIco.Size = UDim2.new(0, 0, 0, 0)
   SettingsOpenBtnIco.ImageTransparency = 1
   SettingsOpenBtnIco.Image = "http://www.roblox.com/asset/?id=6031280882"
   SettingsOpenBtnIco.ImageColor3 = Color3.fromRGB(220, 220, 220)
   local SettingsFrame = Instance.new("Frame")
   local Settings = Instance.new("Frame")
   local SettingsHolder = Instance.new("Frame")
   local CloseSettingsBtn = Instance.new("TextButton")
   local CloseSettingsBtnCorner = Instance.new("UICorner")
   local CloseSettingsBtnCircle = Instance.new("Frame")
   local CloseSettingsBtnCircleCorner = Instance.new("UICorner")
   local CloseSettingsBtnIcon = Instance.new("ImageLabel")
   local TextLabel = Instance.new("TextLabel")
   local UserPanel = Instance.new("Frame")
   local UserSettingsPad = Instance.new("Frame")
   local UserSettingsPadCorner = Instance.new("UICorner")
   local UsernameText = Instance.new("TextLabel")
   local UserSettingsPadUserTag = Instance.new("Frame")
   local UserSettingsPadUser = Instance.new("TextLabel")
   local UserSettingsPadUserTagLayout = Instance.new("UIListLayout")
   local UserSettingsPadTag = Instance.new("TextLabel")
   local EditBtn = Instance.new("TextButton")
   local EditBtnCorner = Instance.new("UICorner")
   local UserPanelUserIcon = Instance.new("TextButton")
   local UserPanelUserImage = Instance.new("ImageLabel")
   local UserPanelUserCircle = Instance.new("ImageLabel")
   local BlackFrame = Instance.new("Frame")
   local BlackFrameCorner = Instance.new("UICorner")
   local ChangeAvatarText = Instance.new("TextLabel")
   local SearchIcoFrame = Instance.new("Frame")
   local SearchIcoFrameCorner = Instance.new("UICorner")
   local SearchIco = Instance.new("ImageLabel")
   local UserPanelUserTag = Instance.new("Frame")
   local UserPanelUser = Instance.new("TextLabel")
   local UserPanelUserTagLayout = Instance.new("UIListLayout")
   local UserPanelTag = Instance.new("TextLabel")
   local UserPanelCorner = Instance.new("UICorner")
   local LeftFrame = Instance.new("Frame")
   local MyAccountBtn = Instance.new("TextButton")
   local MyAccountBtnCorner = Instance.new("UICorner")
   local MyAccountBtnTitle = Instance.new("TextLabel")
   local SettingsTitle = Instance.new("TextLabel")
   local DiscordInfo = Instance.new("TextLabel")
   local CurrentSettingOpen = Instance.new("TextLabel")

   SettingsFrame.Name = "SettingsFrame"
   SettingsFrame.Parent = MainFrame
   SettingsFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
   SettingsFrame.BackgroundTransparency = 1.000
   SettingsFrame.Size = UDim2.new(0, 681, 0, 396)
   SettingsFrame.Visible = false

   Settings.Name = "Settings"
   Settings.Parent = SettingsFrame
   Settings.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   Settings.BorderSizePixel = 0
   Settings.Position = UDim2.new(0, 0, 0.0530303046, 0)
   Settings.Size = UDim2.new(0, 681, 0, 375)

   SettingsHolder.Name = "SettingsHolder"
   SettingsHolder.Parent = Settings
   SettingsHolder.AnchorPoint = Vector2.new(0.5, 0.5)
   SettingsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   SettingsHolder.BackgroundTransparency = 1.000
   SettingsHolder.ClipsDescendants = true
   SettingsHolder.Position = UDim2.new(0.49926579, 0, 0.498666674, 0)
   SettingsHolder.Size = UDim2.new(0, 0, 0, 0)

   CloseSettingsBtn.Name = "CloseSettingsBtn"
   CloseSettingsBtn.Parent = SettingsHolder
   CloseSettingsBtn.AnchorPoint = Vector2.new(0.5, 0.5)
   CloseSettingsBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
   CloseSettingsBtn.Position = UDim2.new(0.952967286, 0, 0.0853333324, 0)
   CloseSettingsBtn.Selectable = false
   CloseSettingsBtn.Size = UDim2.new(0, 30, 0, 30)
   CloseSettingsBtn.AutoButtonColor = false
   CloseSettingsBtn.Font = Enum.Font.SourceSans
   CloseSettingsBtn.Text = ""
   CloseSettingsBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
   CloseSettingsBtn.TextSize = 14.000

   CloseSettingsBtnCorner.CornerRadius = UDim.new(1, 0)
   CloseSettingsBtnCorner.Name = "CloseSettingsBtnCorner"
   CloseSettingsBtnCorner.Parent = CloseSettingsBtn

   CloseSettingsBtnCircle.Name = "CloseSettingsBtnCircle"
   CloseSettingsBtnCircle.Parent = CloseSettingsBtn
   CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   CloseSettingsBtnCircle.Position = UDim2.new(0.0879999995, 0, 0.118000001, 0)
   CloseSettingsBtnCircle.Size = UDim2.new(0, 24, 0, 24)

   CloseSettingsBtnCircleCorner.CornerRadius = UDim.new(1, 0)
   CloseSettingsBtnCircleCorner.Name = "CloseSettingsBtnCircleCorner"
   CloseSettingsBtnCircleCorner.Parent = CloseSettingsBtnCircle

   CloseSettingsBtnIcon.Name = "CloseSettingsBtnIcon"
   CloseSettingsBtnIcon.Parent = CloseSettingsBtnCircle
   CloseSettingsBtnIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   CloseSettingsBtnIcon.BackgroundTransparency = 1.000
   CloseSettingsBtnIcon.Position = UDim2.new(0, 2, 0, 2)
   CloseSettingsBtnIcon.Size = UDim2.new(0, 19, 0, 19)
   CloseSettingsBtnIcon.Image = "http://www.roblox.com/asset/?id=6035047409"
   CloseSettingsBtnIcon.ImageColor3 = Color3.fromRGB(222, 222, 222)

   CloseSettingsBtn.MouseButton1Click:Connect(function()
      settingsopened = false
      TopFrameHolder.Visible = true
      ServersHoldFrame.Visible = true
      SettingsHolder:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
      TweenService:Create(
         Settings,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 1}
      ):Play()
      for i,v in next, SettingsHolder:GetChildren() do
         TweenService:Create(
            v,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
      end
      wait(.3)
      SettingsFrame.Visible = false
   end)

   CloseSettingsBtn.MouseEnter:Connect(function()
      CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(72,76,82)
   end)

   CloseSettingsBtn.MouseLeave:Connect(function()
      CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   end)

   UserInputService.InputBegan:Connect(
      function(io, p)
         if io.KeyCode == Enum.KeyCode.RightControl then
            if settingsopened == true then
               settingsopened = false
               TopFrameHolder.Visible = true
               ServersHoldFrame.Visible = true
               SettingsHolder:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               TweenService:Create(
                  Settings,
                  TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundTransparency = 1}
               ):Play()
               for i,v in next, SettingsHolder:GetChildren() do
                  TweenService:Create(
                     v,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundTransparency = 1}
                  ):Play()
               end
               wait(.3)
               SettingsFrame.Visible = false
            end
         end
      end
   )

   TextLabel.Parent = CloseSettingsBtn
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Position = UDim2.new(-0.0666666701, 0, 1.06666672, 0)
   TextLabel.Size = UDim2.new(0, 34, 0, 22)
   TextLabel.Font = Enum.Font.GothamSemibold
   TextLabel.Text = "rightctrl"
   TextLabel.TextColor3 = Color3.fromRGB(113, 117, 123)
   TextLabel.TextSize = 11.000

   UserPanel.Name = "UserPanel"
   UserPanel.Parent = SettingsHolder
   UserPanel.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
   UserPanel.Position = UDim2.new(0.365638763, 0, 0.130666673, 0)
   UserPanel.Size = UDim2.new(0, 362, 0, 164)

   UserSettingsPad.Name = "UserSettingsPad"
   UserSettingsPad.Parent = UserPanel
   UserSettingsPad.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   UserSettingsPad.Position = UDim2.new(0.0331491716, 0, 0.568140388, 0)
   UserSettingsPad.Size = UDim2.new(0, 337, 0, 56)

   UserSettingsPadCorner.Name = "UserSettingsPadCorner"
   UserSettingsPadCorner.Parent = UserSettingsPad

   UsernameText.Name = "UsernameText"
   UsernameText.Parent = UserSettingsPad
   UsernameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UsernameText.BackgroundTransparency = 1.000
   UsernameText.Position = UDim2.new(0.0419999994, 0, 0.154714286, 0)
   UsernameText.Size = UDim2.new(0, 65, 0, 19)
   UsernameText.Font = Enum.Font.GothamBold
   UsernameText.Text = "USERNAME"
   UsernameText.TextColor3 = Color3.fromRGB(126, 130, 136)
   UsernameText.TextSize = 11.000
   UsernameText.TextXAlignment = Enum.TextXAlignment.Left

   UserSettingsPadUserTag.Name = "UserSettingsPadUserTag"
   UserSettingsPadUserTag.Parent = UserSettingsPad
   UserSettingsPadUserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadUserTag.BackgroundTransparency = 1.000
   UserSettingsPadUserTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
   UserSettingsPadUserTag.Size = UDim2.new(0, 65, 0, 19)

   UserSettingsPadUser.Name = "UserSettingsPadUser"
   UserSettingsPadUser.Parent = UserSettingsPadUserTag
   UserSettingsPadUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadUser.BackgroundTransparency = 1.000
   UserSettingsPadUser.Font = Enum.Font.Gotham
   UserSettingsPadUser.TextColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadUser.TextSize = 13.000
   UserSettingsPadUser.TextXAlignment = Enum.TextXAlignment.Left
   UserSettingsPadUser.Text = user
   UserSettingsPadUser.Size = UDim2.new(0, UserSettingsPadUser.TextBounds.X + 2, 0, 19)

   UserSettingsPadUserTagLayout.Name = "UserSettingsPadUserTagLayout"
   UserSettingsPadUserTagLayout.Parent = UserSettingsPadUserTag
   UserSettingsPadUserTagLayout.FillDirection = Enum.FillDirection.Horizontal
   UserSettingsPadUserTagLayout.SortOrder = Enum.SortOrder.LayoutOrder

   UserSettingsPadTag.Name = "UserSettingsPadTag"
   UserSettingsPadTag.Parent = UserSettingsPadUserTag
   UserSettingsPadTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadTag.BackgroundTransparency = 1.000
   UserSettingsPadTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
   UserSettingsPadTag.Size = UDim2.new(0, 65, 0, 19)
   UserSettingsPadTag.Font = Enum.Font.Gotham
   UserSettingsPadTag.Text = "#" .. tag
   UserSettingsPadTag.TextColor3 = Color3.fromRGB(184, 186, 189)
   UserSettingsPadTag.TextSize = 13.000
   UserSettingsPadTag.TextXAlignment = Enum.TextXAlignment.Left

   EditBtn.Name = "EditBtn"
   EditBtn.Parent = UserSettingsPad
   EditBtn.BackgroundColor3 = Color3.fromRGB(116, 127, 141)
   EditBtn.Position = UDim2.new(0.797671914, 0, 0.232142866, 0)
   EditBtn.Size = UDim2.new(0, 55, 0, 30)
   EditBtn.Font = Enum.Font.Gotham
   EditBtn.Text = "Edit"
   EditBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   EditBtn.TextSize = 14.000
   EditBtn.AutoButtonColor = false

   EditBtn.MouseEnter:Connect(function()
      TweenService:Create(
         EditBtn,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundColor3 = Color3.fromRGB(104,114,127)}
      ):Play()
   end)

   EditBtn.MouseLeave:Connect(function()
      TweenService:Create(
         EditBtn,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundColor3 = Color3.fromRGB(116, 127, 141)}
      ):Play()
   end)

   EditBtnCorner.CornerRadius = UDim.new(0, 3)
   EditBtnCorner.Name = "EditBtnCorner"
   EditBtnCorner.Parent = EditBtn

   UserPanelUserIcon.Name = "UserPanelUserIcon"
   UserPanelUserIcon.Parent = UserPanel
   UserPanelUserIcon.BackgroundColor3 = Color3.fromRGB(31, 33, 36)
   UserPanelUserIcon.BorderSizePixel = 0
   UserPanelUserIcon.Position = UDim2.new(0.0340000018, 0, 0.074000001, 0)
   UserPanelUserIcon.Size = UDim2.new(0, 71, 0, 71)
   UserPanelUserIcon.AutoButtonColor = false
   UserPanelUserIcon.Text = ""

   UserPanelUserImage.Name = "UserPanelUserImage"
   UserPanelUserImage.Parent = UserPanelUserIcon
   UserPanelUserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUserImage.BackgroundTransparency = 1.000
   UserPanelUserImage.Size = UDim2.new(0, 71, 0, 71)
   UserPanelUserImage.Image = pfp

   UserPanelUserCircle.Name = "UserPanelUserCircle"
   UserPanelUserCircle.Parent = UserPanelUserImage
   UserPanelUserCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUserCircle.BackgroundTransparency = 1.000
   UserPanelUserCircle.Size = UDim2.new(0, 71, 0, 71)
   UserPanelUserCircle.Image = "rbxassetid://4031889928"
   UserPanelUserCircle.ImageColor3 = Color3.fromRGB(47, 49, 54)

   BlackFrame.Name = "BlackFrame"
   BlackFrame.Parent = UserPanelUserIcon
   BlackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
   BlackFrame.BackgroundTransparency = 0.400
   BlackFrame.BorderSizePixel = 0
   BlackFrame.Size = UDim2.new(0, 71, 0, 71)
   BlackFrame.Visible = false

   BlackFrameCorner.CornerRadius = UDim.new(1, 8)
   BlackFrameCorner.Name = "BlackFrameCorner"
   BlackFrameCorner.Parent = BlackFrame

   ChangeAvatarText.Name = "ChangeAvatarText"
   ChangeAvatarText.Parent = BlackFrame
   ChangeAvatarText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ChangeAvatarText.BackgroundTransparency = 1.000
   ChangeAvatarText.Size = UDim2.new(0, 71, 0, 71)
   ChangeAvatarText.Font = Enum.Font.GothamBold
   ChangeAvatarText.Text = "CHAGNE    AVATAR"
   ChangeAvatarText.TextColor3 = Color3.fromRGB(255, 255, 255)
   ChangeAvatarText.TextSize = 11.000
   ChangeAvatarText.TextWrapped = true

   SearchIcoFrame.Name = "SearchIcoFrame"
   SearchIcoFrame.Parent = UserPanelUserIcon
   SearchIcoFrame.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
   SearchIcoFrame.Position = UDim2.new(0.657999992, 0, 0, 0)
   SearchIcoFrame.Size = UDim2.new(0, 20, 0, 20)

   SearchIcoFrameCorner.CornerRadius = UDim.new(1, 8)
   SearchIcoFrameCorner.Name = "SearchIcoFrameCorner"
   SearchIcoFrameCorner.Parent = SearchIcoFrame

   SearchIco.Name = "SearchIco"
   SearchIco.Parent = SearchIcoFrame
   SearchIco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   SearchIco.BackgroundTransparency = 1.000
   SearchIco.Position = UDim2.new(0.150000006, 0, 0.100000001, 0)
   SearchIco.Size = UDim2.new(0, 15, 0, 15)
   SearchIco.Image = "http://www.roblox.com/asset/?id=6034407084"
   SearchIco.ImageColor3 = Color3.fromRGB(114, 118, 125)

   UserPanelUserIcon.MouseEnter:Connect(function()
      BlackFrame.Visible = true
   end)

   UserPanelUserIcon.MouseLeave:Connect(function()
      BlackFrame.Visible = false
   end)

   UserPanelUserIcon.MouseButton1Click:Connect(function()
      local NotificationHolder = Instance.new("TextButton")
      NotificationHolder.Name = "NotificationHolder"
      NotificationHolder.Parent = SettingsHolder
      NotificationHolder.BackgroundColor3 = Color3.fromRGB(22,22,22)
      NotificationHolder.Position = UDim2.new(-0.00881057233, 0, -0.00266666664, 0)
      NotificationHolder.Size = UDim2.new(0, 687, 0, 375)
      NotificationHolder.AutoButtonColor = false
      NotificationHolder.Font = Enum.Font.SourceSans
      NotificationHolder.Text = ""
      NotificationHolder.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolder.TextSize = 14.000
      NotificationHolder.BackgroundTransparency = 1
      NotificationHolder.Visible = true
      TweenService:Create(
         NotificationHolder,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.2}
      ):Play()



      local AvatarChange = Instance.new("Frame")
      local UserChangeCorner = Instance.new("UICorner")
      local UnderBar = Instance.new("Frame")
      local UnderBarCorner = Instance.new("UICorner")
      local UnderBarFrame = Instance.new("Frame")
      local Text1 = Instance.new("TextLabel")
      local Text2 = Instance.new("TextLabel")
      local TextBoxFrame = Instance.new("Frame")
      local TextBoxFrameCorner = Instance.new("UICorner")
      local TextBoxFrame1 = Instance.new("Frame")
      local TextBoxFrame1Corner = Instance.new("UICorner")
      local AvatarTextbox = Instance.new("TextBox")
      local ChangeBtn = Instance.new("TextButton")
      local ChangeCorner = Instance.new("UICorner")
      local CloseBtn2 = Instance.new("TextButton")
      local Close2Icon = Instance.new("ImageLabel")
      local CloseBtn1 = Instance.new("TextButton")
      local CloseBtn1Corner = Instance.new("UICorner")
      local ResetBtn = Instance.new("TextButton")
      local ResetCorner = Instance.new("UICorner")


      AvatarChange.Name = "AvatarChange"
      AvatarChange.Parent = NotificationHolder
      AvatarChange.AnchorPoint = Vector2.new(0.5, 0.5)
      AvatarChange.BackgroundColor3 = Color3.fromRGB(20,20,20)
      AvatarChange.ClipsDescendants = true
      AvatarChange.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
      AvatarChange.Size = UDim2.new(0, 0, 0, 0)
      AvatarChange.BackgroundTransparency = 1

      AvatarChange:TweenSize(UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
      TweenService:Create(
         AvatarChange,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()


      UserChangeCorner.CornerRadius = UDim.new(0, 5)
      UserChangeCorner.Name = "UserChangeCorner"
      UserChangeCorner.Parent = AvatarChange

      UnderBar.Name = "UnderBar"
      UnderBar.Parent = AvatarChange
      UnderBar.BackgroundColor3 = Color3.fromRGB(25,25,25)
      UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
      UnderBar.Size = UDim2.new(0, 346, 0, 13)

      UnderBarCorner.CornerRadius = UDim.new(0, 5)
      UnderBarCorner.Name = "UnderBarCorner"
      UnderBarCorner.Parent = UnderBar

      UnderBarFrame.Name = "UnderBarFrame"
      UnderBarFrame.Parent = UnderBar
      UnderBarFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      UnderBarFrame.BorderSizePixel = 0
      UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -2.53846145, 0)
      UnderBarFrame.Size = UDim2.new(0, 346, 0, 39)

      Text1.Name = "Text1"
      Text1.Parent = AvatarChange
      Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text1.BackgroundTransparency = 1.000
      Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
      Text1.Size = UDim2.new(0, 346, 0, 68)
      Text1.Font = Enum.Font.GothamSemibold
      Text1.Text = "Change your avatar"
      Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
      Text1.TextSize = 20.000

      Text2.Name = "Text2"
      Text2.Parent = AvatarChange
      Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text2.BackgroundTransparency = 1.000
      Text2.Position = UDim2.new(-0.000594122568, 0, 0.141587839, 0)
      Text2.Size = UDim2.new(0, 346, 0, 63)
      Text2.Font = Enum.Font.Gotham
      Text2.Text = "Enter your new profile in a Roblox decal link."
      Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
      Text2.TextSize = 14.000

      TextBoxFrame.Name = "TextBoxFrame"
      TextBoxFrame.Parent = AvatarChange
      TextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      TextBoxFrame.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
      TextBoxFrame.Size = UDim2.new(0, 319, 0, 38)

      TextBoxFrameCorner.CornerRadius = UDim.new(0, 3)
      TextBoxFrameCorner.Name = "TextBoxFrameCorner"
      TextBoxFrameCorner.Parent = TextBoxFrame

      TextBoxFrame1.Name = "TextBoxFrame1"
      TextBoxFrame1.Parent = TextBoxFrame
      TextBoxFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame1.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
      TextBoxFrame1.ClipsDescendants = true
      TextBoxFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
      TextBoxFrame1.Size = UDim2.new(0, 317, 0, 36)

      TextBoxFrame1Corner.CornerRadius = UDim.new(0, 3)
      TextBoxFrame1Corner.Name = "TextBoxFrame1Corner"
      TextBoxFrame1Corner.Parent = TextBoxFrame1

      AvatarTextbox.Name = "AvatarTextbox"
      AvatarTextbox.Parent = TextBoxFrame1
      AvatarTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      AvatarTextbox.BackgroundTransparency = 1.000
      AvatarTextbox.Position = UDim2.new(0.0378548913, 0, 0, 0)
      AvatarTextbox.Size = UDim2.new(0, 293, 0, 37)
      AvatarTextbox.Font = Enum.Font.Gotham
      AvatarTextbox.Text = ""
      AvatarTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
      AvatarTextbox.TextSize = 14.000
      AvatarTextbox.TextXAlignment = Enum.TextXAlignment.Left

      ChangeBtn.Name = "ChangeBtn"
      ChangeBtn.Parent = AvatarChange
      ChangeBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      ChangeBtn.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
      ChangeBtn.Size = UDim2.new(0, 76, 0, 27)
      ChangeBtn.Font = Enum.Font.Gotham
      ChangeBtn.Text = "Change"
      ChangeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      ChangeBtn.TextSize = 13.000
      ChangeBtn.AutoButtonColor = false

      ChangeBtn.MouseEnter:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(103,123,196)}
         ):Play()
      end)

      ChangeBtn.MouseLeave:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      ChangeBtn.MouseButton1Click:Connect(function()
         pfp = tostring(AvatarTextbox.Text)
         UserImage.Image = pfp
         UserPanelUserImage.Image = pfp
         SaveInfo()

         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)



      ChangeCorner.CornerRadius = UDim.new(0, 4)
      ChangeCorner.Name = "ChangeCorner"
      ChangeCorner.Parent = ChangeBtn

      CloseBtn2.Name = "CloseBtn2"
      CloseBtn2.Parent = AvatarChange
      CloseBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.BackgroundTransparency = 1.000
      CloseBtn2.Position = UDim2.new(0.898000002, 0, 0, 0)
      CloseBtn2.Size = UDim2.new(0, 26, 0, 26)
      CloseBtn2.Font = Enum.Font.Gotham
      CloseBtn2.Text = ""
      CloseBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.TextSize = 14.000

      Close2Icon.Name = "Close2Icon"
      Close2Icon.Parent = CloseBtn2
      Close2Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Close2Icon.BackgroundTransparency = 1.000
      Close2Icon.Position = UDim2.new(-0.0384615399, 0, 0.312910825, 0)
      Close2Icon.Size = UDim2.new(0, 25, 0, 25)
      Close2Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
      Close2Icon.ImageColor3 = Color3.fromRGB(119, 122, 127)

      CloseBtn1.Name = "CloseBtn1"
      CloseBtn1.Parent = AvatarChange
      CloseBtn1.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      CloseBtn1.BackgroundTransparency = 1.000
      CloseBtn1.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
      CloseBtn1.Size = UDim2.new(0, 76, 0, 27)
      CloseBtn1.Font = Enum.Font.Gotham
      CloseBtn1.Text = "Close"
      CloseBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn1.TextSize = 13.000

      CloseBtn1Corner.CornerRadius = UDim.new(0, 4)
      CloseBtn1Corner.Name = "CloseBtn1Corner"
      CloseBtn1Corner.Parent = CloseBtn1

      ResetBtn.Name = "ResetBtn"
      ResetBtn.Parent = AvatarChange
      ResetBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      ResetBtn.BackgroundTransparency = 1.000
      ResetBtn.Position = UDim2.new(0.260895967, 0, 0.823000014, 0)
      ResetBtn.Size = UDim2.new(0, 76, 0, 27)
      ResetBtn.Font = Enum.Font.Gotham
      ResetBtn.Text = "Reset"
      ResetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      ResetBtn.TextSize = 13.000

      ResetBtn.MouseButton1Click:Connect(function()
         pfp = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
         UserImage.Image = pfp
         UserPanelUserImage.Image = pfp
         SaveInfo()

         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      ResetCorner.CornerRadius = UDim.new(0, 4)
      ResetCorner.Name = "ResetCorner"
      ResetCorner.Parent = ResetBtn

      CloseBtn1.MouseButton1Click:Connect(function()
         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseButton1Click:Connect(function()
         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseEnter:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(210,210,210)}
         ):Play()
      end)

      CloseBtn2.MouseLeave:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(119, 122, 127)}
         ):Play()
      end)


      AvatarTextbox.Focused:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      AvatarTextbox.FocusLost:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
         ):Play()
      end)


   end)

   UserPanelUserTag.Name = "UserPanelUserTag"
   UserPanelUserTag.Parent = UserPanel
   UserPanelUserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUserTag.BackgroundTransparency = 1.000
   UserPanelUserTag.Position = UDim2.new(0.271143615, 0, 0.231804818, 0)
   UserPanelUserTag.Size = UDim2.new(0, 113, 0, 19)

   UserPanelUser.Name = "UserPanelUser"
   UserPanelUser.Parent = UserPanelUserTag
   UserPanelUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUser.BackgroundTransparency = 1.000
   UserPanelUser.Font = Enum.Font.GothamSemibold
   UserPanelUser.TextColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUser.TextSize = 17.000
   UserPanelUser.TextXAlignment = Enum.TextXAlignment.Left
   UserPanelUser.Text = user
   UserPanelUser.Size = UDim2.new(0, UserPanelUser.TextBounds.X + 2, 0, 19)


   UserPanelUserTagLayout.Name = "UserPanelUserTagLayout"
   UserPanelUserTagLayout.Parent = UserPanelUserTag
   UserPanelUserTagLayout.FillDirection = Enum.FillDirection.Horizontal
   UserPanelUserTagLayout.SortOrder = Enum.SortOrder.LayoutOrder

   UserPanelTag.Name = "UserPanelTag"
   UserPanelTag.Parent = UserPanelUserTag
   UserPanelTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelTag.BackgroundTransparency = 1.000
   UserPanelTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
   UserPanelTag.Size = UDim2.new(0, 65, 0, 19)
   UserPanelTag.Font = Enum.Font.Gotham
   UserPanelTag.Text = "#" .. tag
   UserPanelTag.TextColor3 = Color3.fromRGB(184, 186, 189)
   UserPanelTag.TextSize = 17.000
   UserPanelTag.TextXAlignment = Enum.TextXAlignment.Left

   UserPanelCorner.Name = "UserPanelCorner"
   UserPanelCorner.Parent = UserPanel

   LeftFrame.Name = "LeftFrame"
   LeftFrame.Parent = SettingsHolder
   LeftFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
   LeftFrame.BorderSizePixel = 0
   LeftFrame.Position = UDim2.new(0, 0, -0.000303059904, 0)
   LeftFrame.Size = UDim2.new(0, 233, 0, 375)

   MyAccountBtn.Name = "MyAccountBtn"
   MyAccountBtn.Parent = LeftFrame
   MyAccountBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
   MyAccountBtn.BorderSizePixel = 0
   MyAccountBtn.Position = UDim2.new(0.271232396, 0, 0.101614028, 0)
   MyAccountBtn.Size = UDim2.new(0, 160, 0, 30)
   MyAccountBtn.AutoButtonColor = false
   MyAccountBtn.Font = Enum.Font.SourceSans
   MyAccountBtn.Text = ""
   MyAccountBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
   MyAccountBtn.TextSize = 14.000

   MyAccountBtnCorner.CornerRadius = UDim.new(0, 6)
   MyAccountBtnCorner.Name = "MyAccountBtnCorner"
   MyAccountBtnCorner.Parent = MyAccountBtn

   MyAccountBtnTitle.Name = "MyAccountBtnTitle"
   MyAccountBtnTitle.Parent = MyAccountBtn
   MyAccountBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   MyAccountBtnTitle.BackgroundTransparency = 1.000
   MyAccountBtnTitle.BorderSizePixel = 0
   MyAccountBtnTitle.Position = UDim2.new(0.0759999976, 0, -0.166999996, 0)
   MyAccountBtnTitle.Size = UDim2.new(0, 95, 0, 39)
   MyAccountBtnTitle.Font = Enum.Font.GothamSemibold
   MyAccountBtnTitle.Text = "My Account"
   MyAccountBtnTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
   MyAccountBtnTitle.TextSize = 14.000
   MyAccountBtnTitle.TextXAlignment = Enum.TextXAlignment.Left

   SettingsTitle.Name = "SettingsTitle"
   SettingsTitle.Parent = LeftFrame
   SettingsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   SettingsTitle.BackgroundTransparency = 1.000
   SettingsTitle.Position = UDim2.new(0.308999985, 0, 0.0450000018, 0)
   SettingsTitle.Size = UDim2.new(0, 65, 0, 19)
   SettingsTitle.Font = Enum.Font.GothamBlack
   SettingsTitle.Text = "SETTINGS"
   SettingsTitle.TextColor3 = Color3.fromRGB(142, 146, 152)
   SettingsTitle.TextSize = 11.000
   SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left

   DiscordInfo.Name = "DiscordInfo"
   DiscordInfo.Parent = LeftFrame
   DiscordInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   DiscordInfo.BackgroundTransparency = 1.000
   DiscordInfo.Position = UDim2.new(0.304721028, 0, 0.821333349, 0)
   DiscordInfo.Size = UDim2.new(0, 133, 0, 44)
   DiscordInfo.Font = Enum.Font.Gotham
   DiscordInfo.Text = "Stable 1.0.0 (00001)  Host 0.0.0.1                Roblox Lua Engine    "
   DiscordInfo.TextColor3 = Color3.fromRGB(101, 108, 116)
   DiscordInfo.TextSize = 13.000
   DiscordInfo.TextWrapped = true
   DiscordInfo.TextXAlignment = Enum.TextXAlignment.Left
   DiscordInfo.TextYAlignment = Enum.TextYAlignment.Top

   CurrentSettingOpen.Name = "CurrentSettingOpen"
   CurrentSettingOpen.Parent = LeftFrame
   CurrentSettingOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   CurrentSettingOpen.BackgroundTransparency = 1.000
   CurrentSettingOpen.Position = UDim2.new(1.07294846, 0, 0.0450000018, 0)
   CurrentSettingOpen.Size = UDim2.new(0, 65, 0, 19)
   CurrentSettingOpen.Font = Enum.Font.GothamBlack
   CurrentSettingOpen.Text = "MY ACCOUNT"
   CurrentSettingOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
   CurrentSettingOpen.TextSize = 14.000
   CurrentSettingOpen.TextXAlignment = Enum.TextXAlignment.Left


   SettingsOpenBtn.MouseButton1Click:Connect(function ()
      settingsopened = true
      TopFrameHolder.Visible = false
      ServersHoldFrame.Visible = false
      SettingsFrame.Visible = true
      SettingsHolder:TweenSize(UDim2.new(0, 681, 0, 375), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
      Settings.BackgroundTransparency = 1
      TweenService:Create(
         Settings,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()
      for i,v in next, SettingsHolder:GetChildren() do
         v.BackgroundTransparency = 1
         TweenService:Create(
            v,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 0}
         ):Play()
      end
   end)

   EditBtn.MouseButton1Click:Connect(function()
      local NotificationHolder = Instance.new("TextButton")
      NotificationHolder.Name = "NotificationHolder"
      NotificationHolder.Parent = SettingsHolder
      NotificationHolder.BackgroundColor3 = Color3.fromRGB(22,22,22)
      NotificationHolder.Position = UDim2.new(-0.00881057233, 0, -0.00266666664, 0)
      NotificationHolder.Size = UDim2.new(0, 687, 0, 375)
      NotificationHolder.AutoButtonColor = false
      NotificationHolder.Font = Enum.Font.SourceSans
      NotificationHolder.Text = ""
      NotificationHolder.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolder.TextSize = 14.000
      NotificationHolder.BackgroundTransparency = 1
      NotificationHolder.Visible = true
      TweenService:Create(
         NotificationHolder,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.2}
      ):Play()

      local UserChange = Instance.new("Frame")
      local UserChangeCorner = Instance.new("UICorner")
      local UnderBar = Instance.new("Frame")
      local UnderBarCorner = Instance.new("UICorner")
      local UnderBarFrame = Instance.new("Frame")
      local Text1 = Instance.new("TextLabel")
      local Text2 = Instance.new("TextLabel")
      local TextBoxFrame = Instance.new("Frame")
      local TextBoxFrameCorner = Instance.new("UICorner")
      local TextBoxFrame1 = Instance.new("Frame")
      local TextBoxFrame1Corner = Instance.new("UICorner")
      local UsernameTextbox = Instance.new("TextBox")
      local Seperator = Instance.new("Frame")
      local HashtagLabel = Instance.new("TextLabel")
      local TagTextbox = Instance.new("TextBox")
      local ChangeBtn = Instance.new("TextButton")
      local ChangeCorner = Instance.new("UICorner")
      local CloseBtn2 = Instance.new("TextButton")
      local Close2Icon = Instance.new("ImageLabel")
      local CloseBtn1 = Instance.new("TextButton")
      local CloseBtn1Corner = Instance.new("UICorner")

      UserChange.Name = "UserChange"
      UserChange.Parent = NotificationHolder
      UserChange.AnchorPoint = Vector2.new(0.5, 0.5)
      UserChange.BackgroundColor3 = Color3.fromRGB(25,25,25)
      UserChange.ClipsDescendants = true
      UserChange.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
      UserChange.Size = UDim2.new(0, 0, 0, 0)
      UserChange.BackgroundTransparency = 1

      UserChange:TweenSize(UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
      TweenService:Create(
         UserChange,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()

      UserChangeCorner.CornerRadius = UDim.new(0, 5)
      UserChangeCorner.Name = "UserChangeCorner"
      UserChangeCorner.Parent = UserChange

      UnderBar.Name = "UnderBar"
      UnderBar.Parent = UserChange
      UnderBar.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
      UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
      UnderBar.Size = UDim2.new(0, 346, 0, 13)

      UnderBarCorner.CornerRadius = UDim.new(0, 5)
      UnderBarCorner.Name = "UnderBarCorner"
      UnderBarCorner.Parent = UnderBar

      UnderBarFrame.Name = "UnderBarFrame"
      UnderBarFrame.Parent = UnderBar
      UnderBarFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
      UnderBarFrame.BorderSizePixel = 0
      UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -2.53846145, 0)
      UnderBarFrame.Size = UDim2.new(0, 346, 0, 39)

      Text1.Name = "Text1"
      Text1.Parent = UserChange
      Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text1.BackgroundTransparency = 1.000
      Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
      Text1.Size = UDim2.new(0, 346, 0, 68)
      Text1.Font = Enum.Font.GothamSemibold
      Text1.Text = "Change your username"
      Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
      Text1.TextSize = 20.000

      Text2.Name = "Text2"
      Text2.Parent = UserChange
      Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text2.BackgroundTransparency = 1.000
      Text2.Position = UDim2.new(-0.000594122568, 0, 0.141587839, 0)
      Text2.Size = UDim2.new(0, 346, 0, 63)
      Text2.Font = Enum.Font.Gotham
      Text2.Text = "Enter your new username."
      Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
      Text2.TextSize = 14.000

      TextBoxFrame.Name = "TextBoxFrame"
      TextBoxFrame.Parent = UserChange
      TextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
      TextBoxFrame.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
      TextBoxFrame.Size = UDim2.new(0, 319, 0, 38)

      TextBoxFrameCorner.CornerRadius = UDim.new(0, 3)
      TextBoxFrameCorner.Name = "TextBoxFrameCorner"
      TextBoxFrameCorner.Parent = TextBoxFrame

      TextBoxFrame1.Name = "TextBoxFrame1"
      TextBoxFrame1.Parent = TextBoxFrame
      TextBoxFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame1.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
      TextBoxFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
      TextBoxFrame1.Size = UDim2.new(0, 317, 0, 36)

      TextBoxFrame1Corner.CornerRadius = UDim.new(0, 3)
      TextBoxFrame1Corner.Name = "TextBoxFrame1Corner"
      TextBoxFrame1Corner.Parent = TextBoxFrame1

      UsernameTextbox.Name = "UsernameTextbox"
      UsernameTextbox.Parent = TextBoxFrame1
      UsernameTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      UsernameTextbox.BackgroundTransparency = 1.000
      UsernameTextbox.Position = UDim2.new(0.0378548913, 0, 0, 0)
      UsernameTextbox.Size = UDim2.new(0, 221, 0, 37)
      UsernameTextbox.Font = Enum.Font.Gotham
      UsernameTextbox.Text = user
      UsernameTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
      UsernameTextbox.TextSize = 14.000
      UsernameTextbox.TextXAlignment = Enum.TextXAlignment.Left

      Seperator.Name = "Seperator"
      Seperator.Parent = TextBoxFrame1
      Seperator.AnchorPoint = Vector2.new(0.5, 0.5)
      Seperator.BackgroundColor3 = Color3.fromRGB(25,25,25)
      Seperator.BorderSizePixel = 0
      Seperator.Position = UDim2.new(0.753000021, 0, 0.500999987, 0)
      Seperator.Size = UDim2.new(0, 1, 0, 25)

      HashtagLabel.Name = "HashtagLabel"
      HashtagLabel.Parent = TextBoxFrame1
      HashtagLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      HashtagLabel.BackgroundTransparency = 1.000
      HashtagLabel.Position = UDim2.new(0.765877604, 0, -0.0546001866, 0)
      HashtagLabel.Size = UDim2.new(0, 23, 0, 37)
      HashtagLabel.Font = Enum.Font.Gotham
      HashtagLabel.Text = "#"
      HashtagLabel.TextColor3 = Color3.fromRGB(79, 82, 88)
      HashtagLabel.TextSize = 16.000

      TagTextbox.Name = "TagTextbox"
      TagTextbox.Parent = TextBoxFrame1
      TagTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      TagTextbox.BackgroundTransparency = 1.000
      TagTextbox.Position = UDim2.new(0.824999988, 0, -0.0280000009, 0)
      TagTextbox.Size = UDim2.new(0, 59, 0, 38)
      TagTextbox.Font = Enum.Font.Gotham
      TagTextbox.PlaceholderColor3 = Color3.fromRGB(210, 211, 212)
      TagTextbox.Text = tag
      TagTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
      TagTextbox.TextSize = 14.000
      TagTextbox.TextXAlignment = Enum.TextXAlignment.Left

      ChangeBtn.Name = "ChangeBtn"
      ChangeBtn.Parent = UserChange
      ChangeBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      ChangeBtn.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
      ChangeBtn.Size = UDim2.new(0, 76, 0, 27)
      ChangeBtn.Font = Enum.Font.Gotham
      ChangeBtn.Text = "Change"
      ChangeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      ChangeBtn.TextSize = 13.000
      ChangeBtn.AutoButtonColor = false

      ChangeBtn.MouseEnter:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(103,123,196)}
         ):Play()
      end)

      ChangeBtn.MouseLeave:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      ChangeBtn.MouseButton1Click:Connect(function()
         user = UsernameTextbox.Text
         tag = TagTextbox.Text
         UserSettingsPadUser.Text = user
         UserSettingsPadUser.Size = UDim2.new(0, UserSettingsPadUser.TextBounds.X + 2, 0, 19)
         UserSettingsPadTag.Text = "#" .. tag
         UserPanelTag.Text = "#" .. tag
         UserPanelUser.Text = user
         UserPanelUser.Size = UDim2.new(0, UserPanelUser.TextBounds.X + 2, 0, 19)
         UserName.Text = user
         UserTag.Text = "#" .. tag
         SaveInfo()

         UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            UserChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      ChangeCorner.CornerRadius = UDim.new(0, 4)
      ChangeCorner.Name = "ChangeCorner"
      ChangeCorner.Parent = ChangeBtn

      CloseBtn2.Name = "CloseBtn2"
      CloseBtn2.Parent = UserChange
      CloseBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.BackgroundTransparency = 1.000
      CloseBtn2.Position = UDim2.new(0.898000002, 0, 0, 0)
      CloseBtn2.Size = UDim2.new(0, 26, 0, 26)
      CloseBtn2.Font = Enum.Font.Gotham
      CloseBtn2.Text = ""
      CloseBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.TextSize = 14.000

      Close2Icon.Name = "Close2Icon"
      Close2Icon.Parent = CloseBtn2
      Close2Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Close2Icon.BackgroundTransparency = 1.000
      Close2Icon.Position = UDim2.new(-0.0384615399, 0, 0.312910825, 0)
      Close2Icon.Size = UDim2.new(0, 25, 0, 25)
      Close2Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
      Close2Icon.ImageColor3 = Color3.fromRGB(119, 122, 127)

      CloseBtn1.Name = "CloseBtn1"
      CloseBtn1.Parent = UserChange
      CloseBtn1.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      CloseBtn1.BackgroundTransparency = 1.000
      CloseBtn1.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
      CloseBtn1.Size = UDim2.new(0, 76, 0, 27)
      CloseBtn1.Font = Enum.Font.Gotham
      CloseBtn1.Text = "Close"
      CloseBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn1.TextSize = 13.000

      CloseBtn1Corner.CornerRadius = UDim.new(0, 4)
      CloseBtn1Corner.Name = "CloseBtn1Corner"
      CloseBtn1Corner.Parent = CloseBtn1

      CloseBtn1.MouseButton1Click:Connect(function()
         UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            UserChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseButton1Click:Connect(function()
         UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            UserChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseEnter:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(210,210,210)}
         ):Play()
      end)

      CloseBtn2.MouseLeave:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(119, 122, 127)}
         ):Play()
      end)

      TagTextbox.Changed:Connect(function()
         TagTextbox.Text = TagTextbox.Text:sub(1,4)
      end)

      TagTextbox:GetPropertyChangedSignal("Text"):Connect(function()
         TagTextbox.Text = TagTextbox.Text:gsub('%D+', '');
      end)

      UsernameTextbox.Changed:Connect(function()
         UsernameTextbox.Text = UsernameTextbox.Text:sub(1,13)
      end)

      TagTextbox.Focused:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      TagTextbox.FocusLost:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
         ):Play()
      end)

      UsernameTextbox.Focused:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      UsernameTextbox.FocusLost:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
         ):Play()
      end)

   end)

   function RadientPaid:Notification(titletext, desctext, btntext)
      local NotificationHolderMain = Instance.new("TextButton")
      local Notification = Instance.new("Frame")
      local NotificationCorner = Instance.new("UICorner")
      local UnderBar = Instance.new("Frame")
      local UnderBarCorner = Instance.new("UICorner")
      local UnderBarFrame = Instance.new("Frame")
      local Text1 = Instance.new("TextLabel")
      local Text2 = Instance.new("TextLabel")
      local AlrightBtn = Instance.new("TextButton")
      local AlrightCorner = Instance.new("UICorner")

      NotificationHolderMain.Name = "NotificationHolderMain"
      NotificationHolderMain.Parent = MainFrame
      NotificationHolderMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolderMain.BackgroundTransparency = 1
      NotificationHolderMain.BorderSizePixel = 0
      NotificationHolderMain.Position = UDim2.new(0, 0, 0.0560000017, 0)
      NotificationHolderMain.Size = UDim2.new(0, 681, 0, 374)
      NotificationHolderMain.AutoButtonColor = false
      NotificationHolderMain.Font = Enum.Font.SourceSans
      NotificationHolderMain.Text = ""
      NotificationHolderMain.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolderMain.TextSize = 14.000
      TweenService:Create(
         NotificationHolderMain,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.2}
      ):Play()


      Notification.Name = "Notification"
      Notification.Parent = NotificationHolderMain
      Notification.AnchorPoint = Vector2.new(0.5, 0.5)
      Notification.BackgroundColor3 = Color3.fromRGB(15,15,15)
      Notification.ClipsDescendants = true
      Notification.Position = UDim2.new(0.524819076, 0, 0.469270051, 0)
      Notification.Size = UDim2.new(0, 0, 0, 0)
      Notification.BackgroundTransparency = 1

      Notification:TweenSize(UDim2.new(0, 346, 0, 176), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)

      TweenService:Create(
         Notification,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()

      NotificationCorner.CornerRadius = UDim.new(0, 5)
      NotificationCorner.Name = "NotificationCorner"
      NotificationCorner.Parent = Notification

      UnderBar.Name = "UnderBar"
      UnderBar.Parent = Notification
      UnderBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
      UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
      UnderBar.Size = UDim2.new(0, 346, 0, 10)

      UnderBarCorner.CornerRadius = UDim.new(0, 5)
      UnderBarCorner.Name = "UnderBarCorner"
      UnderBarCorner.Parent = UnderBar

      UnderBarFrame.Name = "UnderBarFrame"
      UnderBarFrame.Parent = UnderBar
      UnderBarFrame.BackgroundColor3 = Color3.fromRGB(14,14,14)
      UnderBarFrame.BorderSizePixel = 0
      UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -3.76068449, 0)
      UnderBarFrame.Size = UDim2.new(0, 346, 0, 40)

      Text1.Name = "Text1"
      Text1.Parent = Notification
      Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text1.BackgroundTransparency = 1.000
      Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
      Text1.Size = UDim2.new(0, 346, 0, 68)
      Text1.Font = Enum.Font.GothamSemibold
      Text1.Text = titletext
      Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
      Text1.TextSize = 20.000

      Text2.Name = "Text2"
      Text2.Parent = Notification
      Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text2.BackgroundTransparency = 1.000
      Text2.Position = UDim2.new(0.106342293, 0, 0.317724228, 0)
      Text2.Size = UDim2.new(0, 272, 0, 63)
      Text2.Font = Enum.Font.Gotham
      Text2.Text = desctext
      Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
      Text2.TextSize = 14.000
      Text2.TextWrapped = true

      AlrightBtn.Name = "AlrightBtn"
      AlrightBtn.Parent = Notification
      AlrightBtn.BackgroundColor3 = Color3.fromRGB(206, 61, 73)
      AlrightBtn.Position = UDim2.new(0.0332369953, 0, 0.789141417, 0)
      AlrightBtn.Size = UDim2.new(0, 322, 0, 27)
      AlrightBtn.Font = Enum.Font.Gotham
      AlrightBtn.Text = btntext
      AlrightBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      AlrightBtn.TextSize = 13.000
      AlrightBtn.AutoButtonColor = false

      AlrightCorner.CornerRadius = UDim.new(0, 4)
      AlrightCorner.Name = "AlrightCorner"
      AlrightCorner.Parent = AlrightBtn

      AlrightBtn.MouseButton1Click:Connect(function()
         TweenService:Create(
            NotificationHolderMain,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         Notification:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            Notification,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait()
         NotificationHolderMain:Destroy()
      end)

      AlrightBtn.MouseEnter:Connect(function()
         TweenService:Create(
            AlrightBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(233, 25, 42)}
         ):Play()
      end)

      AlrightBtn.MouseLeave:Connect(function()
         TweenService:Create(
            AlrightBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(206, 61, 73)}
         ):Play()
      end)
   end

   MakeDraggable(TopFramess, MainFrame)
   ServersHoldPadding.PaddingLeft = UDim.new(0, 14)
   local ServerHold = {}
   function ServerHold:Server(text,textgame, img)
      local fc = false
      local currentchanneltoggled = ""
      local Server = Instance.new("TextButton")
      local ServerBtnCorner = Instance.new("UICorner")
      local ServerIco = Instance.new("ImageLabel")
      local ServerWhiteFrame = Instance.new("Frame")
      local ServerWhiteFrameCorner = Instance.new("UICorner")

      Server.Name = text .. "Server"
      Server.Parent = ServersHold
      Server.BackgroundColor3 = Color3.fromRGB(20,20,20)
      Server.Position = UDim2.new(0.125, 0, 0, 0)
      Server.Size = UDim2.new(0, 47, 0, 47)
      Server.AutoButtonColor = false
      Server.Font = Enum.Font.Gotham
      Server.Text = ""
      Server.BackgroundTransparency = 1
      Server.TextTransparency = 1
      Server.TextColor3 = Color3.fromRGB(233, 25, 42)
      Server.TextSize = 18.000

      ServerBtnCorner.CornerRadius = UDim.new(1, 0)
      ServerBtnCorner.Name = "ServerCorner"
      ServerBtnCorner.Parent = Server

      ServerWhiteFrame.Name = "ServerWhiteFrame"
      ServerWhiteFrame.Parent = Server
      ServerWhiteFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      ServerWhiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerWhiteFrame.BackgroundTransparency = 1
      ServerWhiteFrame.Position = UDim2.new(-0.347378343, 0, 0.502659559, 0)
      ServerWhiteFrame.Size = UDim2.new(0, 11, 0, 10)

      ServerWhiteFrameCorner.CornerRadius = UDim.new(1, 0)
      ServerWhiteFrameCorner.Name = "ServerWhiteFrameCorner"
      ServerWhiteFrameCorner.Parent = ServerWhiteFrame
      ServersHold.CanvasSize = UDim2.new(0, 0, 0, ServersHoldLayout.AbsoluteContentSize.Y)

      local ServerFrame = Instance.new("Frame")
      local ServerFrame1 = Instance.new("Frame")
      local ServerFrame2 = Instance.new("Frame")
      local ServerTitleFrame = Instance.new("Frame")
      local ServerTitle = Instance.new("TextLabel")
      local ServerTitle2 = Instance.new("TextLabel")
      local GlowFrame = Instance.new("Frame")
      local Glow = Instance.new("ImageLabel")
      local ServerContentFrame = Instance.new("Frame")
      local ServerCorner = Instance.new("UICorner")
      local ChannelCorner = Instance.new("UICorner")
      local ChannelTitleFrame = Instance.new("Frame")
      local Hashtag = Instance.new("TextLabel")
      local ChannelTitle = Instance.new("TextLabel")
      local ChannelContentFrame = Instance.new("Frame")
      local GlowChannel = Instance.new("ImageLabel")
      local ServerChannelHolder = Instance.new("ScrollingFrame")
      local ServerChannelHolderLayout = Instance.new("UIListLayout")
      local ServerChannelHolderPadding = Instance.new("UIPadding")


      ServerFrame.Name = "ServerFrame"
      ServerFrame.Parent = ServersHolder
      ServerFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerFrame.BorderSizePixel = 0
      ServerFrame.ClipsDescendants = true
      ServerFrame.Position = UDim2.new(0.105726875, 0, 1.01262593, 0)
      ServerFrame.Size = UDim2.new(0, 609, 0, 373)
      ServerFrame.Visible = false

      ServerFrame1.Name = "ServerFrame1"
      ServerFrame1.Parent = ServerFrame
      ServerFrame1.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerFrame1.BorderSizePixel = 0
      ServerFrame1.Position = UDim2.new(0, 0, 0.972290039, 0)
      ServerFrame1.Size = UDim2.new(0, 12, 0, 10)

      ServerFrame2.Name = "ServerFrame2"
      ServerFrame2.Parent = ServerFrame
      ServerFrame2.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerFrame2.BorderSizePixel = 0
      ServerFrame2.Position = UDim2.new(0.980295539, 0, 0.972290039, 0)
      ServerFrame2.Size = UDim2.new(0, 12, 0, 9)

      ServerTitleFrame.Name = "ServerTitleFrame"
      ServerTitleFrame.Parent = ServerFrame
      ServerTitleFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerTitleFrame.BackgroundTransparency = 1.000
      ServerTitleFrame.BorderSizePixel = 0
      ServerTitleFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
      ServerTitleFrame.Size = UDim2.new(0, 180, 0, 40)

      ServerTitle.Name = "ServerTitle"
      ServerTitle.Parent = ServerTitleFrame
      ServerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerTitle.BackgroundTransparency = 1.000
      ServerTitle.BorderSizePixel = 0
      ServerTitle.Position = UDim2.new(0.0751359761, 0, 0, 0)
      ServerTitle.Size = UDim2.new(0, 97, 0, 39)
      ServerTitle.Font = Enum.Font.GothamSemibold
      ServerTitle.Text = text
      ServerTitle.TextColor3 = Color3.fromRGB(233, 25, 42)
      ServerTitle.TextSize = 15.000
      ServerTitle.TextXAlignment = Enum.TextXAlignment.Left

      ServerTitle2.Name = "ServerTitle"
      ServerTitle2.Parent = ServerTitleFrame
      ServerTitle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerTitle2.BackgroundTransparency = 1
      ServerTitle2.BorderSizePixel = 0
      ServerTitle2.Position = UDim2.new(0.0541359761, 0, 7.5, 0)
      ServerTitle2.Size = UDim2.new(0, 97, 0, 39)
      ServerTitle2.ZIndex = 999
      ServerTitle2.Font = Enum.Font.GothamSemibold
      ServerTitle2.Text = textgame
      ServerTitle2.TextColor3 = Color3.fromRGB(255, 255, 255)
      ServerTitle2.TextTransparency = 0.8
      ServerTitle2.TextSize = 13.000
      ServerTitle2.TextXAlignment = Enum.TextXAlignment.Left

      GlowFrame.Name = "GlowFrame"
      GlowFrame.Parent = ServerFrame
      GlowFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      GlowFrame.BackgroundTransparency = 1.000
      GlowFrame.BorderSizePixel = 0
      GlowFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
      GlowFrame.Size = UDim2.new(0, 609, 0, 40)

      Glow.Name = "Glow"
      Glow.Parent = GlowFrame
      Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Glow.BackgroundTransparency = 1.000
      Glow.BorderSizePixel = 0
      Glow.Position = UDim2.new(0, -15, 0, -15)
      Glow.Size = UDim2.new(1, 30, 1, 30)
      Glow.ZIndex = 0
      Glow.Image = "rbxassetid://4996891970"
      Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
      Glow.ScaleType = Enum.ScaleType.Slice
      Glow.SliceCenter = Rect.new(20, 20, 280, 280)

      ServerContentFrame.Name = "ServerContentFrame"
      ServerContentFrame.Parent = ServerFrame
      ServerContentFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerContentFrame.BackgroundTransparency = 1.000
      ServerContentFrame.BorderSizePixel = 0
      ServerContentFrame.Position = UDim2.new(-0.0010054264, 0, 0.106338218, 0)
      ServerContentFrame.Size = UDim2.new(0, 180, 0, 333)

      ServerCorner.CornerRadius = UDim.new(0, 4)
      ServerCorner.Name = "ServerCorner"
      ServerCorner.Parent = ServerFrame

      ChannelTitleFrame.Name = "ChannelTitleFrame"
      ChannelTitleFrame.Parent = ServerFrame
      ChannelTitleFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      ChannelTitleFrame.BorderSizePixel = 0
      ChannelTitleFrame.Position = UDim2.new(0.294561088, 0, -0.000900391256, 0)
      ChannelTitleFrame.Size = UDim2.new(0, 429, 0, 40)

      Hashtag.Name = "Hashtag"
      Hashtag.Parent = ChannelTitleFrame
      Hashtag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Hashtag.BackgroundTransparency = 1.000
      Hashtag.BorderSizePixel = 0
      Hashtag.Position = UDim2.new(0.0279720277, 0, 0, 0)
      Hashtag.Size = UDim2.new(0, 19, 0, 39)
      Hashtag.Font = Enum.Font.Gotham
      Hashtag.Text = "#"
      Hashtag.TextColor3 = Color3.fromRGB(114, 118, 125)
      Hashtag.TextSize = 25.000

      ChannelTitle.Name = "ChannelTitle"
      ChannelTitle.Parent = ChannelTitleFrame
      ChannelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ChannelTitle.BackgroundTransparency = 1.000
      ChannelTitle.BorderSizePixel = 0
      ChannelTitle.Position = UDim2.new(0.0862470865, 0, 0, 0)
      ChannelTitle.Size = UDim2.new(0, 95, 0, 39)
      ChannelTitle.Font = Enum.Font.GothamSemibold
      ChannelTitle.Text = ""
      ChannelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
      ChannelTitle.TextSize = 15.000
      ChannelTitle.TextXAlignment = Enum.TextXAlignment.Left

      ChannelContentFrame.Name = "ChannelContentFrame"
      ChannelContentFrame.Parent = ServerFrame
      ChannelContentFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      ChannelContentFrame.BorderSizePixel = 0
      ChannelContentFrame.ClipsDescendants = true
      ChannelContentFrame.Position = UDim2.new(0.294561088, 0, 0.106338218, 0)
      ChannelContentFrame.Size = UDim2.new(0, 429, 0, 333)

      GlowChannel.Name = "GlowChannel"
      GlowChannel.Parent = ChannelContentFrame
      GlowChannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      GlowChannel.BackgroundTransparency = 1.000
      GlowChannel.BorderSizePixel = 0
      GlowChannel.Position = UDim2.new(0, -33, 0, -91)
      GlowChannel.Size = UDim2.new(1.06396091, 30, 0.228228226, 30)
      GlowChannel.ZIndex = 0
      GlowChannel.Image = "rbxassetid://4996891970"
      GlowChannel.ImageColor3 = Color3.fromRGB(15, 15, 15)
      GlowChannel.ScaleType = Enum.ScaleType.Slice
      GlowChannel.SliceCenter = Rect.new(20, 20, 280, 280)

      ServerChannelHolder.Name = "ServerChannelHolder"
      ServerChannelHolder.Parent = ServerContentFrame
      ServerChannelHolder.Active = true
      ServerChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerChannelHolder.BackgroundTransparency = 1.000
      ServerChannelHolder.BorderSizePixel = 0
      ServerChannelHolder.Position = UDim2.new(0.00535549596, 0, 0.0241984241, 0)
      ServerChannelHolder.Selectable = false
      ServerChannelHolder.Size = UDim2.new(0, 179, 0, 278)
      ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
      ServerChannelHolder.ScrollBarThickness = 4
      ServerChannelHolder.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
      ServerChannelHolder.ScrollBarImageTransparency = 1

      ServerChannelHolderLayout.Name = "ServerChannelHolderLayout"
      ServerChannelHolderLayout.Parent = ServerChannelHolder
      ServerChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
      ServerChannelHolderLayout.Padding = UDim.new(0, 4)

      ServerChannelHolderPadding.Name = "ServerChannelHolderPadding"
      ServerChannelHolderPadding.Parent = ServerChannelHolder
      ServerChannelHolderPadding.PaddingLeft = UDim.new(0, 9)

      ServerChannelHolder.MouseEnter:Connect(function()
         ServerChannelHolder.ScrollBarImageTransparency = 0
      end)

      ServerChannelHolder.MouseLeave:Connect(function()
         ServerChannelHolder.ScrollBarImageTransparency = 1
      end)

      Server.MouseEnter:Connect(
         function()
            if currentservertoggled ~= Server.Name then
               TweenService:Create(
                  Server,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
               ):Play()
               TweenService:Create(
                  ServerBtnCorner,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {CornerRadius = UDim.new(0, 15)}
               ):Play()
               ServerWhiteFrame:TweenSize(
                  UDim2.new(0, 11, 0, 27),
                  Enum.EasingDirection.Out,
                  Enum.EasingStyle.Quart,
                  .3,
                  true
               )
            end
         end
      )

      Server.MouseLeave:Connect(
         function()
            if currentservertoggled ~= Server.Name then
               TweenService:Create(
                  Server,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(25,25,25)}
               ):Play()
               TweenService:Create(
                  ServerBtnCorner,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {CornerRadius = UDim.new(1, 0)}
               ):Play()
               ServerWhiteFrame:TweenSize(
                  UDim2.new(0, 11, 0, 10),
                  Enum.EasingDirection.Out,
                  Enum.EasingStyle.Quart,
                  .3,
                  true
               )
            end
         end
      )

      Server.MouseButton1Click:Connect(
         function()
            currentservertoggled = Server.Name
            for i, v in next, ServersHolder:GetChildren() do
               if v.Name == "ServerFrame" then
                  v.Visible = false
               end
               ServerFrame.Visible = true
            end
            for i, v in next, ServersHold:GetChildren() do
               if v.ClassName == "TextButton" then
                  TweenService:Create(
                     v,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundColor3 = Color3.fromRGB(25,25,25)}
                  ):Play()
                  TweenService:Create(
                     Server,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundColor3 = Color3.fromRGB(25,25,25)}
                  ):Play()
                  TweenService:Create(
                     v.ServerCorner,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {CornerRadius = UDim.new(1, 0)}
                  ):Play()
                  TweenService:Create(
                     ServerBtnCorner,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {CornerRadius = UDim.new(0, 15)}
                  ):Play()
                  v.ServerWhiteFrame:TweenSize(
                     UDim2.new(0, 11, 0, 10),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     .3,
                     true
                  )
                  ServerWhiteFrame:TweenSize(
                     UDim2.new(0, 11, 0, 46),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     .3,
                     true
                  )
               end
            end
         end
      )

      if fs == false then
         TweenService:Create(
            Server,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25,25,25)}
         ):Play()
         TweenService:Create(
            ServerBtnCorner,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {CornerRadius = UDim.new(0, 15)}
         ):Play()
         ServerWhiteFrame:TweenSize(
            UDim2.new(0, 11, 0, 46),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quart,
            .3,
            true
         )
         ServerFrame.Visible = true
         Server.Name = text .. "Server"
         currentservertoggled = Server.Name
         fs = true
      end
      local ChannelHold = {}
      function ChannelHold:Channel(text)
         local ChannelBtn = Instance.new("TextButton")
         local ChannelBtnCorner = Instance.new("UICorner")
         local ChannelBtnHashtag = Instance.new("TextLabel")
         local ChannelBtnTitle = Instance.new("TextLabel")

         ChannelBtn.Name = text .. "ChannelBtn"
         ChannelBtn.Parent = ServerChannelHolder
         ChannelBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
         ChannelBtn.BorderSizePixel = 0
         ChannelBtn.Position = UDim2.new(0.24118948, 0, 0.578947365, 0)
         ChannelBtn.Size = UDim2.new(0, 160, 0, 30)
         ChannelBtn.AutoButtonColor = false
         ChannelBtn.Font = Enum.Font.SourceSans
         ChannelBtn.Text = ""
         ChannelBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
         ChannelBtn.TextSize = 14.000

         ChannelBtnCorner.CornerRadius = UDim.new(0, 8)
         ChannelBtnCorner.Name = "ChannelBtnCorner"
         ChannelBtnCorner.Parent = ChannelBtn

         ChannelBtnHashtag.Name = "ChannelBtnHashtag"
         ChannelBtnHashtag.Parent = ChannelBtn
         ChannelBtnHashtag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ChannelBtnHashtag.BackgroundTransparency = 1.000
         ChannelBtnHashtag.BorderSizePixel = 0
         ChannelBtnHashtag.Position = UDim2.new(0.08, 0, 0, 0)
         ChannelBtnHashtag.Size = UDim2.new(0, 24, 0, 30)
         ChannelBtnHashtag.Font = Enum.Font.Gotham
         ChannelBtnHashtag.Text = ""
         ChannelBtnHashtag.TextColor3 = Color3.fromRGB(114, 118, 125)
         ChannelBtnHashtag.TextSize = 21.000

         ChannelBtnTitle.Name = "ChannelBtnTitle"
         ChannelBtnTitle.Parent = ChannelBtn
         ChannelBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ChannelBtnTitle.BackgroundTransparency = 1.000
         ChannelBtnTitle.BorderSizePixel = 0
         ChannelBtnTitle.Position = UDim2.new(0.05, 0, -0.166666672, 0)
         ChannelBtnTitle.Size = UDim2.new(0, 95, 0, 39)
         ChannelBtnTitle.Font = Enum.Font.Gotham
         ChannelBtnTitle.Text = text
         ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
         ChannelBtnTitle.TextSize = 14.000
         ChannelBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
         ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ServerChannelHolderLayout.AbsoluteContentSize.Y)

         local ChannelHolder = Instance.new("ScrollingFrame")
         local ChannelHolderLayout = Instance.new("UIListLayout")

         ChannelHolder.Name = "ChannelHolder"
         ChannelHolder.Parent = ChannelContentFrame
         ChannelHolder.Active = true
         ChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ChannelHolder.BackgroundTransparency = 1.000
         ChannelHolder.BorderSizePixel = 0
         ChannelHolder.Position = UDim2.new(0.0360843192, 0, 0.0241984241, 0)
         ChannelHolder.Size = UDim2.new(0, 412, 0, 314)
         ChannelHolder.ScrollBarThickness = 6
         ChannelHolder.CanvasSize = UDim2.new(0,0,0,0)
         ChannelHolder.ScrollBarImageTransparency = 0
         ChannelHolder.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
         ChannelHolder.Visible = false
         ChannelHolder.ClipsDescendants = false

         ChannelHolderLayout.Name = "ChannelHolderLayout"
         ChannelHolderLayout.Parent = ChannelHolder
         ChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
         ChannelHolderLayout.Padding = UDim.new(0, 8)

         ChannelBtn.MouseEnter:Connect(function()
            if currentchanneltoggled ~= ChannelBtn.Name then
               ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
               ChannelBtnTitle.TextColor3 = Color3.fromRGB(220,221,222)
            end
         end)

         ChannelBtn.MouseLeave:Connect(function()
            if currentchanneltoggled ~= ChannelBtn.Name then
               ChannelBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
               ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
            end
         end)

         ChannelBtn.MouseButton1Click:Connect(function()
            for i, v in next, ChannelContentFrame:GetChildren() do
               if v.Name == "ChannelHolder" then
                  v.Visible = false
               end
               ChannelHolder.Visible = true
            end
            for i, v in next, ServerChannelHolder:GetChildren() do
               if v.ClassName == "TextButton" then
                  v.BackgroundColor3 = Color3.fromRGB(25,25,25)
                  v.ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
               end
               ServerFrame.Visible = true
            end
            ChannelTitle.Text = text
            ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ChannelBtnTitle.TextColor3 = Color3.fromRGB(255,255,255)
            currentchanneltoggled = ChannelBtn.Name
         end)

         if fc == false then
            fc = true
            ChannelTitle.Text = text
            ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ChannelBtnTitle.TextColor3 = Color3.fromRGB(255,255,255)
            currentchanneltoggled = ChannelBtn.Name
            ChannelHolder.Visible = true
         end
         local ChannelContent = {}
         function ChannelContent:Button(text,callback)
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = ChannelHolder
            Button.BackgroundColor3 = Color3.fromRGB(20,20,20)
            Button.Size = UDim2.new(0, 401, 0, 30)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.Text = text

            ButtonCorner.CornerRadius = UDim.new(0, 4)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            Button.MouseEnter:Connect(function()
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(15,15,15)}
               ):Play()
            end)

            Button.MouseButton1Click:Connect(function()
               pcall(callback)
               Button.TextSize = 0
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                  {TextSize = 14}
               ):Play()
            end)

            Button.MouseLeave:Connect(function()
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(20,20,20)}
               ):Play()
            end)
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end
         function ChannelContent:Toggle(text,default,callback)
            local toggled = false
            local Toggle = Instance.new("TextButton")
            local ToggleTitle = Instance.new("TextLabel")
            local ToggleFrame = Instance.new("Frame")
            local ToggleFrameCorner = Instance.new("UICorner")
            local ToggleFrameCircle = Instance.new("Frame")
            local ToggleFrameCircleCorner = Instance.new("UICorner")
            local Icon = Instance.new("ImageLabel")

            Toggle.Name = "Toggle"
            Toggle.Parent = ChannelHolder
            Toggle.BackgroundColor3 = Color3.fromRGB(25,25,25)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
            Toggle.Size = UDim2.new(0, 401, 0, 30)
            Toggle.AutoButtonColor = false
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.TextSize = 14.000

            ToggleTitle.Name = "ToggleTitle"
            ToggleTitle.Parent = Toggle
            ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTitle.BackgroundTransparency = 1.000
            ToggleTitle.Position = UDim2.new(0, 5, 0, 0)
            ToggleTitle.Size = UDim2.new(0, 200, 0, 30)
            ToggleTitle.Font = Enum.Font.Gotham
            ToggleTitle.Text = text
            ToggleTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            ToggleTitle.TextSize = 14.000
            ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = Toggle
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ToggleFrame.Position = UDim2.new(0.900481343, -5, 0.13300018, 0)
            ToggleFrame.Size = UDim2.new(0, 40, 0, 21)

            ToggleFrameCorner.CornerRadius = UDim.new(0, 4)
            ToggleFrameCorner.Name = "ToggleFrameCorner"
            ToggleFrameCorner.Parent = ToggleFrame

            ToggleFrameCircle.Name = "ToggleFrameCircle"
            ToggleFrameCircle.Parent = ToggleFrame
            ToggleFrameCircle.BackgroundColor3 = Color3.fromRGB(50,50,50)
            ToggleFrameCircle.Position = UDim2.new(0.234999999, -5, 0.133000001, 0)
            ToggleFrameCircle.Size = UDim2.new(0, 15, 0, 15)

            ToggleFrameCircleCorner.CornerRadius = UDim.new(0, 4)
            ToggleFrameCircleCorner.Name = "ToggleFrameCircleCorner"
            ToggleFrameCircleCorner.Parent = ToggleFrameCircle

            Icon.Name = "Icon"
            Icon.Parent = ToggleFrameCircle
            Icon.AnchorPoint = Vector2.new(0.5, 0.5)
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.BorderColor3 = Color3.fromRGB(255,255,255)
            Icon.Position = UDim2.new(0, 7, 0, 7)
            Icon.Size = UDim2.new(0, 13, 0, 13)
            Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
            Icon.ImageColor3 = Color3.fromRGB(255,255,255)

            Toggle.MouseButton1Click:Connect(function()
               if toggled == false then
                  TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
                  TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(233, 25, 42)}):Play()
                  ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
                  Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
                  wait(.1)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
               else
                  TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
                  TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(10,10,10)}):Play()
                  ToggleFrameCircle:TweenPosition(UDim2.new(0.234999999, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
                  Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
                  wait(.01)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
               end
               toggled = not toggled
               pcall(callback, toggled)
            end)
            if default == true then
               toggled = false
               TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
               TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(233, 25, 42)}):Play()
               ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
               Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
               wait(.1)
               TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
               toggled = not toggled
               pcall(callback, toggled)
            else
               wait(.1)
            end
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         function ChannelContent:Slider(text, min, max, start, callback)
            local SliderFunc = {}
            local dragging = false
            local Slider = Instance.new("TextButton")
            local SliderTitle = Instance.new("TextLabel")
            local SliderFrame = Instance.new("Frame")
            local SliderFrameCorner = Instance.new("UICorner")
            local CurrentValueFrame = Instance.new("Frame")
            local CurrentValueFrameCorner = Instance.new("UICorner")
            local Zip = Instance.new("Frame")
            local ZipCorner = Instance.new("UICorner")
            local ValueBubble = Instance.new("Frame")
            local ValueBubbleCorner = Instance.new("UICorner")
            local SquareBubble = Instance.new("Frame")
            local GlowBubble = Instance.new("ImageLabel")
            local ValueLabel = Instance.new("TextLabel")


            Slider.Name = "Slider"
            Slider.Parent = ChannelHolder
            Slider.BackgroundColor3 = Color3.fromRGB(25,25,25)
            Slider.BorderSizePixel = 0
            Slider.Position = UDim2.new(0, 0, 0.216560602, 0)
            Slider.Size = UDim2.new(0, 401, 0, 38)
            Slider.AutoButtonColor = false
            Slider.Font = Enum.Font.Gotham
            Slider.Text = ""
            Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
            Slider.TextSize = 14.000

            SliderTitle.Name = "SliderTitle"
            SliderTitle.Parent = Slider
            SliderTitle.BackgroundColor3 = Color3.fromRGB(233, 25, 42)
            SliderTitle.BackgroundTransparency = 1.000
            SliderTitle.Position = UDim2.new(0, 5, 0, -4)
            SliderTitle.Size = UDim2.new(0, 200, 0, 27)
            SliderTitle.Font = Enum.Font.Gotham
            SliderTitle.Text = text
            SliderTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            SliderTitle.TextSize = 14.000
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = Slider
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
            SliderFrame.Position = UDim2.new(0.497999996, 0, 0.757000029, 0)
            SliderFrame.Size = UDim2.new(0, 385, 0, 8)

            SliderFrameCorner.Name = "SliderFrameCorner"
            SliderFrameCorner.Parent = SliderFrame

            CurrentValueFrame.Name = "CurrentValueFrame"
            CurrentValueFrame.Parent = SliderFrame
            CurrentValueFrame.BackgroundColor3 = Color3.fromRGB(233, 25, 42)
            CurrentValueFrame.Size = UDim2.new((start or 0) / max, 0, 0, 8)

            CurrentValueFrameCorner.Name = "CurrentValueFrameCorner"
            CurrentValueFrameCorner.Parent = CurrentValueFrame

            Zip.Name = "Zip"
            Zip.Parent = SliderFrame
            Zip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Zip.Position = UDim2.new((start or 0)/max, -6,-0.644999981, 0)
            Zip.Size = UDim2.new(0, 10, 0, 18)
            ZipCorner.CornerRadius = UDim.new(0, 3)
            ZipCorner.Name = "ZipCorner"
            ZipCorner.Parent = Zip

            ValueBubble.Name = "ValueBubble"
            ValueBubble.Parent = Zip
            ValueBubble.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            ValueBubble.Position = UDim2.new(0.5, 0, -1.00800002, 0)
            ValueBubble.Size = UDim2.new(0, 36, 0, 21)
            ValueBubble.Visible = false


            Zip.MouseEnter:Connect(function()
               if dragging == false then
                  ValueBubble.Visible = true
               end
            end)

            Zip.MouseLeave:Connect(function()
               if dragging == false then
                  ValueBubble.Visible = false
               end
            end)


            ValueBubbleCorner.CornerRadius = UDim.new(0, 3)
            ValueBubbleCorner.Name = "ValueBubbleCorner"
            ValueBubbleCorner.Parent = ValueBubble

            SquareBubble.Name = "SquareBubble"
            SquareBubble.Parent = ValueBubble
            SquareBubble.AnchorPoint = Vector2.new(0.5, 0.5)
            SquareBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            SquareBubble.BorderSizePixel = 0
            SquareBubble.Position = UDim2.new(0.493000001, 0, 0.637999971, 0)
            SquareBubble.Rotation = 45.000
            SquareBubble.Size = UDim2.new(0, 19, 0, 19)

            GlowBubble.Name = "GlowBubble"
            GlowBubble.Parent = ValueBubble
            GlowBubble.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            GlowBubble.BackgroundTransparency = 1.000
            GlowBubble.BorderSizePixel = 0
            GlowBubble.Position = UDim2.new(0, -15, 0, -15)
            GlowBubble.Size = UDim2.new(1, 30, 1, 30)
            GlowBubble.ZIndex = 0
            GlowBubble.Image = "rbxassetid://4996891970"
            GlowBubble.ImageColor3 = Color3.fromRGB(15, 15, 15)
            GlowBubble.ScaleType = Enum.ScaleType.Slice
            GlowBubble.SliceCenter = Rect.new(20, 20, 280, 280)

            ValueLabel.Name = "ValueLabel"
            ValueLabel.Parent = ValueBubble
            ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ValueLabel.BackgroundTransparency = 1.000
            ValueLabel.Size = UDim2.new(0, 36, 0, 21)
            ValueLabel.Font = Enum.Font.Gotham
            ValueLabel.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
            ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            ValueLabel.TextSize = 10.000
            local function move(input)
               local pos =
                  UDim2.new(
                     math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                     -6,
                     -0.644999981,
                     0
                  )
               local pos1 =
                  UDim2.new(
                     math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                     0,
                     0,
                     8
                  )
               CurrentValueFrame.Size = pos1
               Zip.Position = pos
               local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
               ValueLabel.Text = tostring(value)
               pcall(callback, value)
            end
            Zip.InputBegan:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     dragging = true
                     ValueBubble.Visible = true
                  end
               end
            )
            Zip.InputEnded:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     dragging = false
                     ValueBubble.Visible = false
                  end
               end
            )
            game:GetService("UserInputService").InputChanged:Connect(
            function(input)
               if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                  move(input)
               end
            end
            )

            function SliderFunc:Change(tochange)
               CurrentValueFrame.Size = UDim2.new((tochange or 0) / max, 0, 0, 8)
               Zip.Position = UDim2.new((tochange or 0)/max, -6,-0.644999981, 0)
               ValueLabel.Text = tostring(tochange and math.floor((tochange / max) * (max - min) + min) or 0)
               pcall(callback, tochange)
            end

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
            return SliderFunc
         end
         function ChannelContent:Line()
            local Seperator1 = Instance.new("Frame")
            local Seperator2 = Instance.new("Frame")

            Seperator1.Name = "Seperator1"
            Seperator1.Parent = ChannelHolder
            Seperator1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Seperator1.BackgroundTransparency = 1.000
            Seperator1.Position = UDim2.new(0, 0, 0.350318581, 0)
            Seperator1.Size = UDim2.new(0, 100, 0, 8)

            Seperator2.Name = "Seperator2"
            Seperator2.Parent = Seperator1
            Seperator2.BackgroundColor3 = Color3.fromRGB(66, 69, 74)
            Seperator2.BorderSizePixel = 0
            Seperator2.Position = UDim2.new(0, 0, 0, 4)
            Seperator2.Size = UDim2.new(0, 401, 0, 1)
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end
         function ChannelContent:Dropdown(text, list, callback)
            local DropFunc = {}
            local itemcount = 0
            local framesize = 0
            local DropTog = false
            local Dropdown = Instance.new("Frame")
            local DropdownTitle = Instance.new("TextLabel")
            local DropdownFrameOutline = Instance.new("Frame")
            local DropdownFrameOutlineCorner = Instance.new("UICorner")
            local DropdownFrame = Instance.new("Frame")
            local DropdownFrameCorner = Instance.new("UICorner")
            local CurrentSelectedText = Instance.new("TextLabel")
            local ArrowImg = Instance.new("ImageLabel")
            local DropdownFrameBtn = Instance.new("TextButton")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ChannelHolder
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
            Dropdown.Size = UDim2.new(0, 403, 0, 73)

            DropdownTitle.Name = "DropdownTitle"
            DropdownTitle.Parent = Dropdown
            DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTitle.BackgroundTransparency = 1.000
            DropdownTitle.Position = UDim2.new(0, 5, 0, 0)
            DropdownTitle.Size = UDim2.new(0, 200, 0, 29)
            DropdownTitle.Font = Enum.Font.Gotham
            DropdownTitle.Text = text
            DropdownTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            DropdownTitle.TextSize = 14.000
            DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

            DropdownFrameOutline.Name = "DropdownFrameOutline"
            DropdownFrameOutline.Parent = DropdownTitle
            DropdownFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
            DropdownFrameOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
            DropdownFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
            DropdownFrameOutline.Size = UDim2.new(0, 396, 0, 36)

            DropdownFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
            DropdownFrameOutlineCorner.Name = "DropdownFrameOutlineCorner"
            DropdownFrameOutlineCorner.Parent = DropdownFrameOutline

            DropdownFrame.Name = "DropdownFrame"
            DropdownFrame.Parent = DropdownTitle
            DropdownFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
            DropdownFrame.ClipsDescendants = true
            DropdownFrame.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
            DropdownFrame.Selectable = true
            DropdownFrame.Size = UDim2.new(0, 392, 0, 32)

            DropdownFrameCorner.CornerRadius = UDim.new(0, 4)
            DropdownFrameCorner.Name = "DropdownFrameCorner"
            DropdownFrameCorner.Parent = DropdownFrame

            CurrentSelectedText.Name = "CurrentSelectedText"
            CurrentSelectedText.Parent = DropdownFrame
            CurrentSelectedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            CurrentSelectedText.BackgroundTransparency = 1.000
            CurrentSelectedText.Position = UDim2.new(0.0178571437, 0, 0, 0)
            CurrentSelectedText.Size = UDim2.new(0, 193, 0, 32)
            CurrentSelectedText.Font = Enum.Font.Gotham
            CurrentSelectedText.Text = "..."
            CurrentSelectedText.TextColor3 = Color3.fromRGB(212, 212, 212)
            CurrentSelectedText.TextSize = 14.000
            CurrentSelectedText.TextXAlignment = Enum.TextXAlignment.Left

            ArrowImg.Name = "ArrowImg"
            ArrowImg.Parent = CurrentSelectedText
            ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ArrowImg.BackgroundTransparency = 1.000
            ArrowImg.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
            ArrowImg.Size = UDim2.new(0, 22, 0, 22)
            ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818372"
            ArrowImg.ImageColor3 = Color3.fromRGB(212, 212, 212)

            DropdownFrameBtn.Name = "DropdownFrameBtn"
            DropdownFrameBtn.Parent = DropdownFrame
            DropdownFrameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownFrameBtn.BackgroundTransparency = 1.000
            DropdownFrameBtn.Size = UDim2.new(0, 392, 0, 32)
            DropdownFrameBtn.Font = Enum.Font.SourceSans
            DropdownFrameBtn.Text = ""
            DropdownFrameBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownFrameBtn.TextSize = 14.000

            local DropdownFrameMainOutline = Instance.new("Frame")
            local DropdownFrameMainOutlineCorner = Instance.new("UICorner")
            local DropdownFrameMain = Instance.new("Frame")
            local DropdownFrameMainCorner = Instance.new("UICorner")
            local DropItemHolderLabel = Instance.new("TextLabel")
            local DropItemHolder = Instance.new("ScrollingFrame")
            local DropItemHolderLayout = Instance.new("UIListLayout")

            DropdownFrameMainOutline.Name = "DropdownFrameMainOutline"
            DropdownFrameMainOutline.Parent = DropdownTitle
            DropdownFrameMainOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
            DropdownFrameMainOutline.Position = UDim2.new(-0.00155700743, 0, 2.16983342, 0)
            DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 81)
            DropdownFrameMainOutline.Visible = false

            DropdownFrameMainOutlineCorner.CornerRadius = UDim.new(0, 3)
            DropdownFrameMainOutlineCorner.Name = "DropdownFrameMainOutlineCorner"
            DropdownFrameMainOutlineCorner.Parent = DropdownFrameMainOutline

            DropdownFrameMain.Name = "DropdownFrameMain"
            DropdownFrameMain.Parent = DropdownTitle
            DropdownFrameMain.BackgroundColor3 = Color3.fromRGB(25,25,25)
            DropdownFrameMain.ClipsDescendants = true
            DropdownFrameMain.Position = UDim2.new(0.00999999978, 0, 2.2568965, 0)
            DropdownFrameMain.Selectable = true
            DropdownFrameMain.Size = UDim2.new(0, 392, 0, 77)
            DropdownFrameMain.Visible = false

            DropdownFrameMainCorner.CornerRadius = UDim.new(0, 4)
            DropdownFrameMainCorner.Name = "DropdownFrameMainCorner"
            DropdownFrameMainCorner.Parent = DropdownFrameMain

            DropItemHolderLabel.Name = "ItemHolderLabel"
            DropItemHolderLabel.Parent = DropdownFrameMain
            DropItemHolderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropItemHolderLabel.BackgroundTransparency = 1.000
            DropItemHolderLabel.Position = UDim2.new(0.0178571437, 0, 0, 0)
            DropItemHolderLabel.Size = UDim2.new(0, 193, 0, 13)
            DropItemHolderLabel.Font = Enum.Font.Gotham
            DropItemHolderLabel.Text = ""
            DropItemHolderLabel.TextColor3 = Color3.fromRGB(212, 212, 212)
            DropItemHolderLabel.TextSize = 14.000
            DropItemHolderLabel.TextXAlignment = Enum.TextXAlignment.Left

            DropItemHolder.Name = "ItemHolder"
            DropItemHolder.Parent = DropItemHolderLabel
            DropItemHolder.Active = true
            DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropItemHolder.BackgroundTransparency = 1.000
            DropItemHolder.Position = UDim2.new(0, 0, 0.215384638, 0)
            DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
            DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropItemHolder.ScrollBarThickness = 4
            DropItemHolder.BorderSizePixel = 0
            DropItemHolder.ScrollBarImageColor3 = Color3.fromRGB(233, 25, 42)

            DropItemHolderLayout.Name = "ItemHolderLayout"
            DropItemHolderLayout.Parent = DropItemHolder
            DropItemHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
            DropItemHolderLayout.Padding = UDim.new(0, 0)

            DropdownFrameBtn.MouseButton1Click:Connect(function()
               if DropTog == false then
                  DropdownFrameMain.Visible = true
                  DropdownFrameMainOutline.Visible = true
                  Dropdown.Size = UDim2.new(0, 403, 0, 73 + DropdownFrameMainOutline.AbsoluteSize.Y)
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)

               else
                  Dropdown.Size = UDim2.new(0, 403, 0, 73)
                  DropdownFrameMain.Visible = false
                  DropdownFrameMainOutline.Visible = false
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
               end
               DropTog = not DropTog
            end)


            for i,v in next, list do
               itemcount = itemcount + 1

               if itemcount == 1 then
                  framesize = 29
               elseif itemcount == 2 then
                  framesize = 58
               elseif itemcount >= 3 then
                  framesize = 87
               end

               local Item = Instance.new("TextButton")
               local ItemCorner = Instance.new("UICorner")
               local ItemText = Instance.new("TextLabel")

               Item.Name = "Item"
               Item.Parent = DropItemHolder
               Item.BackgroundColor3 = Color3.fromRGB(10,10,10)
               Item.Size = UDim2.new(0, 379, 0, 29)
               Item.AutoButtonColor = false
               Item.Font = Enum.Font.SourceSans
               Item.Text = ""
               Item.TextColor3 = Color3.fromRGB(0, 0, 0)
               Item.TextSize = 14.000
               Item.BackgroundTransparency = 1

               ItemCorner.CornerRadius = UDim.new(0, 4)
               ItemCorner.Name = "ItemCorner"
               ItemCorner.Parent = Item

               ItemText.Name = "ItemText"
               ItemText.Parent = Item
               ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
               ItemText.BackgroundTransparency = 1.000
               ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
               ItemText.Size = UDim2.new(0, 192, 0, 29)
               ItemText.Font = Enum.Font.Gotham
               ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
               ItemText.TextSize = 14.000
               ItemText.TextXAlignment = Enum.TextXAlignment.Left
               ItemText.Text = v

               Item.MouseEnter:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(255,255,255)
                  Item.BackgroundTransparency = 0
               end)

               Item.MouseLeave:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
                  Item.BackgroundTransparency = 1
               end)

               Item.MouseButton1Click:Connect(function()
                  CurrentSelectedText.Text = v
                  pcall(callback, v)
                  Dropdown.Size = UDim2.new(0, 403, 0, 73)
                  DropdownFrameMain.Visible = false
                  DropdownFrameMainOutline.Visible = false
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
                  DropTog = not DropTog
               end)

               DropItemHolder.CanvasSize = UDim2.new(0,0,0,DropItemHolderLayout.AbsoluteContentSize.Y)

               DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
               DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
               DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
            end

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)

            function DropFunc:Clear()
               for i,v in next, DropItemHolder:GetChildren() do
                  if v.Name == "Item" then
                     v:Destroy()
                  end
               end

               CurrentSelectedText.Text = "..."

               itemcount = 0
               framesize = 0
               DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
               DropdownFrameMain.Size = UDim2.new(0, 392, 0, 0)
               DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 0)
               Dropdown.Size = UDim2.new(0, 403, 0, 73)
               DropdownFrameMain.Visible = false
               DropdownFrameMainOutline.Visible = false
               ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
            end

            function DropFunc:Add(textadd)
               itemcount = itemcount + 1

               if itemcount == 1 then
                  framesize = 29
               elseif itemcount == 2 then
                  framesize = 58
               elseif itemcount >= 3 then
                  framesize = 87
               end

               local Item = Instance.new("TextButton")
               local ItemCorner = Instance.new("UICorner")
               local ItemText = Instance.new("TextLabel")

               Item.Name = "Item"
               Item.Parent = DropItemHolder
               Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
               Item.Size = UDim2.new(0, 379, 0, 29)
               Item.AutoButtonColor = false
               Item.Font = Enum.Font.SourceSans
               Item.Text = ""
               Item.TextColor3 = Color3.fromRGB(0, 0, 0)
               Item.TextSize = 14.000
               Item.BackgroundTransparency = 1

               ItemCorner.CornerRadius = UDim.new(0, 4)
               ItemCorner.Name = "ItemCorner"
               ItemCorner.Parent = Item

               ItemText.Name = "ItemText"
               ItemText.Parent = Item
               ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
               ItemText.BackgroundTransparency = 1.000
               ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
               ItemText.Size = UDim2.new(0, 192, 0, 29)
               ItemText.Font = Enum.Font.Gotham
               ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
               ItemText.TextSize = 14.000
               ItemText.TextXAlignment = Enum.TextXAlignment.Left
               ItemText.Text = textadd

               Item.MouseEnter:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(255,255,255)
                  Item.BackgroundTransparency = 0
               end)

               Item.MouseLeave:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
                  Item.BackgroundTransparency = 1
               end)

               Item.MouseButton1Click:Connect(function()
                  CurrentSelectedText.Text = textadd
                  pcall(callback, textadd)
                  Dropdown.Size = UDim2.new(0, 403, 0, 73)
                  DropdownFrameMain.Visible = false
                  DropdownFrameMainOutline.Visible = false
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
                  DropTog = not DropTog
               end)

               DropItemHolder.CanvasSize = UDim2.new(0,0,0,DropItemHolderLayout.AbsoluteContentSize.Y)

               DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
               DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
               DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
            end
            return DropFunc
         end
         function ChannelContent:Colorpicker(text, preset, callback)
            local OldToggleColor = Color3.fromRGB(0, 0, 0)
            local OldColor = Color3.fromRGB(0, 0, 0)
            local OldColorSelectionPosition = nil
            local OldHueSelectionPosition = nil
            local ColorH, ColorS, ColorV = 1, 1, 1
            local RainbowColorPicker = false
            local ColorPickerInput = nil
            local ColorInput = nil
            local HueInput = nil

            local Colorpicker = Instance.new("Frame")
            local ColorpickerTitle = Instance.new("TextLabel")
            local ColorpickerFrameOutline = Instance.new("Frame")
            local ColorpickerFrameOutlineCorner = Instance.new("UICorner")
            local ColorpickerFrame = Instance.new("Frame")
            local ColorpickerFrameCorner = Instance.new("UICorner")
            local Color = Instance.new("ImageLabel")
            local ColorCorner = Instance.new("UICorner")
            local ColorSelection = Instance.new("ImageLabel")
            local Hue = Instance.new("ImageLabel")
            local HueCorner = Instance.new("UICorner")
            local HueGradient = Instance.new("UIGradient")
            local HueSelection = Instance.new("ImageLabel")
            local PresetClr = Instance.new("Frame")
            local PresetClrCorner = Instance.new("UICorner")

            Colorpicker.Name = "Colorpicker"
            Colorpicker.Parent = ChannelHolder
            Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Colorpicker.BackgroundTransparency = 1.000
            Colorpicker.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
            Colorpicker.Size = UDim2.new(0, 403, 0, 175)

            ColorpickerTitle.Name = "ColorpickerTitle"
            ColorpickerTitle.Parent = Colorpicker
            ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorpickerTitle.BackgroundTransparency = 1.000
            ColorpickerTitle.Position = UDim2.new(0, 5, 0, 0)
            ColorpickerTitle.Size = UDim2.new(0, 200, 0, 29)
            ColorpickerTitle.Font = Enum.Font.Gotham
            ColorpickerTitle.Text = "Colorpicker"
            ColorpickerTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            ColorpickerTitle.TextSize = 14.000
            ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left

            ColorpickerFrameOutline.Name = "ColorpickerFrameOutline"
            ColorpickerFrameOutline.Parent = ColorpickerTitle
            ColorpickerFrameOutline.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
            ColorpickerFrameOutline.Position = UDim2.new(-0.00100000005, 0, 0.991999984, 0)
            ColorpickerFrameOutline.Size = UDim2.new(0, 238, 0, 139)

            ColorpickerFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
            ColorpickerFrameOutlineCorner.Name = "ColorpickerFrameOutlineCorner"

            ColorpickerFrameOutlineCorner.Parent = ColorpickerFrameOutline

            ColorpickerFrame.Name = "ColorpickerFrame"
            ColorpickerFrame.Parent = ColorpickerTitle
            ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
            ColorpickerFrame.ClipsDescendants = true
            ColorpickerFrame.Position = UDim2.new(0.00999999978, 0, 1.06638515, 0)
            ColorpickerFrame.Selectable = true
            ColorpickerFrame.Size = UDim2.new(0, 234, 0, 135)

            ColorpickerFrameCorner.CornerRadius = UDim.new(0, 3)
            ColorpickerFrameCorner.Name = "ColorpickerFrameCorner"
            ColorpickerFrameCorner.Parent = ColorpickerFrame

            Color.Name = "Color"
            Color.Parent = ColorpickerFrame
            Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            Color.Position = UDim2.new(0, 10, 0, 10)
            Color.Size = UDim2.new(0, 154, 0, 118)
            Color.ZIndex = 10
            Color.Image = "rbxassetid://4155801252"

            ColorCorner.CornerRadius = UDim.new(0, 3)
            ColorCorner.Name = "ColorCorner"
            ColorCorner.Parent = Color

            ColorSelection.Name = "ColorSelection"
            ColorSelection.Parent = Color
            ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorSelection.BackgroundTransparency = 1.000
            ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
            ColorSelection.Size = UDim2.new(0, 18, 0, 18)
            ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
            ColorSelection.ScaleType = Enum.ScaleType.Fit

            Hue.Name = "Hue"
            Hue.Parent = ColorpickerFrame
            Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Hue.Position = UDim2.new(0, 171, 0, 10)
            Hue.Size = UDim2.new(0, 18, 0, 118)

            HueCorner.CornerRadius = UDim.new(0, 3)
            HueCorner.Name = "HueCorner"
            HueCorner.Parent = Hue

            HueGradient.Color = ColorSequence.new {
               ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
               ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
               ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
               ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
               ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
               ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
               ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
            }
            HueGradient.Rotation = 270
            HueGradient.Name = "HueGradient"
            HueGradient.Parent = Hue

            HueSelection.Name = "HueSelection"
            HueSelection.Parent = Hue
            HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HueSelection.BackgroundTransparency = 1.000
            HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
            HueSelection.Size = UDim2.new(0, 18, 0, 18)
            HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

            PresetClr.Name = "PresetClr"
            PresetClr.Parent = ColorpickerFrame
            PresetClr.BackgroundColor3 = preset
            PresetClr.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
            PresetClr.Size = UDim2.new(0, 25, 0, 25)

            PresetClrCorner.CornerRadius = UDim.new(0, 3)
            PresetClrCorner.Name = "PresetClrCorner"
            PresetClrCorner.Parent = PresetClr

            local function UpdateColorPicker(nope)
               PresetClr.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
               Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

               pcall(callback, PresetClr.BackgroundColor3)
            end

            ColorH =
               1 -
               (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                  Hue.AbsoluteSize.Y)
            ColorS =
               (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                  Color.AbsoluteSize.X)
            ColorV =
               1 -
               (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                  Color.AbsoluteSize.Y)

            PresetClr.BackgroundColor3 = preset
            Color.BackgroundColor3 = preset
            pcall(callback, PresetClr.BackgroundColor3)

            Color.InputBegan:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then

                     if ColorInput then
                        ColorInput:Disconnect()
                     end

                     ColorInput =
                        RunService.RenderStepped:Connect(
                           function()
                           local ColorX =
                              (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                 Color.AbsoluteSize.X)
                           local ColorY =
                              (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                 Color.AbsoluteSize.Y)

                           ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                           ColorS = ColorX
                           ColorV = 1 - ColorY

                           UpdateColorPicker(true)
                        end
                        )
                  end
               end
            )

            Color.InputEnded:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     if ColorInput then
                        ColorInput:Disconnect()
                     end
                  end
               end
            )

            Hue.InputBegan:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then


                     if HueInput then
                        HueInput:Disconnect()
                     end

                     HueInput =
                        RunService.RenderStepped:Connect(
                           function()
                           local HueY =
                              (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                 Hue.AbsoluteSize.Y)

                           HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
                           ColorH = 1 - HueY

                           UpdateColorPicker(true)
                        end
                        )
                  end
               end
            )

            Hue.InputEnded:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     if HueInput then
                        HueInput:Disconnect()
                     end
                  end
               end
            )

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         function ChannelContent:Textbox(text, placetext, disapper, callback)
            local Textbox = Instance.new("Frame")
            local TextboxTitle = Instance.new("TextLabel")
            local TextboxFrameOutline = Instance.new("Frame")
            local TextboxFrameOutlineCorner = Instance.new("UICorner")
            local TextboxFrame = Instance.new("Frame")
            local TextboxFrameCorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")

            Textbox.Name = "Textbox"
            Textbox.Parent = ChannelHolder
            Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Textbox.BackgroundTransparency = 1.000
            Textbox.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
            Textbox.Size = UDim2.new(0, 403, 0, 73)

            TextboxTitle.Name = "TextboxTitle"
            TextboxTitle.Parent = Textbox
            TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle.BackgroundTransparency = 1.000
            TextboxTitle.Position = UDim2.new(0, 5, 0, 0)
            TextboxTitle.Size = UDim2.new(0, 200, 0, 29)
            TextboxTitle.Font = Enum.Font.Gotham
            TextboxTitle.Text = text
            TextboxTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            TextboxTitle.TextSize = 14.000
            TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

            TextboxFrameOutline.Name = "TextboxFrameOutline"
            TextboxFrameOutline.Parent = TextboxTitle
            TextboxFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
            TextboxFrameOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
            TextboxFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
            TextboxFrameOutline.Size = UDim2.new(0, 396, 0, 36)

            TextboxFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
            TextboxFrameOutlineCorner.Name = "TextboxFrameOutlineCorner"
            TextboxFrameOutlineCorner.Parent = TextboxFrameOutline

            TextboxFrame.Name = "TextboxFrame"
            TextboxFrame.Parent = TextboxTitle
            TextboxFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
            TextboxFrame.ClipsDescendants = true
            TextboxFrame.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
            TextboxFrame.Selectable = true
            TextboxFrame.Size = UDim2.new(0, 392, 0, 32)

            TextboxFrameCorner.CornerRadius = UDim.new(0, 4)
            TextboxFrameCorner.Name = "TextboxFrameCorner"
            TextboxFrameCorner.Parent = TextboxFrame

            TextBox.Parent = TextboxFrame
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.Position = UDim2.new(0.0178571437, 0, 0, 0)
            TextBox.Size = UDim2.new(0, 377, 0, 32)
            TextBox.Font = Enum.Font.Gotham
            TextBox.PlaceholderColor3 = Color3.fromRGB(255,255,255)
            TextBox.PlaceholderText = placetext
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(193, 195, 197)
            TextBox.TextSize = 14.000
            TextBox.TextXAlignment = Enum.TextXAlignment.Left

            TextBox.Focused:Connect(function()
               TweenService:Create(
                  TextboxFrameOutline,
                  TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(255, 170, 0)}
               ):Play()
            end)

            TextBox.FocusLost:Connect(function(ep)
               TweenService:Create(
                  TextboxFrameOutline,
                  TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(15,15,15)}
               ):Play()
               if ep then
                  if #TextBox.Text > 0 then
                     pcall(callback, TextBox.Text)
                     if disapper then
                        TextBox.Text = ""
                     end
                  end
               end
            end)

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         function ChannelContent:Label(text)
            local Label = Instance.new("TextButton")
            local LabelTitle = Instance.new("TextLabel")
            local labelfunc = {}

            Label.Name = "Label"
            Label.Parent = ChannelHolder
            Label.BackgroundColor3 = Color3.fromRGB(25,25,25)
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
            Label.Size = UDim2.new(0, 401, 0, 30)
            Label.AutoButtonColor = false
            Label.Font = Enum.Font.Gotham
            Label.Text = ""
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 14.000

            LabelTitle.Name = "LabelTitle"
            LabelTitle.Parent = Label
            LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.BackgroundTransparency = 1.000
            LabelTitle.Position = UDim2.new(0, 5, 0, 0)
            LabelTitle.Size = UDim2.new(0, 200, 0, 30)
            LabelTitle.Font = Enum.Font.Gotham
            LabelTitle.Text = text
            LabelTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            LabelTitle.TextSize = 14.000
            LabelTitle.TextXAlignment = Enum.TextXAlignment.Left

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
            function labelfunc:Refresh(tochange)
               Label.Text = tochange
            end

            return labelfunc
         end

         function ChannelContent:Bind(text, presetbind, callback)
            local Key = presetbind.Name
            local Keybind = Instance.new("TextButton")
            local KeybindTitle = Instance.new("TextLabel")
            local KeybindText = Instance.new("TextLabel")

            Keybind.Name = "Keybind"
            Keybind.Parent = ChannelHolder
            Keybind.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
            Keybind.BorderSizePixel = 0
            Keybind.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
            Keybind.Size = UDim2.new(0, 401, 0, 30)
            Keybind.AutoButtonColor = false
            Keybind.Font = Enum.Font.Gotham
            Keybind.Text = ""
            Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
            Keybind.TextSize = 14.000

            KeybindTitle.Name = "KeybindTitle"
            KeybindTitle.Parent = Keybind
            KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            KeybindTitle.BackgroundTransparency = 1.000
            KeybindTitle.Position = UDim2.new(0, 5, 0, 0)
            KeybindTitle.Size = UDim2.new(0, 200, 0, 30)
            KeybindTitle.Font = Enum.Font.Gotham
            KeybindTitle.Text = text
            KeybindTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            KeybindTitle.TextSize = 14.000
            KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left

            KeybindText.Name = "KeybindText"
            KeybindText.Parent = Keybind
            KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            KeybindText.BackgroundTransparency = 1.000
            KeybindText.Position = UDim2.new(0, 316, 0, 0)
            KeybindText.Size = UDim2.new(0, 85, 0, 30)
            KeybindText.Font = Enum.Font.Gotham
            KeybindText.Text = presetbind.Name
            KeybindText.TextColor3 = Color3.fromRGB(127, 131, 137)
            KeybindText.TextSize = 14.000
            KeybindText.TextXAlignment = Enum.TextXAlignment.Right

            Keybind.MouseButton1Click:Connect(function()
               KeybindText.Text = "..."
               local inputwait = game:GetService("UserInputService").InputBegan:wait()
               if inputwait.KeyCode.Name ~= "Unknown" then
                  KeybindText.Text = inputwait.KeyCode.Name
                  Key = inputwait.KeyCode.Name
               end
            end)

            game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
               if not pressed then
                  if current.KeyCode.Name == Key then
                     pcall(callback)
                  end
               end
            end)
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         return ChannelContent
      end

      return ChannelHold
   end
   return ServerHold
end

	if _G.HideUi then
		wait(1)
		game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end

    if not _G.Marine or _G.Pirate then
        spawn(function()
			while wait() do
        	if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
				wait(.5)
				game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
				game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
			    	end     
				end
			end)
        end

	if _G.Marine then
		spawn(function()
			while wait() do
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
					wait(.5)
					game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
					game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
				end
			end
		end)
	end

	if _G.Pirate then 
		spawn(function()
			while wait() do
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
					wait(.5)
					game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
					game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
				end
			end
		end)
	end

	if _G.FPSBoost then
		spawn(function()
			wait(3)
			local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
			local g = game
			local w = g.Workspace
			local l = g.Lighting
			local t = w.Terrain
			t.WaterWaveSize = 0
			t.WaterWaveSpeed = 0
			t.WaterReflectance = 0
			t.WaterTransparency = 0
			l.GlobalShadows = false
			l.FogEnd = 9e9
			l.Brightness = 0
			settings().Rendering.QualityLevel = "Level01"
			for i, v in pairs(g:GetDescendants()) do
				if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
					v.Material = "Plastic"
					v.Reflectance = 0
				elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
					v.Transparency = 1
				elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
					v.Lifetime = NumberRange.new(0)
				elseif v:IsA("Explosion") then
					v.BlastPressure = 1
					v.BlastRadius = 1
				elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
				elseif v:IsA("MeshPart") then
					v.Material = "Plastic"
					v.Reflectance = 0
					v.TextureID = 10385902758728957
				end
			end
			for i, e in pairs(l:GetChildren()) do
				if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
					e.Enabled = false
				end
			end
		end)
	end

	wait(3)
	local win = RadientPaid:Window("")

	local serv = win:Server("OGED Hub V.7.13.enf", "")

	local AutoFram = serv:Channel("Auto Farm")
	local placeId = game.PlaceId
	Magnet = true
	if placeId == 2753915549 then
		OldWorld = true
	elseif placeId == 4442272183 then
		NewWorld = true
	elseif placeId == 7449423635 then
		ThreeWorld = true
	end
	function Click()
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	end
	function CheckQuest()
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		if OldWorld then
			if MyLevel == 1 or MyLevel <= 9 then 
				Ms = "Bandit [Lv. 5]"
				NaemQuest = "BanditQuest1"
				LevelQuest = 1
				NameMon = "Bandit"
				CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
				CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
			elseif MyLevel == 10 or MyLevel <= 14 then 
				Ms = "Monkey [Lv. 14]"
				NaemQuest = "JungleQuest"
				LevelQuest = 1
				NameMon = "Monkey"
				CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameMon = CFrame.new(-1772.4093017578, 60.860641479492, 54.872589111328)
			elseif MyLevel == 15 or MyLevel <= 29 then 
				Ms = "Gorilla [Lv. 20]"
				NaemQuest = "JungleQuest"
				LevelQuest = 2
				NameMon = "Gorilla"
				CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			elseif MyLevel == 30 or MyLevel <= 39 then 
				Ms = "Pirate [Lv. 35]"
				NaemQuest = "BuggyQuest1"
				LevelQuest = 1
				NameMon = "Pirate"
				CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
			elseif MyLevel == 40 or MyLevel <= 59 then 
				Ms = "Brute [Lv. 45]"
				NaemQuest = "BuggyQuest1"
				LevelQuest = 2
				NameMon = "Brute"
				CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
			elseif MyLevel == 60 or MyLevel <= 74 then 
				Ms = "Desert Bandit [Lv. 60]"
				NaemQuest = "DesertQuest"
				LevelQuest = 1
				NameMon = "Desert Bandit"
				CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
				CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
			elseif MyLevel == 75 or MyLevel <= 89 then 
				Ms = "Desert Officer [Lv. 70]"
				NaemQuest = "DesertQuest"
				LevelQuest = 2
				NameMon = "Desert Officer"
				CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
				CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
			elseif MyLevel == 90 or MyLevel <= 99 then 
				Ms = "Snow Bandit [Lv. 90]"
				NaemQuest = "SnowQuest"
				LevelQuest = 1
				NameMon = "Snow Bandits"
				CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
				CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
			elseif MyLevel == 100 or MyLevel <= 119 then 
				Ms = "Snowman [Lv. 100]"
				NaemQuest = "SnowQuest"
				LevelQuest = 2
				NameMon = "Snowman"
				CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
				CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
			elseif MyLevel == 120 or MyLevel <= 149 then 
				Ms = "Chief Petty Officer [Lv. 120]"
				NaemQuest = "MarineQuest2"
				LevelQuest = 1
				NameMon = "Chief Petty Officer"
				CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
				CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
			elseif MyLevel == 150 or MyLevel <= 174 then 
				Ms = "Sky Bandit [Lv. 150]"
				NaemQuest = "SkyQuest"
				LevelQuest = 1
				NameMon = "Sky Bandit"
				CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
				CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
			elseif MyLevel == 175 or MyLevel <= 224 then 
				Ms = "Dark Master [Lv. 175]"
				NaemQuest = "SkyQuest"
				LevelQuest = 2
				NameMon = "Dark Master"
				CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
				CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
			elseif MyLevel == 225 or MyLevel <= 274 then 
				Ms = "Toga Warrior [Lv. 225]"
				NaemQuest = "ColosseumQuest"
				LevelQuest = 1
				NameMon = "Toga Warrior"
				CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
			elseif MyLevel == 275 or MyLevel <= 299 then 
				Ms = "Gladiator [Lv. 275]"
				NaemQuest = "ColosseumQuest"
				LevelQuest = 2
				NameMon = "Gladiato"
				CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
			elseif MyLevel == 300 or MyLevel <= 329 then 
				Ms = "Military Soldier [Lv. 300]"
				NaemQuest = "MagmaQuest"
				LevelQuest = 1
				NameMon = "Military Soldier"
				CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
			elseif MyLevel == 300 or MyLevel <= 374 then 
				Ms = "Military Spy [Lv. 330]"
				NaemQuest = "MagmaQuest"
				LevelQuest = 2
				NameMon = "Military Spy"
				CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
			elseif MyLevel == 375 or MyLevel <= 399 then 
				Ms = "Fishman Warrior [Lv. 375]"
				NaemQuest = "FishmanQuest"
				LevelQuest = 1
				NameMon = "Fishman Warrior"
				CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
				CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
			elseif MyLevel == 400 or MyLevel <= 449 then 
				Ms = "Fishman Commando [Lv. 400]"
				NaemQuest = "FishmanQuest"
				LevelQuest = 2
				NameMon = "Fishman Commando"
				CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
				CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
			elseif MyLevel == 450 or MyLevel <= 474 then 
				Ms = "God's Guard [Lv. 450]"
				NaemQuest = "SkyExp1Quest"
				LevelQuest = 1
				NameMon = "God's Guards"
				CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
			elseif MyLevel == 475 or MyLevel <= 524 then 
				Ms = "Shanda [Lv. 475]"
				NaemQuest = "SkyExp1Quest"
				LevelQuest = 2
				NameMon = "Shandas"
				CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
				CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
			elseif MyLevel == 525 or MyLevel <= 549 then 
				Ms = "Royal Squad [Lv. 525]"
				NaemQuest = "SkyExp2Quest"
				LevelQuest = 1
				NameMon = "Royal Squad"
				CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
				CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
			elseif MyLevel == 550 or MyLevel <= 624 then 
				Ms = "Royal Soldier [Lv. 550]"
				NaemQuest = "SkyExp2Quest"
				LevelQuest = 2
				NameMon = "Royal Soldier"
				CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
				CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
			elseif MyLevel == 625 or MyLevel <= 649 then 
				Ms = "Galley Pirate [Lv. 625]"
				NaemQuest = "FountainQuest"
				LevelQuest = 1
				NameMon = "Galley Pirate"
				CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
				CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
			elseif MyLevel >= 650 then 
				Ms = "Galley Captain [Lv. 650]"
				NaemQuest = "FountainQuest"
				LevelQuest = 2
				NameMon = "Galley Captain"
				CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
				CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
			end
		end
		if NewWorld then
			if MyLevel == 700 or MyLevel <= 724 then 
				Ms = "Raider [Lv. 700]"
				NaemQuest = "Area1Quest"
				LevelQuest = 1
				NameMon = "Raider"
				CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
			elseif MyLevel == 725 or MyLevel <= 774 then 
				Ms = "Mercenary [Lv. 725]"
				NaemQuest = "Area1Quest"
				LevelQuest = 2
				NameMon = "Mercenary"
				CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
			elseif MyLevel == 775 or MyLevel <= 799 then 
				Ms = "Swan Pirate [Lv. 775]"
				NaemQuest = "Area2Quest"
				LevelQuest = 1
				NameMon = "Swan Pirate"
				CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
			elseif MyLevel == 800 or MyLevel <= 874 then 
				Ms = "Factory Staff [Lv. 800]"
				NaemQuest = "Area2Quest"
				LevelQuest = 2
				NameMon = "Factory Staff"
				CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
			elseif MyLevel == 875 or MyLevel <= 899 then 
				Ms = "Marine Lieutenant [Lv. 875]"
				NaemQuest = "MarineQuest3"
				LevelQuest = 1
				NameMon = "Marine Lieutenant"
				CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
			elseif MyLevel == 900 or MyLevel <= 949 then 
				Ms = "Marine Captain [Lv. 900]"
				NaemQuest = "MarineQuest3"
				LevelQuest = 2
				NameMon = "Marine Captain"
				CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
			elseif MyLevel == 950 or MyLevel <= 974 then 
				Ms = "Zombie [Lv. 950]"
				NaemQuest = "ZombieQuest"
				LevelQuest = 1
				NameMon = "Zombie"
				CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
				CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
			elseif MyLevel == 975 or MyLevel <= 999 then 
				Ms = "Vampire [Lv. 975]"
				NaemQuest = "ZombieQuest"
				LevelQuest = 2
				NameMon = "Vampire"
				CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
				CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
			elseif MyLevel == 1000 or MyLevel <= 1049 then 
				Ms = "Snow Trooper [Lv. 1000]"
				NaemQuest = "SnowMountainQuest"
				LevelQuest = 1
				NameMon = "Snow Trooper"
				CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
				CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
			elseif MyLevel == 1050 or MyLevel <= 1099 then 
				Ms = "Winter Warrior [Lv. 1050]"
				NaemQuest = "SnowMountainQuest"
				LevelQuest = 2
				NameMon = "Winter Warrior"
				CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
				CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
			elseif MyLevel == 1100 or MyLevel <= 1124 then 
				Ms = "Lab Subordinate [Lv. 1100]"
				NaemQuest = "IceSideQuest"
				LevelQuest = 1
				NameMon = "Lab Subordinate"
				CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
				CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
			elseif MyLevel == 1125 or MyLevel <= 1174 then 
				Ms = "Horned Warrior [Lv. 1125]"
				NaemQuest = "IceSideQuest"
				LevelQuest = 2
				NameMon = "Horned Warrior"
				CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
				CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
			elseif MyLevel == 1175 or MyLevel <= 1199 then 
				Ms = "Magma Ninja [Lv. 1175]"
				NaemQuest = "FireSideQuest"
				LevelQuest = 1
				NameMon = "Magma Ninja"
				CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
				CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
			elseif MyLevel == 1200 or MyLevel <= 1249 then 
				Ms = "Lava Pirate [Lv. 1200]"
				NaemQuest = "FireSideQuest"
				LevelQuest = 2
				NameMon = "Lava Pirate"
				CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
				CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
			elseif MyLevel == 1250 or MyLevel <= 1274 then 
				Ms = "Ship Deckhand [Lv. 1250]"
				NaemQuest = "ShipQuest1"
				LevelQuest = 1
				NameMon = "Ship Deckhand"
				CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
			elseif MyLevel == 1275 or MyLevel <= 1299 then 
				Ms = "Ship Engineer [Lv. 1275]"
				NaemQuest = "ShipQuest1"
				LevelQuest = 2
				NameMon = "Ship Engineer"
				CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
			elseif MyLevel == 1300 or MyLevel <= 1324 then 
				Ms = "Ship Steward [Lv. 1300]"
				NaemQuest = "ShipQuest2"
				LevelQuest = 1
				NameMon = "Ship Steward"
				CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
			elseif MyLevel == 1325 or MyLevel <= 1349 then 
				Ms = "Ship Officer [Lv. 1325]"
				NaemQuest = "ShipQuest2"
				LevelQuest = 2
				NameMon = "Ship Officer"
				CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
			elseif MyLevel == 1350 or MyLevel <= 1374 then 
				Ms = "Arctic Warrior [Lv. 1350]"
				NaemQuest = "FrostQuest"
				LevelQuest = 1
				NameMon = "Arctic Warrior"
				CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
				CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
			elseif MyLevel == 1375 or MyLevel <= 1424 then 
				Ms = "Snow Lurker [Lv. 1375]"
				NaemQuest = "FrostQuest"
				LevelQuest = 2
				NameMon = "Snow Lurker"
				CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
				CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
			elseif MyLevel == 1425 or MyLevel <= 1449 then 
				Ms = "Sea Soldier [Lv. 1425]"
				NaemQuest = "ForgottenQuest"
				LevelQuest = 1
				NameMon = "Sea Soldier"
				CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
				CFrameMon = CFrame.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
			elseif MyLevel >= 1450 then 
				Ms = "Water Fighter [Lv. 1450]"
				NaemQuest = "ForgottenQuest"
				LevelQuest = 2
				NameMon = "Water Fighter"
				CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
				CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
			end
		end
		if ThreeWorld then
			if MyLevel >= 1500 and MyLevel <= 1524 then
				Ms = "Pirate Millionaire [Lv. 1500]"
				NaemQuest = "PiratePortQuest"
				LevelQuest = 1
				NameMon = "Pirate Millionaire"
				CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
			elseif MyLevel >= 1525 and MyLevel <= 1574 then
				Ms = "Pistol Billionaire [Lv. 1525]"
				NaemQuest = "PiratePortQuest"
				LevelQuest = 2
				NameMon = "Pistol Billionaire"
				CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
			elseif MyLevel >= 1575 and MyLevel <= 1599 then
				Ms = "Dragon Crew Warrior [Lv. 1575]"
				NaemQuest = "AmazonQuest"
				LevelQuest = 1
				NameMon = "Dragon Crew Warrior"
				CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
			elseif MyLevel >= 1600 and MyLevel <= 1624 then
				Ms = "Dragon Crew Archer [Lv. 1600]"
				NaemQuest = "AmazonQuest"
				LevelQuest = 2
				NameMon = "Dragon Crew Archer"
				CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
			elseif MyLevel >= 1625 and MyLevel <= 1649 then
				Ms = "Female Islander [Lv. 1625]"
				NaemQuest = "AmazonQuest2"
				LevelQuest = 1
				NameMon = "Female Islander"
				CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(5825.2241210938, 682.89245605469, 704.57958984375)
			elseif MyLevel >= 1650 and MyLevel <= 1699 then
				Ms = "Giant Islander [Lv. 1650]"
				NaemQuest = "AmazonQuest2"
				LevelQuest = 2
				NameMon = "Giant Islander"
				CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
			elseif MyLevel >= 1700 and MyLevel <= 1724 then
				Ms = "Marine Commodore [Lv. 1700]"
				NaemQuest = "MarineTreeIsland"
				LevelQuest = 1
				NameMon = "Marine Commodore"
				CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
			elseif MyLevel >= 1725 and MyLevel <= 1774 then
				Ms = "Marine Rear Admiral [Lv. 1725]"
				NaemQuest = "MarineTreeIsland"
				LevelQuest = 2
				NameMon = "Marine Rear Admiral"
				CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
			elseif MyLevel >= 1775 and MyLevel <= 1799 then
				Ms = "Fishman Raider [Lv. 1775]"
				NaemQuest = "DeepForestIsland3"
				LevelQuest = 1
				NameMon = "Fishman Raider"
				CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
			elseif MyLevel >= 1800 and MyLevel <= 1824 then
				Ms = "Fishman Captain [Lv. 1800]"
				NaemQuest = "DeepForestIsland3"
				LevelQuest = 2
				NameMon = "Fishman Captain"
				CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
			elseif MyLevel >= 1825 and MyLevel <= 1849 then
				Ms = "Forest Pirate [Lv. 1825]"
				NaemQuest = "DeepForestIsland"
				LevelQuest = 1
				NameMon = "Forest Pirate"
				CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
			elseif MyLevel >= 1850 and MyLevel <= 1899 then
				Ms = "Mythological Pirate [Lv. 1850]"
				NaemQuest = "DeepForestIsland"
				LevelQuest = 2
				NameMon = "Mythological Pirate"
				CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
			elseif MyLevel >= 1900 and MyLevel <= 1924 then
				Ms = "Jungle Pirate [Lv. 1900]"
				NaemQuest = "DeepForestIsland2"
				LevelQuest = 1
				NameMon = "Jungle Pirate"
				CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
			elseif MyLevel >= 1925 then
				Ms = "Musketeer Pirate [Lv. 1925]"
				NaemQuest = "DeepForestIsland2"
				LevelQuest = 2
				NameMon = "Musketeer Pirate"
				CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
			end
		end
	end
	CheckQuest()
	function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end

	AutoFram:Label("Auto Farm")
	AutoFram:Toggle("Auto Farm",_G.AutoFarm,function(vu)
		_G.AutoFarm = vu
		_G.Main = vu 
		_G.FastFarm = vu
	end)
	
	AutoFram:Toggle("On/Off Auto Farm",_G.AutoFarmOnOff,function(vu)
		_G.AutoFarmOnOff = vu
		while _G.AutoFarmOnOff do wait()
		    if _G.AutoFarm == true then
		        while wait() do
		        _G.AutoFarm = true
		        wait(120)
		        _G.AutoFarm = false
		        wait(10)
		        end
		    end
	    end
	end)
    
	spawn(function()
		while wait() do
			if _G.AutoFarm then
				autofarm()
			end
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if _G.AutoFarm or _G.Observation or _G.AutoNew or _G.Factory or _G.GunMastery or _G.Mastery or FramBoss or FramAllBoss or _G.AutoBartilo or _G.MobAura or _G.AutoRengoku or _G.AutoSharkman or _G.Ectoplasm or _G.PoleHop or _G.SwanHop or _G.BlackBeardHop or _G.Chest or _G.Electro or rainbowhaki or Hunter or observationv2 or _G.ElitehuntHop or _G.elitehunt or _G.Pole or _G.Tushitahop or _G.YamaHop then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end
	)
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local VirtualUser = game:GetService('VirtualUser')
	function autofarm()
		if _G.AutoFarm then
			if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StatrMagnet = false
				CheckQuest()
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
				wait(1.1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				CheckQuest()
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
				if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
					pcall(function()
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							CheckQuest()  
							if v.Name == Ms then
								repeat wait()
									EquipWeapon(_G.SelectWeapon)
									if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
										if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											if NewWorld or OldWorld then
												game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
											else
												game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(9, 1, 10)
											end
											v.HumanoidRootPart.Transparency = 1
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											if Magnet then 
												if setsimulationradius then 
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												end
												PosMon = v.HumanoidRootPart.CFrame
												StatrMagnet = true
											end
											v.HumanoidRootPart.CanCollide = false
										else
											StatrMagnet = false
											CheckQuest()
											LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
											wait(1.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
										end  
									else
										CheckQuest() 
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									end 
								until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
								StatrMagnet = false
								CheckQuest() 
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end
						end
					end
					)
				else
					CheckQuest()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
				end 
			end
		end
	end
	---------------------------------
			local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
	local VirtualUser = game:GetService('VirtualUser')
				kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastFarm then
							pcall(function()
								pcall(function ()
										kkii:Stop()
								end)  
							end)
						end
					end)
				end)
				---------------------------------
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastFarm then
							pcall(function()
								pcall(function ()
										RigC.activeController.timeToNextAttack = 0
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastFarm then
							pcall(function()
								pcall(function ()
										RigC.activeController.hitboxMagnitude = 25
									wait(.05)
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastFarm then
							pcall(function()
								pcall(function ()
										
										RigC.activeController.increment = 3
								end)
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastFarm then
							pcall(function()
								pcall(function ()
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									wait(.05)
								end)
							end)
						end
					end)
				end)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastFarm then
							pcall(function()
								pcall(function ()
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									wait(.05)
								end)
							end)
						end
					end)
				end)

	-- Auto New World
	if OldWorld then
		AutoFram:Toggle("Auto New World",_G.AutoNew,function(vu)
			_G.AutoNew = vu
			while _G.AutoNew do wait()
				while wait(.1) do
					local MyLevel = game.Players.localPlayer.Data.Level.Value
					if MyLevel >= 700 and OldWorld and _G.AutoNew then
						_G.AutoFarm = false
						if Workspace.Map.Ice.Door.Transparency == 1 then
							_G.SelectWeapon = "Key"
							if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
								CheckBoss = true
								_G.SelectWeapon = _G.SelectToolWeaponOld
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
										repeat wait(.1)
											pcall(function() 
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
												EquipWeapon(_G.SelectWeapon)
												game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												v.HumanoidRootPart.Transparency = 1
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
												v.HumanoidRootPart.BrickColor = BrickColor.new("White")
												v.HumanoidRootPart.CanCollide = false
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
												click()
											end)
										until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0 or _G.AutoNew == false
									end
								end
								CheckBoss = false
								wait(0.5)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1166.23743, 7.65220165, 1728.36487)
								wait(0.5)
								local args = {
									[1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
									local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
									wait(.4)
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
							end 
						else
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4849.29883, 5.65138149, 719.611877)
							wait(0.5)
							local args = {
								[1] = "DressrosaQuestProgress",
								[2] = "Detective"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.5)
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
								wait(.4)
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
							wait(0.5)
						end
					end
				end 
			end
		end)
	end

	if NewWorld then
		AutoFram:Toggle("Auto Sea 3",false,function(value)
			local args = {
				[1] = "AbandonQuest"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			Sea3 = value
			Sea33 = value
			Check = true
			Checka = true
		end)
	end

	spawn(function()
		while wait() do
			pcall(function()
				if Sea3 and Checka then
					if NewWorld then
						local MyLevel = game.Players.localPlayer.Data.Level.Value
						if MyLevel >= 1500 then
							Sea33 = false
							if Check then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1925.56482, 12.8456564, 1737.36609, -0.907600939, 4.40363017e-08, 0.419833988, 8.10547576e-08, 1, 7.03351191e-08, -0.419833988, 9.78657653e-08, -0.907600939)
							end
							Check = false
							wait(0.5)
							local args = {
								[1] = "ZQuestProgress",
								[2] = "Check"
							}

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							local args = {
								[1] = "ZQuestProgress",
								[2] = "Begin"
							}

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							Checka = false
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if Sea3 and Checka == false then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "rip_indra [Lv. 1500] [Boss]" then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "rip_indra [Lv. 1500] [Boss]" then
									repeat wait()
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
										game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
										EquipWeapon(_G.SelectWeapon)
										Click()
										spawn(function()
											wait(1)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
										end)
									until v.Humanoid.Health <= 0 or Sea3 == false
								end
							end
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26640.7559, 6.94934607, 439.43512, 0.238983288, -7.68030262e-09, 0.971023679, 5.52298918e-09, 1, 6.55020127e-09, -0.971023679, 3.79756449e-09, 0.238983288)
						end
					end
				end
			end)
		end
	end)

	if NewWorld then
		AutoFram:Toggle("Auto Factory",_G.Factory,function(vu)
			_G.Factory = vu
			while _G.Factory do wait()
				if game.Workspace.Enemies:FindFirstChild("Core") then
					_G.Core = true
					_G.AutoFarm = false
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Core and v.Name == "Core" and v.Humanoid.Health > 0 then
							repeat wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
								EquipWeapon(_G.SelectWeapon)
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Core or v.Humanoid.Health <= 0  or _G.Factory == false
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild("Core") then
					_G.Core = true
					_G.AutoFarm = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
				elseif _G.Main then
					_G.Core = false
					_G.AutoFarm = true
				end
			end
		end)
	end

	function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end

if OldWorld then
AutoFram:Toggle("Auto Saber",false,function(Value)
		_G.AutoSaber = Value
end)
end

spawn(function()
	while wait(.1) do
		if _G.AutoSaber then
			local off = game:GetService("Workspace").Map.Jungle.Final:FindFirstChild("Part")
			local MyLevel = game.Players.localPlayer.Data.Level.Value
			if MyLevel >= 200 and _G.AutoFarm == true then
				repeat wait(.1)
					_G.AutoFarm = false
					function accept1()
						local string_1 = "ProQuestProgress";
						local string2 = "SickMan";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string_2);
					end

					function accept2()
						local string_1 = "ProQuestProgress";
						local string2 = "RichSon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string2);
					end
					function saber()
						if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Mob Leader [Lv. 120] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until v.Humanoid.Health == 0
								end
							end
						end

						function accept3()
							local string_1 = "ProQuestProgress";
							local string2 = "RichSon";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string_2);
						end

						wait(.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1421.87024, 55.4666862, 21.7750397)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1647.19556, 29.1544189, 438.299408)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1324.10144, 31.4560413, -461.404114)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1152.38464, 9.74718285, -700.309875)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587)
						wait(2)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Torch")
						wait(.4)
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						wait(.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.55762, 4.9214654, 4349.2334, -0.618430376, -1.56903435e-09, 0.785839617, -5.04992048e-09, 1, -1.97748973e-09, -0.785839617, -5.19136734e-09, -0.618430376)
						wait(5.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.26721, 4.16943789, 4366.15332)
						wait(1)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Cup")
						wait(.4)
						EquipWeapon("Cup")
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.0614, 37.3480072, -1321.03955, -0.0699888021, -5.05999473e-08, 0.997547925, -7.48410045e-08, 1, 4.54734241e-08, -0.997547925, -7.14748296e-08, -0.0699888021)
						wait(4.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1457.87976, 88.2521744, -1390.39575)
						wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
						wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2852.90234, 7.56227827, 5367.72412)
						wait(1.5)
						EquipWeapon(_G.SelectWeapon)
						wait(1)
						saber()
						wait(2)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
						wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
						wait(1)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Relic")
						wait(.4)
						EquipWeapon("Relic")
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.84094, 29.8519993, 5.05432224, 0.859020233, -4.18967083e-08, 0.511941671, 4.07572731e-09, 1, 7.49999103e-08, -0.511941671, -6.23399004e-08, 0.859020233)
						wait(1)
						if off.CanCollide == false then
							_G.AutoSaber = false
							_G.AutoFarm = true
						end
					end
				until _G.AutoSaber == false or off.CanCollide == false or _G.AutoFarm == true

			elseif MyLevel >= 200 then
				repeat wait(.1)
					function accept1()
						local string_1 = "ProQuestProgress";
						local string2 = "SickMan";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string_2);
					end

					function accept2()
						local string_1 = "ProQuestProgress";
						local string2 = "RichSon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string2);
					end
					function saber()
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Mob Leader [Lv. 120] [Boss]" then
								repeat wait()
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Mob Leader [Lv. 120] [Boss]" then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
											end
											_G.FastBoss = true
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
										end
									end
								until v.Humanoid.Health == 0
								_G.FastBoss = false
							end
						end
					end

					function accept3()
						local string_1 = "ProQuestProgress";
						local string2 = "RichSon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string_2);
					end

					wait(.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1421.87024, 55.4666862, 21.7750397)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1647.19556, 29.1544189, 438.299408)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1324.10144, 31.4560413, -461.404114)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1152.38464, 9.74718285, -700.309875)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587)
					wait(2)
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Torch")
					wait(.4)
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
					wait(.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.55762, 4.9214654, 4349.2334, -0.618430376, -1.56903435e-09, 0.785839617, -5.04992048e-09, 1, -1.97748973e-09, -0.785839617, -5.19136734e-09, -0.618430376)
					wait(5.5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.26721, 4.16943789, 4366.15332)
					wait(1)
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Cup")
					wait(.4)
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.0614, 37.3480072, -1321.03955, -0.0699888021, -5.05999473e-08, 0.997547925, -7.48410045e-08, 1, 4.54734241e-08, -0.997547925, -7.14748296e-08, -0.0699888021)
					wait(4.5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1457.87976, 88.2521744, -1390.39575)
					wait(1.5)
					accept1()
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
					wait(1.1)
					accept2()
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2852.90234, 7.56227827, 5367.72412)
					wait(1.5)
					EquipWeapon(_G.SelectWeapon)
					wait(1)
					saber()
					wait(2)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
					wait(1.1)
					accept3()
					wait(1)
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Relic")
					wait(.4)
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.84094, 29.8519993, 5.05432224, 0.859020233, -4.18967083e-08, 0.511941671, 4.07572731e-09, 1, 7.49999103e-08, -0.511941671, -6.23399004e-08, 0.859020233)
					wait(1)
					if off.CanCollide == false then
						_G.AutoSaber = false
					end
				until G.AutoOpenSaber == false or off.CanCollide == false
				if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Saber Expert [Lv. 200] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								pcall(function()
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 15, 10)
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								end)
							until _G.AutoSaber == true or v.Humanoid.Health <= 0
						end
					end
				end
			end
		end
	end
end)

	AutoFram:Toggle("Auto Superhuman",_G.Superhuman,function(vu)
		_G.Superhuman = vu
	end)
	spawn(function()
		while wait() do wait()
			if _G.Superhuman then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
						_G.SelectWeapon = "Black Leg"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
						_G.SelectWeapon = "Electro"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
						_G.SelectWeapon = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
						_G.SelectWeapon = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
						local args = {
							[1] = "BuyElectro"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
						local args = {
							[1] = "BuyElectro"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "1"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "1"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end 
				end
			end
		end
	end)

	AutoFram:Toggle("Auto Death Step",_G.DeathStep,function(vu)
		_G.DeathStep = vu
	end)
	spawn(function()
		while wait() do wait()
			if _G.DeathStep then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
						local args = {
							[1] = "BuyDeathStep"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						_G.SelectWeapon = "Death Step"
					end  
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
						local args = {
							[1] = "BuyDeathStep"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						_G.SelectWeapon = "Death Step"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
						_G.SelectWeapon = "Black Leg"
					end 
				else 
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)

	AutoFram:Toggle("Auto Electro Claw",_G.Electro,function(vu)
		_G.Electro = vu
	end)
	spawn(function()
		while wait() do wait()
			if _G.Electro then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
						local args = {
							[1] = "BuyElectricClaw"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						_G.SelectWeapon = "Electric Claw"
					end  
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
						local args = {
							[1] = "BuyElectricClaw"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						_G.SelectWeapon = "Electric Claw"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
						_G.SelectWeapon = "Electro"
					end 
				else 
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Electro then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
						if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) then
							if _G.AutoFarm == false then
								wait(1.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
								local args = {
									[1] = "BuyElectricClaw",
									[2] = "Start"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								wait(2)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
								local args = {
									[1] = "BuyElectricClaw"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.AutoFarm == true then
								_G.AutoFarm = false
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
								local args = {
									[1] = "BuyElectricClaw",
									[2] = "Start"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								wait(2)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
								local args = {
									[1] = "BuyElectricClaw"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								_G.SelectWeapon = "Electric Claw"
								wait(.1)
								_G.AutoFarm = true
							end
						end
					end
				end
			end)
		end
	end)
	if ThreeWorld then
		AutoFram:Toggle("Auto Elite Hunter",_G.elitehunt,function (t)
			_G.elitehunt = t
		end)
		spawn(function()
			while wait() do
				if  _G.elitehunt then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.elitehunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Deandre [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.elitehunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Urban [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.elitehunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
								end)
							end
						end
					end
				end
			end
		end)
	end
	if ThreeWorld then
		AutoFram:Toggle("Auto Elite Hunter+Hop",_G.ElitehuntHop,function (t)
			_G.ElitehuntHop = t
		end)

		spawn(function()
			while wait() do
				if  _G.ElitehuntHop then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Deandre [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Urban [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
								end)
							end
						end
					end
				end
			end
		end)
	end

	spawn(function()
		while wait() do
			if _G.ElitehuntHop then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					else
						wait(12)
						if not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
							local PlaceID = game.PlaceId
							local AllIDs = {}
							local foundAnything = ""
							local actualHour = os.date("!*t").hour
							local Deleted = false
							function TPReturner()
								local Site;
								if foundAnything == "" then
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
								else
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
								end
								local ID = ""
								if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
									foundAnything = Site.nextPageCursor
								end
								local num = 0;
								for i,v in pairs(Site.data) do
									local Possible = true
									ID = tostring(v.id)
									if tonumber(v.maxPlayers) > tonumber(v.playing) then
										for _,Existing in pairs(AllIDs) do
											if num ~= 0 then
												if ID == tostring(Existing) then
													Possible = false
												end
											else
												if tonumber(actualHour) ~= tonumber(Existing) then
													local delFile = pcall(function()
														-- delfile("NotSameServers.json")
														AllIDs = {}
														table.insert(AllIDs, actualHour)
													end)
												end
											end
											num = num + 1
										end
										if Possible == true then
											table.insert(AllIDs, ID)
											wait()
											pcall(function()
												-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
												wait()
												game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
											end)
											wait(4)
										end
									end
								end
							end
							function Teleport() 
								while wait() do
									pcall(function()
										TPReturner()
										if foundAnything ~= "" then
											TPReturner()
										end
									end)
								end
							end
							Teleport()
						end
					end
				end) 
			end
		end
	end)
	if ThreeWorld then
		AutoFram:Toggle("Auto RainbowHaki",false,function(t)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			rainbowhaki = t
		end)
		spawn(function()
			while wait() do
				if rainbowhaki then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11891.202148438, 930.57678222656, -8760.0498046875)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Stone (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Stone [Lv. 1550] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,17,0)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1109.6944580078, 40.006885528564, 6730.9833984375)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Island Empress (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Island Empress [Lv. 1675] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,17,0)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5702.2724609375, 601.94860839844, 201.07873535156)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Kilo Admiral (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,17,0)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2861.53515625, 423.58441162109, -7254.0751953125)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,17,0)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Beautiful Pirate (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,17,0)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5378.6337890625, 22.56223487854, -26.053804397583)
							end
						end
					end
				end
			end
		end)
	end
	if ThreeWorld then
		AutoFram:Toggle("Auto Observation Haki V2",false,function (t)
			observationv2 = t
		end)
		spawn(function()
			while wait() do
				if observationv2 then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
						wait(1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
					else
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Forest Pirate [Lv. 1825]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,17,0)
											PosMonKato =  v.HumanoidRootPart.CFrame
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											bringobf = true
										until observationv2 == false or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
										bringobf = false
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until observationv2 == false or v.Humanoid.Health <= 0
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12512.987304688, 335.96475219727, -9872.61328125)
									end
								end
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)
							end        
						end
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10920.125, 624.20275878906, -10266.995117188)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
						wait(1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
					else
						for i,v in pairs(game.Workspace:GetDescendants()) do
							if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
								v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
							end
						end   
					end
				end
			end
		end)
	end

	spawn(function()
		while wait() do
			if observationv2 then
				bring2()
			end
		end
	end)
	
	if ThreeWorld then
	    AutoFram:Toggle("Auto Yama + Hop",_G.YamaHop,function(t)
			_G.YamaHop = t
		end)
	end
		
		spawn(function()
			while wait() do
				pcall(function()
					if _G.YamaHop then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
							fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
						else
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)
								wait(.9)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
							else
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
									if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Diablo [Lv. 1750]" then
												repeat wait()
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
													EquipWeapon(_G.SelectWeapon)
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1,10,1)
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(11)
                                                    _G.FastBoss = true
												until _G.YamaHop == false or v.Humanoid.Health <= 0
												_G.FastBoss = false
											end
										end
									else
										spawn(function()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
										end)
									end
								elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
									if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Deandre [Lv. 1750]" then
												repeat wait()
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
													EquipWeapon(_G.SelectWeapon)
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1,10,1)
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(11)
                                                    _G.FastBoss = true
												until _G.YamaHop == false or v.Humanoid.Health <= 0
												_G.FastBoss = false
											end
										end
									else
										spawn(function()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
										end)
									end
								elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
									if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Urban [Lv. 1750]" then
												repeat wait()
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
													EquipWeapon(_G.SelectWeapon)
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1,10,1)
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(11)
                                                    _G.FastBoss = true
												until _G.YamaHop == false or v.Humanoid.Health <= 0
												_G.FastBoss = false
											end
										end
									else
										spawn(function()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15)
										end)
									end
								end
							end
						end
					end
				end)
			end
		end)
		
    spawn(function()
		while wait() do
			if _G.YamaHop then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					else
						wait(12)
						if not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
							local PlaceID = game.PlaceId
							local AllIDs = {}
							local foundAnything = ""
							local actualHour = os.date("!*t").hour
							local Deleted = false
							function TPReturner()
								local Site;
								if foundAnything == "" then
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
								else
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
								end
								local ID = ""
								if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
									foundAnything = Site.nextPageCursor
								end
								local num = 0;
								for i,v in pairs(Site.data) do
									local Possible = true
									ID = tostring(v.id)
									if tonumber(v.maxPlayers) > tonumber(v.playing) then
										for _,Existing in pairs(AllIDs) do
											if num ~= 0 then
												if ID == tostring(Existing) then
													Possible = false
												end
											else
												if tonumber(actualHour) ~= tonumber(Existing) then
													local delFile = pcall(function()
														-- delfile("NotSameServers.json")
														AllIDs = {}
														table.insert(AllIDs, actualHour)
													end)
												end
											end
											num = num + 1
										end
										if Possible == true then
											table.insert(AllIDs, ID)
											wait()
											pcall(function()
												-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
												wait()
												game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
											end)
											wait(4)
										end
									end
								end
							end
							function Teleport() 
								while wait() do
									pcall(function()
										TPReturner()
										if foundAnything ~= "" then
											TPReturner()
										end
									end)
								end
							end
							Teleport()
						end
					end
				end) 
			end
		end
	end)
	
	if ThreeWorld then
	    AutoFram:Toggle("Auto Tushita + Hop",_G.Tushitahop,function(t)
			_G.Tushitahop = t
		end)
	end
	
			spawn(function()
			while wait(.1) do
				if _G.Tushitahop then
					autoTushita()
				end
			end
		end)


		function enemyrip()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-5332.30371, 423.985413, -2673.48218, -0.159668028, -7.7867071e-08, 0.987170756, 5.10040117e-08, 1, 8.71285692e-08, -0.987170756, 6.42613145e-08, -0.159668028)
			wait()
			if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				local mobs = game.Workspace.Enemies:GetChildren()
				for i,v in pairs(mobs) do
					if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
						v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						return v
					end
				end
			end
			return game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
		end
		function enemyEliteBoss()
			if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") then
				local mobs = game.Workspace.Enemies:GetChildren()
				for i,v in pairs(mobs) do
					if v.Name == "Deandre [Lv. 1750]" or v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]"  and v:IsA("Model") and v:FindFirstChild("Humanoid") and
						v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						return v
					end
				end
			end
			return game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")
		end

		function enemylongma()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-10171.7051, 406.981995, -9552.31738, -0.430750817, 9.61385105e-09, -0.902470887, 1.09018416e-07, 1, -4.13818562e-08, 0.902470887, -1.16211211e-07, -0.430750817)
			if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
				local mobs = game.Workspace.Enemies:GetChildren()
				for i,v in pairs(mobs) do
					if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
						v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						return v
					end
				end
			end
			return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
		end

		_G.checkup = true
		function autoTushita()
			if _G.checkup and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
				if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						_G.FastBoss = false
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-5420.49219, 314.446045, -2823.07373, -0.370539844, 6.66716105e-08, -0.928816557, 8.17477854e-08, 1, 3.91689809e-08, 0.928816557, -6.14150295e-08, -0.370539844)
						wait(1)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5420.49219, 314.446045, -2823.07373, -0.370539844, 6.66716105e-08, -0.928816557, 8.17477854e-08, 1, 3.91689809e-08, 0.928816557, -6.14150295e-08, -0.370539844)
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						wait(1)
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						CheckQuest()
						pcall(function()
							EquipWeapon(_G.SelectWeapon)
							pcall(function()
								local v = enemyEliteBoss()
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1,10,1)
								_G.FastBoss = true
							end)
						end)
					end
				elseif _G.ServerHop then
				_G.FastBoss = false
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
					wait(1)
					Hopey()
				end
			elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
				_G.checkup = false
				_G.FastBoss = false
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
				wait(0.5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864)
				wait(0.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
				wait(0.5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106)
				wait(0.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
				wait(0.5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065)
				wait(0.5)
				EquipWeapon("God's Chalice")
				wait(0.5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-5560.27295, 313.915466, -2663.89795, -0.438523829, 2.38801645e-09, 0.898719549, -5.84364612e-10, 1, -2.94226843e-09, -0.898719549, -1.81543469e-09, -0.438523829)
				wait(0.5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-5561.37451, 313.342529, -2663.49487, -0.308039904, -2.99654097e-08, 0.951373458, -2.03540047e-08, 1, 2.49066918e-08, -0.951373458, -1.16920047e-08, -0.308039904)
				wait(1)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(5154.17676, 141.786423, 911.046326, 0.0786230937, 1.10107962e-07, 0.996904433, 8.76694628e-09, 1, -1.11141297e-07, -0.996904433, 1.74780794e-08, 0.0786230937)
				wait(0.2)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(5148.03613, 162.352493, 910.548218, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				wait(1)
				EquipWeapon("Holy Torch")
				wait(1)
				wait(0.4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10752.7695, 412.229523, -9366.36328, 0.97063309, -3.15659037e-08, 0.240564749, 5.60982159e-08, 1, -9.51298205e-08, -0.240564749, 1.05831404e-07, 0.97063309)
				wait(0.4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11673.4111, 331.749023, -9474.34668, 0.200540408, 6.91700279e-08, -0.979685426, -2.19707559e-08, 1, 6.6106935e-08, 0.979685426, 8.2673175e-09, 0.200540408)
				wait(0.4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12133.3389, 519.47522, -10653.1904, 0.845298052, -6.34159107e-08, -0.534295022, 4.46860327e-08, 1, -4.79938898e-08, 0.534295022, 1.66936172e-08, 0.845298052)
				wait(0.4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13336.5, 485.280396, -6983.35254, 0.912677109, -1.29153763e-08, -0.408681422, 2.20926388e-08, 1, 1.77352568e-08, 0.408681422, -2.52154138e-08, 0.912677109)
				wait(0.4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13487.4131, 334.84845, -7926.34863, -0.999999702, -6.9906867e-09, -0.000721037388, -6.9868662e-09, 1, -5.30099697e-09, 0.000721037388, -5.29595745e-09, -0.999999702)
				wait(1)
			elseif game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
				pcall(function()
					EquipWeapon(_G.SelectWeapon)
					pcall(function()
						local v = enemylongma()
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1,10,1)
						_G.FastBoss = true
					end)
				end)
			elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				pcall(function()
					EquipWeapon(_G.SelectWeapon)
					pcall(function()
						local v = enemyrip()
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1,10,1)
						_G.FastBoss = true
					end)
				end)
			elseif _G.ServerHop then
				_G.FastBoss = false
				game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
				wait(1)
				Hopey()  
			end
		end

	if ThreeWorld then
		AutoFram:Toggle("Auto Beautiful Pirate",_G.Cave,function(vu)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5310.80957, 22.5622349, 129.390533, 1, -2.47274325e-08, 1.41872977e-13, 2.47274325e-08, 1, -4.55364528e-08, -1.40746979e-13, 4.55364528e-08, 1)
			_G.Cave = vu
		end)
		spawn(function()
			while wait() do
				if _G.Cave then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end)
								until _G.Cave == false or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end)
	end

	if ThreeWorld then
		AutoFram:Toggle("Player Hunter",false,function (t)
			Hunter = t
		end)
		spawn(function()
			while wait() do
				if Hunter then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5560.00390625, 313.74130249023, -2838.4792480469)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
					else
						for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
								repeat wait()
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeapon)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until Hunter == false or v.Humanoid.Health <= 0
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
						end
					end
				end
			end
		end)
	end
	
	if ThreeWorld then
	    AutoFram:Toggle("Auto Torch",false,function(vu)
	        _G.HolyTorch = vu
        end)
            spawn(function()
            	while wait() do
            		if _G.HolyTorch then
            			wait(1)
            			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10752, 417, -9366)
            			wait(1)
            			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11672, 334, -9474)
            			wait(1)
            			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12132, 521, -10655)
            			wait(1)
            			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13336, 486, -6985)
            			wait(1)
            			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13489, 332, -7925)
            		end
            	end
            end)
	    end

	if OldWorld then
		function pole()
			PUK = CFrame.new(-7911.14453, 5613.89795, -2272.67822, -0.585544586, -6.38371889e-09, 0.810640216, -2.4883267e-08, 1, -1.00988613e-08, -0.810640216, -2.60847095e-08, -0.585544586)
		end
		function hitbox()
			for i,v in pairs (game:GetService("Workspace").Enemies:GetChildren()) do
				if v.Name == "Thunder God [Lv. 575] [Boss]" then
					v.HumanoidRootPart.Size = Vector3.new(40,40,40)
					v.HumanoidRootPart.Transparency = 1
				else
					pole()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PUK
				end
			end
		end
		function atc()
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local args = {
					[1] = "Buso"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
		AutoFram:Toggle("Auto Pole",_G.Pole,function(vu)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7911.14453, 5613.89795, -2272.67822, -0.585544586, -6.38371889e-09, 0.810640216, -2.4883267e-08, 1, -1.00988613e-08, -0.810640216, -2.60847095e-08, -0.585544586)
			_G.Pole = vu
		end)
		spawn(function()
			while wait() do
				if _G.Pole then
					if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Thunder God [Lv. 575] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.Humanoid:ChangeState(11)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end)
								until _G.Pole == false or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end)

		spawn(function()
			while wait() do
				if _G.Pole then
					EquipWeapon(_G.SelectWeapon)
				end
			end
		end)

		AutoFram:Toggle("Auto Pole+Hop",_G.PoleHop,function(eiei)
			wait(1)
			_G.PoleHop = eiei
		end)
		spawn(function()
			while wait() do
				if _G.PoleHop then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Thunder God [Lv. 575] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until _G.PoleHop == false or v.Humanoid.Health <= 0
								end
							end
						else
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7747.6977539063, 5606.9404296875, -2420.6140136719)
							wait(1)
							if not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
								local PlaceID = game.PlaceId
								local AllIDs = {}
								local foundAnything = ""
								local actualHour = os.date("!*t").hour
								local Deleted = false
								function TPReturner()
									local Site;
									if foundAnything == "" then
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
									else
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
									end
									local ID = ""
									if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
										foundAnything = Site.nextPageCursor
									end
									local num = 0;
									for i,v in pairs(Site.data) do
										local Possible = true
										ID = tostring(v.id)
										if tonumber(v.maxPlayers) > tonumber(v.playing) then
											for _,Existing in pairs(AllIDs) do
												if num ~= 0 then
													if ID == tostring(Existing) then
														Possible = false
													end
												else
													if tonumber(actualHour) ~= tonumber(Existing) then
														local delFile = pcall(function()
															-- delfile("NotSameServers.json")
															AllIDs = {}
															table.insert(AllIDs, actualHour)
														end)
													end
												end
												num = num + 1
											end
											if Possible == true then
												table.insert(AllIDs, ID)
												wait()
												pcall(function()
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
													wait()
													game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
												end)
												wait(4)
											end
										end
									end
								end
								function Teleport() 
									while wait() do
										pcall(function()
											TPReturner()
											if foundAnything ~= "" then
												TPReturner()
											end
										end)
									end
								end
								Teleport()
							end
						end
					end) 
				end
			end
		end)
	end

	if NewWorld then
		function swan()
			PUKPING = CFrame.new(2302.19019, 15.1778421, 663.811035)
		end
		function eiei()
			for i,v in pairs (game:GetService("Workspace").Enemies:GetChildren()) do
				if v.Name == "Don Swan [Lv. 1000] [Boss]" then
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
				else
					swan()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PUKPING
				end
			end
		end
		function atc()
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local args = {
					[1] = "Buso"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
		AutoFram:Toggle("Auto SwanGlasses",_G.SwanGlasses,function(vu)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875)
			_G.SwanGlasses = vu
		end)
		spawn(function()
			while wait() do
				if _G.SwanGlasses then
					if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end)
								until _G.SwanGlasses == false or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end)

		spawn(function()
			while wait() do
				if _G.SwanGlasses then
					EquipWeapon(_G.SelectWeapon)
				end
			end
		end)
	end

	if NewWorld then
		AutoFram:Toggle("Auto Swan+Hop",_G.SwanHop,function(eiei)
			_G.SwanHop = eiei
		end)
		spawn(function()
			while wait() do
				if _G.SwanHop then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until _G.SwanHop == false or v.Humanoid.Health <= 0
								end
							end
						else
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875)
							wait(1)
							if not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
								local PlaceID = game.PlaceId
								local AllIDs = {}
								local foundAnything = ""
								local actualHour = os.date("!*t").hour
								local Deleted = false
								function TPReturner()
									local Site;
									if foundAnything == "" then
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
									else
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
									end
									local ID = ""
									if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
										foundAnything = Site.nextPageCursor
									end
									local num = 0;
									for i,v in pairs(Site.data) do
										local Possible = true
										ID = tostring(v.id)
										if tonumber(v.maxPlayers) > tonumber(v.playing) then
											for _,Existing in pairs(AllIDs) do
												if num ~= 0 then
													if ID == tostring(Existing) then
														Possible = false
													end
												else
													if tonumber(actualHour) ~= tonumber(Existing) then
														local delFile = pcall(function()
															-- delfile("NotSameServers.json")
															AllIDs = {}
															table.insert(AllIDs, actualHour)
														end)
													end
												end
												num = num + 1
											end
											if Possible == true then
												table.insert(AllIDs, ID)
												wait()
												pcall(function()
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
													wait()
													game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
												end)
												wait(4)
											end
										end
									end
								end
								function Teleport() 
									while wait() do
										pcall(function()
											TPReturner()
											if foundAnything ~= "" then
												TPReturner()
											end
										end)
									end
								end
								Teleport()
							end
						end
					end) 
				end
			end
		end)
	end

	if NewWorld then
		AutoFram:Toggle("Auto Dark Coat+Hop",_G.BlackBeardHop,function(eiei)
			_G.BlackBeardHop = eiei
		end)
		spawn(function()
			while wait() do
				if _G.BlackBeardHop then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 20, 0)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until _G.BlackBeardHop == false or v.Humanoid.Health <= 0
								end
							end
						else
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625)
							wait(1)
							if not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
								local PlaceID = game.PlaceId
								local AllIDs = {}
								local foundAnything = ""
								local actualHour = os.date("!*t").hour
								local Deleted = false
								function TPReturner()
									local Site;
									if foundAnything == "" then
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
									else
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
									end
									local ID = ""
									if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
										foundAnything = Site.nextPageCursor
									end
									local num = 0;
									for i,v in pairs(Site.data) do
										local Possible = true
										ID = tostring(v.id)
										if tonumber(v.maxPlayers) > tonumber(v.playing) then
											for _,Existing in pairs(AllIDs) do
												if num ~= 0 then
													if ID == tostring(Existing) then
														Possible = false
													end
												else
													if tonumber(actualHour) ~= tonumber(Existing) then
														local delFile = pcall(function()
															-- delfile("NotSameServers.json")
															AllIDs = {}
															table.insert(AllIDs, actualHour)
														end)
													end
												end
												num = num + 1
											end
											if Possible == true then
												table.insert(AllIDs, ID)
												wait()
												pcall(function()
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
													wait()
													game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
												end)
												wait(4)
											end
										end
									end
								end
								function Teleport() 
									while wait() do
										pcall(function()
											TPReturner()
											if foundAnything ~= "" then
												TPReturner()
											end
										end)
									end
								end
								Teleport()
							end
						end
					end) 
				end
			end
		end)
	end


	if NewWorld then
		AutoFram:Toggle("Auto Buy Buso Color",_G.BuyEn,function(Value)
			_G.BuyEn = Value 
		end)   
		spawn(function()
			while _G.BuyEn do wait()
				if _G.BuyEn then
					local args = {
						[1] = "ColorsDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	if NewWorld then
		AutoFram:Toggle("Auto Buy Haki+Hop",_G.HakiColorHop,function(Value)
			_G.HakiColorHop = Value
		end)
		spawn(function()
			while _G.HakiColorHop do wait()
				if _G.HakiColorHop then
					local args = {
						[1] = "ColorsDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	if NewWorld then
		AutoFram:Toggle("Auto Buy Legendary Sword",_G.BuySword,function(Value)
			_G.BuySword = Value
		end)
		spawn(function()
			while _G.BuySword do wait()
				if _G.BuySword then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	if NewWorld then
		AutoFram:Toggle("Auto Buy Legendary Sword+Hop",_G.AutoBuySwordHop,function(Value)
			_G.AutoBuySwordHop = Value
		end)
		spawn(function()
			while _G.AutoBuySwordHop do wait()
				if _G.AutoBuySwordHop then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	spawn(function()
		while wait(7) do
			if _G.AutoBuySwordHop or _G.HakiColorHop then
				local PlaceID = game.PlaceId
				local AllIDs = {}
				local foundAnything = ""
				local actualHour = os.date("!*t").hour
				local Deleted = false
				function TPReturner()
					local Site;
					if foundAnything == "" then
						Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
					else
						Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
					end
					local ID = ""
					if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
						foundAnything = Site.nextPageCursor
					end
					local num = 0;
					for i,v in pairs(Site.data) do
						local Possible = true
						ID = tostring(v.id)
						if tonumber(v.maxPlayers) > tonumber(v.playing) then
							for _,Existing in pairs(AllIDs) do
								if num ~= 0 then
									if ID == tostring(Existing) then
										Possible = false
									end
								else
									if tonumber(actualHour) ~= tonumber(Existing) then
										local delFile = pcall(function()
											-- delfile("NotSameServers.json")
											AllIDs = {}
											table.insert(AllIDs, actualHour)
										end)
									end
								end
								num = num + 1
							end
							if Possible == true then
								table.insert(AllIDs, ID)
								wait()
								pcall(function()
									-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
									wait()
									game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
								end)
								wait(4)
							end
						end
					end
				end
				function Teleport() 
					while wait() do
						pcall(function()
							TPReturner()
							if foundAnything ~= "" then
								TPReturner()
							end
						end)
					end
				end
				Teleport()
			end
		end
	end)
	
		AutoFram:Toggle("Mob Aura",_G.MobAura,function(v)
		_G.MobAura = v 
		spawn(function()
			while _G.MobAura do wait()
				if _G.MobAura then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceNear then
							repeat wait()
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeapon)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 1
								else
									v.HumanoidRootPart.Transparency = 0.75
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								if Magnet then
									if setsimulationradius then 
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
							until _G.MobAura == false or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				end
			end
		end)
	end)
	DistanceNear = 1000000

	Wapon = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			table.insert(Wapon ,v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			table.insert(Wapon, v.Name)
		end
	end
	local SelectWeapona = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
		_G.SelectWeapon = Value
		_G.SelectToolWeaponOld = Value
	end)
	AutoFram:Button("Refresh Weapon",function()
		SelectWeapona:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end
	end) 

	function equip()
		pcall(function()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == _G.SelectWeapon then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				end
			end
		end)
	end

	AutoFram:Line()
	AutoFram:Label("Auto Accessories")
	WaponAccessories = {} 
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then 
			if v.ToolTip == "Wear" then    
				table.insert(WaponAccessories, v.Name)
			end
		end
	end
	SelectTooAccessories = ""
	AutoFram:Toggle("Auto Accessories",false,function(Value)
		AutoAccessories = Value 
	end)
	spawn(function()
		while wait() do
			if AutoAccessories then
				CheckAccessories = game.Players.LocalPlayer.Character 
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
					if CheckAccessories:FindFirstChild("CoolShades") or CheckAccessories:FindFirstChild("BlackSpikeyCape") or CheckAccessories:FindFirstChild("BlueSpikeyCape") or CheckAccessories:FindFirstChild("RedSpikeyCape") or CheckAccessories:FindFirstChild("Chopper") or CheckAccessories:FindFirstChild("MarineCape") or CheckAccessories:FindFirstChild("GhoulMask") or CheckAccessories:FindFirstChild("MarineCap") or CheckAccessories:FindFirstChild("PinkCape") or CheckAccessories:FindFirstChild("SaboTopHat") or CheckAccessories:FindFirstChild("SwanGlasses") or CheckAccessories:FindFirstChild("UsoapHat") or CheckAccessories:FindFirstChild("Corrida") or CheckAccessories:FindFirstChild("ZebraCap") or CheckAccessories:FindFirstChild("TomoeRing") or CheckAccessories:FindFirstChild("BlackCape") or CheckAccessories:FindFirstChild("SwordsmanHat") or CheckAccessories:FindFirstChild("SantaHat") or CheckAccessories:FindFirstChild("ElfHat") or CheckAccessories:FindFirstChild("DarkCoat") or CheckAccessories:FindFirstChild("Valkyrie Helm") then
					else
						EquipWeapon(SelectTooAccessories)
						wait(0.1)
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						wait(0.1)
						if game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories) then
							game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories).Parent = game.Players.LocalPlayer:FindFirstChild("Backpack")
						end
						wait(1)
					end
				end
			end
		end
	end)

	local SelectAccessories = AutoFram:Dropdown("Select Accessories",WaponAccessories,function(Value)
		SelectTooAccessories = Value
	end)
	AutoFram:Button("Refresh Accessories",function()
		SelectAccessories:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then 
				if v.ToolTip == "Wear" then    
					SelectAccessories:Add(v.Name)
				end
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then 
				if v.ToolTip == "Wear" then    
					SelectAccessories:Add(v.Name)
				end
			end
		end
	end)

	AutoFram:Line()
	--Mastery--
	AutoFram:Label("Auto Farm Mastery")
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if _G.Mastery then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
		if _G.GunMastery then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
	)
	_G.WeponMatary = ""
	AutoFram:Toggle("Auto Farm Mastery Devil Fruit",_G.Mastery,function(v)
		CheckQuest()
		local args = {
			[1] = "AbandonQuest"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		_G.Mastery = v
	end)
	LocalPlayer = game:GetService("Players").LocalPlayer
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Mastery then
					if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						StatrMagnetDevilFruitMastery = false
						CheckQuest()
						print()
						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						CheckQuest()
						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							pcall(
								function()
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										CheckQuest()  
										if v.Name == Ms then
											if setsimulationradius then 
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											repeat wait() CheckQuest()  
												if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
													if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															local args = {
																[1] = "Buso"
															}
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
														end
														HealthMin = v.Humanoid.MaxHealth*Persen/100
														PosMon = v.HumanoidRootPart.CFrame
														if v.Humanoid.Health <= HealthMin then
															UseDF = true
															EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
															v.HumanoidRootPart.Transparency = 0.75
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
															if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
																if SkillZ and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "Z",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillX and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "X"
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
																end   
															elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
																if SkillZ and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "Z",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillX and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "X",
																		[2] = Vector3.new(0,0,0)
																	}

																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillC and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "C",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillV and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "V",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
															end   
														else
															UseDF = false
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																local args = {
																	[1] = "Buso"
																}
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
															end
															EquipWeapon(_G.WeponMatary)
															if HideHitBlox then
																v.HumanoidRootPart.Transparency = 0.75
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))  
														end
														StatrMagnetDevilFruitMastery = true 
													else
														StatrMagnet = false
														CheckQuest()
														print()
														LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
														wait(1.5)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
													end  
												else
													CheckQuest() 
													game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
												end 
											until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
											StatrMagnetDevilFruitMastery = false
											CheckQuest() 
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										end
									end
								end
							)
						else
							CheckQuest()
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
						end 
					end 
				end
			end) 
		end
	end)

	---Gun---
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						_G.SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						_G.SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
	AutoFram:Toggle("Auto Farm Gun Mastery",_G.GunMastery,function(v)
		CheckQuest()
		local args = {
			[1] = "AbandonQuest"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		_G.GunMastery = v
		Ms = ""
	end)
	spawn(function()
		while wait() do
			pcall(function()
				if _G.GunMastery then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then  
						CheckQuest()
						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
						wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then  
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							CheckQuest()
							pcall(function()
								if game.Workspace.Enemies:FindFirstChild(Ms) then
									if _G.GunMastery and v.Name == Ms then
										if setsimulationradius then 
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										repeat wait()
											pcall(function()
												if game.Workspace.Enemies:FindFirstChild(Ms) then
													if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
														HealthMin = v.Humanoid.MaxHealth*Persen/100
														PosMon = v.HumanoidRootPart.CFrame
														if v.Humanoid.Health <= HealthMin then
															EquipWeapon(_G.SelectToolWeaponGun)
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
															v.HumanoidRootPart.Transparency = 0.75
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
															local args = {
																[1] = v.HumanoidRootPart.Position,
																[2] = v.HumanoidRootPart
															}
															game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
														else
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																local args = {
																	[1] = "Buso"
																}
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
															end
															EquipWeapon(_G.WeponMatary)
															if HideHitBlox then
																v.HumanoidRootPart.Transparency = 0.75
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end 
														StatrMagnet = true
													else
														CheckQuest()
														print()
														LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
														wait(1.1)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
														wait(0.5)
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
													end
												else
													CheckQuest()
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
												end
											end)
										until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or _G.GunMastery == false or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
									end
								else
									CheckQuest()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end
							end)
						end
					end 
				end
			end) 
		end
	end)

	AutoFram:Label("Auto Skill")
	AutoFram:Toggle("Skill Z",true,function(a)
		SkillZ = a
	end)
	AutoFram:Toggle("Skill X",true,function(a)
		SkillX = a
	end)
	AutoFram:Toggle("Skill C",true,function(a)
		SkillC = a
	end)
	AutoFram:Toggle("Skill V",true,function(a)
		SkillV = a
	end)
	Persen = 15
	AutoFram:Slider("Health",1,100,Persen,function(v)
		Persen = v
	end)
	local AMonster = AutoFram:Dropdown("Select Weapon",Wapon,function(v)
		_G.WeponMatary = v
	end)
	AutoFram:Button("Refresh Weapon",function()
		AMonster:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				AMonster:Add(v.Name)
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				AMonster:Add(v.Name)
			end
		end
	end)

	AutoFram:Line()
	-- Fram Boss Tab
	AutoFram:Label("Auto Farm Boss")
	function CheckQuestBoss()
		if SelectBoss == "Diamond [Lv. 750] [Boss]" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NaemQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NaemQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NaemQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NaemQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NaemQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			NaemQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Old World
		elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
			MsBoss = "Saber Expert [Lv. 200] [Boss]"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
			MsBoss = "The Saw [Lv. 100] [Boss]"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]"
			NaemQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NaemQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NaemQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
			--The Gorilla King [Lv. 25] [Boss]
		elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NaemQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
			MsBoss = "Warden [Lv. 175] [Boss]"
			NaemQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
			MsBoss = "Chief Warden [Lv. 200] [Boss]"
			NaemQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
			MsBoss = "Swan [Lv. 225] [Boss]"
			NaemQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NaemQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NaemQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NaemQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NaemQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NaemQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			--Three World
		elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NaemQuestBoss = "MarineTreeIsland"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameBoss = CFrame.new(2955.1189, 423.584412, -7240.22217, -0.761679471, 7.01648872e-08, 0.647953987, 8.75833539e-09, 1, -9.79912755e-08, -0.647953987, -6.89629474e-08, -0.761679471)
		elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NaemQuestBoss = "DeepForestIsland"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameBoss = CFrame.new(-13592.9053, 332.23584, -8134.08643, -0.866908491, -1.7684858e-08, 0.498467356, -3.95491107e-08, 1, -3.33032872e-08, -0.498467356, -4.85848446e-08, -0.866908491)
		elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NaemQuestBoss = "DeepForestIsland2"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameBoss = CFrame.new(5310.80957, 22.5622349, 129.390533, 1, -2.47274325e-08, 1.41872977e-13, 2.47274325e-08, 1, -4.55364528e-08, -1.40746979e-13, 4.55364528e-08, 1)
		elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			CFrameBoss = CFrame.new(-10293.208, 332.791351, -9450.625, 0.132661447, -0.213521436, -0.96788919, -0.0110089043, 0.976142585, -0.21685116, 0.991100252, 0.0394231752, 0.127145842)
		elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NaemQuestBoss = "PiratePortQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameBoss = CFrame.new(-970.778564, 40.0068855, 6795.5249, -0.179641441, -2.87076816e-08, 0.983732164, -4.4126935e-08, 1, 2.11243023e-08, -0.983732164, -3.96142852e-08, -0.179641441)
		elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			NaemQuestBoss = "AmazonQuest2"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameBoss = CFrame.new(5813.94140625, 661.14862060547, 202.04710388184)
		end
	end
	local Boss = {}
	for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			else
				table.insert(Boss, v.Name)
			end
		end
	end
	for i, v in pairs(game.workspace.Enemies:GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			else
				table.insert(Boss, v.Name)
			end
		end
	end
	local BossName = AutoFram:Dropdown("Select Boss",Boss,function(Value)
		SelectBoss = Value
		Don = false
	end)
	local SelectWeaponBoss = "" 
	local SelectWeaponKillBos = AutoFram:Dropdown("Select Weapon Kill Boss",Wapon,function(Value)
		_G.SelectWeaponBoss = Value
	end)
	AutoFram:Button("Refresh Weapon Boss",function()
		SelectWeaponKillBoss:Clear()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				SelectWeaponKillBoss:Add(v.Name)
			end
		end
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				SelectWeaponKillBoss:Add(v.Name)
			end
		end
	end)
	AutoFram:Button("Refresh Boss",function()
		BossName:Clear()
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
				else
					BossName:Add(v.Name)
				end
			end
		end
		for i, v in pairs(game.workspace.Enemies:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
				else
					BossName:Add(v.Name)
				end
			end
		end
	end)
	function AutoFramBoss()
		CheckQuestBoss()
		if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" or SelectBoss == "Longma [Lv. 2000] [Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
					end
				end
			else
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			end
		elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						repeat 
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
					end
				end
			else
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			end
		else
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					print()
					CheckQuestBoss()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuestBoss
					wait(1.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
				elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
							repeat
								pcall(function() wait() 
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeaponBoss)
									if HideHitBlox then
										v.HumanoidRootPart.Transparency = 0.75
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									VirtualUser:CaptureController()
									VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
								end)
							until not FramBoss or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
						end
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
				end
			end
		end
	end
	AutoFram:Toggle("Auto Farm Boss",false,function(Value)
		local args = {
			[1] = "AbandonQuest"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		FramBoss = Value
		MsBoss = ""
		while FramBoss do wait()
			AutoFramBoss()
		end
	end)
	KillBossuse = true
	function AutoFramAllBoss()
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]" then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]" then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]" then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]"  then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]" then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"  then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]" then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]" then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]" then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]" then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]"then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]"  then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]"  then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]"  then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]"then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]"  then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"   then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]"  then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]"  then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]"  then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]"   then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]"   then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		KillBossuse = false
		if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			end
		else
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			end
		end
		KillBossuse = true
	end

	function AutoFramAllBoss2()
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]" then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]" then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]" then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]"  then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]" then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"  then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]" then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]" then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]" then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]" then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]"then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]"  then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]"  then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]"  then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]"then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]"  then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"   then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]"  then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]"  then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]"  then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]"   then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]"   then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		KillBossuse = false
		if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if _G.AllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not _G.AllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			end
		else
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if _G.AllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not _G.AllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			end
		end
		KillBossuse = true
	end
	
		game:GetService("RunService").Heartbeat:Connect(
	function()
		if _G.AllBossNoHop or _G.AllBossHop then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end
	)

	AutoFram:Toggle("Auto Farm All Boss",_G.AllBossNoHop,function(Value)
		_G.FastBoss = Value
		_G.AllBossNoHop = Value
	end)

	AutoFram:Toggle("Auto Farm All Boss+Hop",_G.AllBossHop,function(Value)
		_G.FastBoss = Value
		_G.AllBossHop = Value
	end)
	
	---------------------------------
	local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
	local VirtualUser = game:GetService('VirtualUser')
				kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastBoss then
							pcall(function()
								pcall(function ()
										kkii:Stop()
								end)  
							end)
						end
					end)
				end)
				---------------------------------
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastBoss then
							pcall(function()
								pcall(function ()
										RigC.activeController.timeToNextAttack = 0
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastBoss then
							pcall(function()
								pcall(function ()
										RigC.activeController.hitboxMagnitude = 25
									wait(.05)
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastBoss then
							pcall(function()
								pcall(function ()
										
										RigC.activeController.increment = 3
								end)
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastBoss then
							pcall(function()
								pcall(function ()
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									wait(.05)
								end)
							end)
						end
					end)
				end)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastBoss then
							pcall(function()
								pcall(function ()
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									wait(.05)
								end)
							end)
						end
					end)
				end)

    ---------------------------------

	function Autoallbossnope()
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "Ice Admiral [Lv. 700] [Boss]" or v.Name == "Don Swan [Lv. 1000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]" then
				else
					SelectBoss = v.Name
					CheckQuestBoss()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
					if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or
						game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
						CheckQuestBoss()
						if _G.AllBossNoHop and v:IsA("Model") and v:FindFirstChild("Humanoid") and
							v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
							repeat
								pcall(function()
									wait()
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeaponBoss)
									v.HumanoidRootPart.Transparency = 1
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0)
								end)
							until not _G.AllBossNoHop or not v.Parent or v.Humanoid.Health <= 0 
						end
					else
						CheckQuestBoss()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
					end
					CheckQuestBoss()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss

				end

			end
		end
	end

	function AutoallbossHope()
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "Ice Admiral [Lv. 700] [Boss]" or v.Name == "Don Swan [Lv. 1000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]" then
				else
					SelectBoss = v.Name
					CheckQuestBoss()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
					if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or
						game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
						CheckQuestBoss()
						if _G.AllBossHop and v:IsA("Model") and v:FindFirstChild("Humanoid") and
							v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
							repeat
								pcall(function()
									wait()
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeaponBoss)
									v.HumanoidRootPart.Transparency = 1
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0)
									game:GetService 'VirtualUser':CaptureController()
									game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))                                   
								end)
							until not _G.AllBossHop or not v.Parent or v.Humanoid.Health <= 0 
						end
					else
						CheckQuestBoss()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
					end
					CheckQuestBoss()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss

				end

			end
		end
		if _G.AllBossHop and not game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") and 
			not game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") and 
			not game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Smoke Admiral [Lv. 1150] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Bobby [Lv. 55] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Yeti [Lv. 110] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Mob Leader [Lv. 120] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Vice Admiral [Lv. 130] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Warden [Lv. 175] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Chief Warden [Lv. 200] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Swan [Lv. 225] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Magma Admiral [Lv. 350] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Fishman Lord [Lv. 425] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Wysper [Lv. 500] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Cyborg [Lv. 675] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Stone [Lv. 1550] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") and 
			not game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") and 
			not game:GetService("Workspace").Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Smoke Admiral [Lv. 1150] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Bobby [Lv. 55] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Yeti [Lv. 110] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Vice Admiral [Lv. 130] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Warden [Lv. 175] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden [Lv. 200] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Swan [Lv. 225] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Magma Admiral [Lv. 350] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord [Lv. 425] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Wysper [Lv. 500] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Cyborg [Lv. 675] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
			Hopey()
		end
	end

	function Hopey()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
		function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									-- delfile("NotSameServers.json")
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end
		function Teleport() 
			while wait() do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
		end
		Teleport()
	end

	spawn(function()
		while wait() do 
			if _G.AllBossNoHop then
				Autoallbossnope()
			end
		end
	end)

	spawn(function()
		while wait() do 
			if _G.AllBossHop then
				AutoallbossHope()
			end
		end
	end)

	AutoFram:Line()
	-- Auto QuestBartilo
	if NewWorld then
		AutoFram:Label("Auto Quest Bartolomeo")
		BareWeapon = ""
		local args = {
			[1] = "getInventoryWeapons"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game:GetService("RunService").Heartbeat:Connect(
		function()
			if _G.AutoBartilo then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
		)
		AutoFram:Toggle("Auto Quest Bartolomeo ",_G.AutoBartilo,function(v)
			Bool = v
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Warrior Helmet") then
				HaveWarriorHelmet = true
			elseif game.Players.LocalPlayer.Character:FindFirstChild("Warrior Helmet") then
				HaveWarriorHelmet = true
			end
			if HaveWarriorHelmet and Bool == true then
			elseif BareWeapon == "" and Bool == true then
				RadientPaid:Notification("Selected Weapon First","Selected Weapon First","ok")
			elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 and Bool == true then
			else
				_G.AutoBartilo = v
			end
			spawn(function()
				while _G.AutoBartilo do wait()
					if _G.AutoBartilo then
						if game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
									Ms = "Swan Pirate [Lv. 775]"
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Ms then
											pcall(function()
												repeat wait()
													if setsimulationradius then 
														sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													end
													EquipWeapon(BareWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													if HideHitBlox then
														v.HumanoidRootPart.Transparency = 1
													else
														v.HumanoidRootPart.Transparency = 70
													end
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
													PosMonBarto =  v.HumanoidRootPart.CFrame
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													AutoBartiloBring = true
												until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
												AutoBartiloBring = false
											end)
										end
									end
								else
									CFramMon = CFrame.new(1057.92761, 137.614319, 1242.08069)
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFramMon
								end
							else
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
								wait(1.1)
								local args = {
									[1] = "StartQuest",
									[2] = "BartiloQuest",
									[3] = 1
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end 
						elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
							if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								Ms = "Jeremy [Lv. 850] [Boss]"
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == Ms then
										repeat wait()
											if setsimulationradius then 
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											EquipWeapon(BareWeapon)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											if HideHitBlox then
												v.HumanoidRootPart.Transparency = 1
											else
												v.HumanoidRootPart.Transparency = 70
											end
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
								wait(1.1)
								local args = {
									[1] = "BartiloQuestProgress",
									[2] = "Bartilo"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								wait(1)
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
								wait(2)
							else
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
							end
						elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
						end
					end 
				end
			end)
		end)
		local BareWeapon = AutoFram:Dropdown("Select Weapon",Wapon,function(A)
			BareWeapon = A
		end) 
		AutoFram:Button("Refresh Weapon",function()
			BareWeapon:Clear()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					BareWeapon:Add(v.Name)
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					BareWeapon:Add(v.Name)
				end
			end
		end)
	end
	spawn(function()
		while wait() do
			if _G.AutoBartilo then
				bring2()
			end
		end
	end)

	-- Auto Rengoku
	if NewWorld then
		AutoFram:Label("Auto Rengoku")
		RengokuWeapon = ""
		AutoFram:Toggle("Auto Rengoku",_G.AutoRengoku,function(v)
			_G.AutoRengoku = v
			spawn(function()
				while _G.AutoRengoku do wait()
					if _G.AutoRengoku then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or  game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
							EquipWeapon("Hidden Key")
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6571.81885, 296.689758, -6966.76514, 0.825126112, 8.412257e-10, 0.564948559, -2.42370835e-08, 1, 3.39100339e-08, -0.564948559, -4.16727595e-08, 0.825126112)
						elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Snow Lurker [Lv. 1375]" and v.Humanoid.Health > 0 then
									repeat wait()
										if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(RengokuWeapon)
											PosMonRengoku = v.HumanoidRootPart.CFrame
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
											VirtualUser:CaptureController()
											VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
											StatrMagnetRengoku = true
										else
											StatrMagnetRengoku = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
										end
									until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
									StatrMagnetRengoku = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
								end
							end
						else
							StatrMagnetRengoku = false
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
						end
					end
				end
			end)
		end)

		spawn(function()
			while wait() do
				if _G.AutoRengoku then
					bring2()
				end
			end
		end)

		local Rengoku = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
			RengokuWeapon = Value
		end)
		AutoFram:Button("Refresh Weapon",function()
			Rengoku:Clear()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					Rengoku:Add(v.Name)
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					Rengoku:Add(v.Name)
				end
			end
		end)

		AutoFram:Line()
	end
	-- Auto Sharkman Katate
	if NewWorld then
		AutoFram:Label("Auto Sharkman Katate")
		AutoFram:Toggle("Auto Sharkman Katate",_G.AutoSharkman,function(v)
			local args = {
				[1] = "BuyFishmanKarate"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			_G.AutoSharkman = v
			spawn(function()
				while _G.AutoSharkman do wait()
					if _G.AutoSharkman then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
							if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
							elseif game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							else 
								Ms = "Tide Keeper [Lv. 1475] [Boss]"
								if game.Workspace.Enemies:FindFirstChild(Ms) then   
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Ms then    
											repeat wait()
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
												EquipWeapon(_G.SharkmanWeapon)
												game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
												if setsimulationradius then 
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												end
												if HideHitBlox then
													v.HumanoidRootPart.Transparency = 1
												else
													v.HumanoidRootPart.Transparency = 70
												end
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
										end
									end
								else
									CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
									wait(3)
								end
							end
						else 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					end
				end
			end)
		end)
		local Sharkman = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
			_G.SharkmanWeapon = Value
		end)
		AutoFram:Button("Refresh Weapon",function()
			Sharkman:Clear()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					Sharkman:Add(v.Name)
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					Sharkman:Add(v.Name)
				end
			end
		end)

		AutoFram:Line()
	end
	-- Auto Fram Ectoplasm
	if game.PlaceId == 4442272183 then
		AutoFram:Label("Auto Farm Ectoplasm")
		local args = {
			[1] = "getInventoryWeapons"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Inventory.Container:GetDescendants()) do
			if v.Name == "Ghoul Mask" then
				AssGhoulMask = true
			end
			if v.Name == "Midnight Blade" then
				AssMidnightBlade = true
			end
			if v.Name == "Bizarre Rifle" then
				AssBizarreRifle = true
			end
		end
		AutoFram:Toggle("Auto Farm Ectoplasm",_G.Ectoplasm,function(A)
			_G.Ectoplasm = A
			spawn(function()
				while _G.Ectoplasm do wait()
					if _G.Ectoplasm then
						if game.Workspace.Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game.Workspace.Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game.Workspace.Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if string.find(v.Name, "Ship") then
									repeat wait()
										if string.find(v.Name, "Ship") then
											if setsimulationradius then 
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											EquipWeapon(EctoplasmWeaponSelect)
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
											VirtualUser:CaptureController()
											VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
											-- µÕàÍ§
											PosMonEctoplasm = v.HumanoidRootPart.CFrame
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
											StatrMagnetEctoplasm = true
										else
											StatrMagnetEctoplasm = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812)
										end
									until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
									StatrMagnetEctoplasm = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812)
								end
							end
						else
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
						end
					end
				end
			end)
		end)

		local EctoplasmWeapon = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
			EctoplasmWeaponSelect = Value
		end)
		AutoFram:Button("Refresh Weapon",function()
			EctoplasmWeapon:Clear()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					EctoplasmWeapon:Add(v.Name)
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					EctoplasmWeapon:Add(v.Name)
				end
			end
		end)
	end


	-- Auto Farm Observation
	
	-- Magnet
	
	spawn(function()
	    game:GetService("RunService").Heartbeat:Connect(function()
	        if _G.AutoFarm then
	            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	                if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
	                    v.Humanoid:ChangeState(11)
	                end
	            end
	        end
	    end)
	end)
	
	function bring2()
		local plr = game.Players.LocalPlayer
		pcall(function()
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end)
	end
	spawn(function()
		while wait(.1) do
			if _G.AutoFarm then
				bring2()
			end
		end
	end)

	-- Auto Fram Observation
	AutoFram:Label("Auto Farm Observation")
	local ObservationVirtualUser = game:GetService('VirtualUser')
	AutoFram:Toggle("Auto Fram Observation",_G.Observation,function(a)
		_G.Observation = a
		if _G.Observation then
			ObservationVirtualUser:CaptureController()
			ObservationVirtualUser:SetKeyDown('0x65')
			wait(2)
			ObservationVirtualUser:SetKeyUp('0x65')
		end
		spawn(function()
			while _G.Observation do wait()
				if NewWorld then
					if game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") then
						if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
							until _G.Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
									wait(1)
								if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									local ts = game:GetService("TeleportService")
									local p = game:GetService("Players").LocalPlayer

									ts:Teleport(game.PlaceId, p)
								end
							until _G.Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.558777, 40.0827065, 32766.498)
					end
				elseif OldWorld then
					if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
						if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
							until _G.Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
								wait(1)
								if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									local ts = game:GetService("TeleportService")
									local p = game:GetService("Players").LocalPlayer

									ts:Teleport(game.PlaceId, p)
								end
							until _G.Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5533.29785, 88.1079102, 4852.3916)
					end
				elseif ThreeWorld then
					if game.Workspace.Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
						if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
							until _G.Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
								wait(1)
								if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									local ts = game:GetService("TeleportService")
									local p = game:GetService("Players").LocalPlayer

									ts:Teleport(game.PlaceId, p)
								end
							until _G.Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
					end
				end
			end
		end)
	end)
	AutoFram:Button("Check Observation Haki level",function()
		RadientPaid:Notification(game.Players.LocalPlayer.VisionRadius.Value,"Observation Haki level","ok")
	end)

    spawn(function()
        game:GetService("RunService").Heartbeat:connect(function()
            if _G.AutoFarm then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					    v.Humanoid:ChangeState(11)
					end
                end
            end
        end)
    end)
    
    spawn(function()
        game:GetService("RunService").Heartbeat:connect(function()
            if _G.AutoFarm and StatrMagnet and Magnet then
				CheckQuest()
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff [Lv. 800]" or v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.CFrame = PosMon
						elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.CFrame = PosMon
						end
					end
				end
			end 
        end)
    end)

	-- Magnet
	spawn(function()
		while wait() do
			if _G.AutoFarm and StatrMagnet and Magnet then
				CheckQuest()
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff [Lv. 800]" or v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.CFrame = PosMon
						elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.CFrame = PosMon
						end
					end
				end
			end 
			if _G.Mastery and StatrMagnetDevilFruitMastery and Magnet then
				for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					CheckQuest()
					if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff [Lv. 800]" or v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
							wait()
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							if UseDF then
								v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
							elseif UseDF == false then
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							end   
							v.HumanoidRootPart.CFrame = PosMon
						elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							wait()
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							if UseDF then
								v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
							elseif UseDF == false then
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							end   
							v.HumanoidRootPart.CFrame = PosMon
						end
					end
				end
			end
			if _G.AutoBartilo and AutoBartiloBring and Magnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Swan Pirate [Lv. 775]" then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CFrame = PosMonBarto
						end
					end
				end
			end
			if _G.AutoRengoku and StatrMagnetRengoku and Magnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name ==  "Snow Lurker [Lv. 1375]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Snow Lurker [Lv. 1375]" then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CFrame = PosMonRengoku
						end
					end
				end
			end
			if _G.Ectoplasm and StatrMagnetEctoplasm and Magnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CFrame = PosMonEctoplasm
						end
					end
				end
			end
		end
	end)



	local Stats = serv:Channel("Auto Stats")
	Stats:Toggle("Melee",_G.Melee,function(Value)
		_G.Melee = Value    
	end)
	Stats:Toggle("Defense",_G.Defense,function(value)
		_G.Defense = value
	end)
	Stats:Toggle("Sword",_G.Sword,function(value)
		_G.Sword = value
	end)
	Stats:Toggle("Gun",_G.Gun,function(value)
		_G.Gun = value
	end)
	Stats:Toggle("Devil Fruit",_G.Fruit,function(value)
		_G.Fruit = value
	end)
	PointStats = 1
	Stats:Slider("Point",1, 100,PointStats,function(a)
		PointStats = a
	end)
	spawn(function()
		while wait() do
			if game.Players.localPlayer.Data.Points.Value >= PointStats then
				if _G.Melee then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Defense then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Sword then
					local args = {
						[1] = "AddPoint",
						[2] = "Sword",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Gun then
					local args = {
						[1] = "AddPoint",
						[2] = "Gun",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Fruit then
					local args = {
						[1] = "AddPoint",
						[2] = "Demon Fruit",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)

	local Teleport = serv:Channel("Teleport") 
	Teleport:Toggle("Ctrl + Click = TP",false,function(vu)
		CTRL = vu
	end)
	local Plr = game:GetService("Players").LocalPlayer
	local Mouse = Plr:GetMouse()
	Mouse.Button1Down:connect(
		function()
			if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
				return
			end
			if not Mouse.Target then
				return
			end
			if CTRL then
				Plr.Character:MoveTo(Mouse.Hit.p)
			end
		end
	)
	if NewWorld then
		Teleport:Button("Teleport To Old World",function()
			local args = {
				[1] = "TravelMain" -- OLD WORLD to NEW WORLD
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end)
	end
	if OldWorld or ThreeWorld then
		Teleport:Button("Teleport To NewWorld",function()
			local args = {
				[1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end)
	end
	if NewWorld then
		Teleport:Button("Teleport To Sea3",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
		end)
	end
	if NewWorld or ThreeWorld then
		Teleport:Button("Teleport to SeaBeasts",function()
			for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
				if v:FindFirstChild("HumanoidRootPart") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,100,0)
				end
			end
		end)
	end
	Teleport:Line()
	Teleport:Label("Teleport Island")
	if NewWorld then
		Teleport:Button("Dock",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
		end)
		Teleport:Button("Kingdom of Rose",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-394.983521, 118.503128, 1245.8446)
		end)
		Teleport:Button("Dark Arena",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame
		end)
		Teleport:Button("Mansion",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390.096313, 331.886475, 673.464966)
		end)
		Teleport:Button("Flamingo Room",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2302.19019, 15.1778421, 663.811035)
		end)
		Teleport:Button("Green Zone",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)
		end)
		Teleport:Button("Cafe",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)
		end)
		Teleport:Button("Factroy",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.42569, 210.019623, -432.504791)
		end)
		Teleport:Button("Colosseum",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836.58191, 44.5890656, 1360.30652)
		end)
		Teleport:Button("GraveIsland",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5411.47607, 48.8234024, -721.272522)
		end)
		Teleport:Button("Snow Mountain",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(511.825226, 401.765198, -5380.396)
		end)
		Teleport:Button("Cold Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)
		end)
		Teleport:Button("Hot Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
		end)
		Teleport:Button("Cursed Ship",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
		end)
		Teleport:Button("IceCastle",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)
		end)
		Teleport:Button("Forgotten Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3043.31543, 238.881271, -10191.5791)
		end)
		Teleport:Button("Usoapp Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4748.78857, 8.35370827, 2849.57959)
		end)
		Teleport:Button("Minisky Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.358917, 49325.7031, -35259.3008)
		end)
	end
	if OldWorld then
		Teleport:Button("Start Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)
		end)
		Teleport:Button("Marine Start",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374, 6.88881969, 2046.99817)
		end)
		Teleport:Button("Middle Town",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)
		end)
		Teleport:Button("Jungle",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)
		end)
		Teleport:Button("Pirate Village",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)
		end)
		Teleport:Button("Desert",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)
		end)
		Teleport:Button("Frozen Village",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)
		end)
		Teleport:Button("MarineFord",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)
		end)
		Teleport:Button("Colosseum",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1428.35474, 7.38933945, -3014.37305)
		end)
		Teleport:Button("Sky island 1 ",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)
		end)
		Teleport:Button("Sky island 2 ",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)
		end)
		Teleport:Button("Sky island 3 ",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)
		end)
		Teleport:Button("Sky island 4 ",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7793.43896, 5607.22168, -2016.58362)
		end)
		Teleport:Button("Prison",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4854.16455, 5.68742752, 740.194641)
		end)
		Teleport:Button("Magma Village",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)
		end)
		Teleport:Button("UndeyWater City",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)
		end)
		Teleport:Button("Fountain City",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)
		end)
		Teleport:Button("House Cyborg's",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)
		end)
		Teleport:Button("Shank's Room",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
		end)
		Teleport:Button("Mob Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
		end)
	end   
	if ThreeWorld then
		Teleport:Button("Port Towen",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-610.309692, 57.8323097, 6436.33594, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		end)
		Teleport:Button("Hydra Island",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5229.99561, 603.916565, 345.154022, -0.137452736, 6.26227887e-08, -0.990508318, 5.81512971e-08, 1, 5.51532295e-08, 0.990508318, -5.00183823e-08, -0.137452736)
		end)
		Teleport:Button("Great Tree",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2174.94873, 28.7312393, -6728.83154, 0.864815354, 2.51030592e-08, -0.502090037, -5.24263299e-09, 1, 4.09670555e-08, 0.502090037, -3.27966632e-08, 0.864815354)
		end)
		Teleport:Button("Castle on the Sea",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5477.62842, 313.794739, -2808.4585, 0.914748192, -2.40542199e-08, 0.404024392, -8.97737973e-09, 1, 7.98621613e-08, -0.404024392, -7.66808483e-08, 0.914748192)
		end)
		Teleport:Button("Floating Turtle",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10919.2998, 331.788452, -8637.57227, 0.606543362, 0, -0.795050383, -0, 1, -0, 0.795050383, 0, 0.606543362)
		end)
		Teleport:Button("Mansion",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12553.8125, 332.403961, -7621.91748, -0.999466479, 2.33264661e-08, 0.0326608531, 2.2023519e-08, 1, -4.02529707e-08, -0.0326608531, -3.95121873e-08, -0.999466479)
		end)
		Teleport:Button("Secret Temple",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5217.35693, 6.56511116, 1100.88159, 0.00408430398, 7.00437894e-08, -0.999991655, 1.42367229e-08, 1, 7.01025229e-08, 0.999991655, -1.45229242e-08, 0.00408430398)
		end)
		Teleport:Button("Friendly Arena",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5220.28955, 72.8193436, -1450.86304, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		end)
		Teleport:Button("Beautiful Pirate Domain",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727)
		end)
	end

	local Players = serv:Channel("Player") 
	PlayerName = {}
	for i,v in pairs(game.Players:GetChildren()) do  
		table.insert(PlayerName ,v.Name)
	end
	SelectedKillPlayer = ""
	local Player = Players:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
		SelectedKillPlayer = plys
		SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
	end)
	Players:Button("Refrsh Player",function()
		PlayerName = {}
		Player:Clear()
		for i,v in pairs(game.Players:GetChildren()) do  
			Player:Add(v.Name)
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if KillPlayer then
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
	)
	Players:Toggle("Kill Player ( Combat )",false,function(bool)
		KillPlayer = bool
		local args = {
			[1] = "EnablePvp"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			local args = {
				[1] = "Buso"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
		EquipWeapon(_G.SelectWeaponPlayer)
		if KillPlayer == false then
			game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
		end
		while KillPlayer do wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
			game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
		end
	end)

	Players:Toggle("Kill Player ( Gun )",false,function(bool)
		KillPlayer = bool
		KillPlayer = bool
		local args = {
			[1] = "EnablePvp"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			local args = {
				[1] = "Buso"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
		EquipWeapon(_G.SelectWeaponPlayer)				   
		if KillPlayer == false then
			game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
		end
		while KillPlayer do wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
			game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
		end
	end)

	Players:Toggle("Auto Farm Bounty OP (Gun Only)",false,function(value)
		_G.F = value
	end)

	spawn(function()
		while wait() do
			if _G.F then
				eiei = game.Players.LocalPlayer
				for i, v in pairs(game.Players:GetChildren()) do
					if v.Name ~= eiei.Name then
						if v.Data.Level.Value >= 1200 then
							repeat wait()
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectToolWeaponGun)
								local args = {
									[1] = "EnablePvp"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								NameRandom = v.Name
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								v.Character.HumanoidRootPart.CanCollide = false
								v.Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
								eiei.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0)  
							until _G.F == false or v.Character.Humanoid.Health == 0
						end
					end
				end
			end
		end
	end)
	spawn(function()
		game:GetService('RunService').Stepped:connect(function()
			if _G.F == true then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if _G.F and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun).RemoteFunctionShoot then
			local args = {
				[1] = game:GetService("Players"):FindFirstChild(NameRandom).Character.HumanoidRootPart.Position,
				[2] = game:GetService("Players"):FindFirstChild(NameRandom).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
		end
	end)

	Players:Toggle("Kill + Hop(Combat)",_G.KillHop,function(t)
		_G.KillHop = t
	end)
	
	Players:Toggle("Kill + Hop(Gun)",_G.KillHop,function(t)
		_G.KillHopGun = t
	end)

	Players:Toggle("Safe Mode",_G.safe,function(t)
		_G.safe = t
	end)

	spawn(function()
		while wait(.1) do
			if _G.KillHop then
				CombatPlayerall()
			end
		end
	end)
	
		spawn(function()
		while wait(.1) do
			if _G.KillHopGun then
				CombatPlayerGun()
			end
		end
	end)

	Next = ""
	function CombatPlayerall()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
				if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~=
					game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
					v:FindFirstChild("Humanoid") then
					hpmun = v.Humanoid.Health
					repeat
						game:GetService("RunService").RenderStepped:Wait()

						cope = v.Name
						--  sakill1 = true
						EquipWeapon(_G.SelectWeaponPlayer)
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							local args = {
								[1] = "Buso"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,-17, 12)
						--   sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						Px = v.HumanoidRootPart.CFrame.X
						Py = v.HumanoidRootPart.CFrame.Y
						Pz = v.HumanoidRootPart.CFrame.Z
						if _G.FightingMode == nil then
							local VirtualUser = game:GetService('VirtualUser')
							local RUOK = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

							VirtualUser:CaptureController()
							VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							game:GetService("RunService").Heartbeat:Wait()
							pcall(function()
								RUOK.activeController.timeToNextAttack = 0
							end)
						else
							local VirtualUser = game:GetService('VirtualUser')
							local RUOK = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

							VirtualUser:CaptureController()
							VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							game:GetService("RunService").Heartbeat:Wait()
							pcall(function()
								RUOK.activeController.timeToNextAttack = 0
							end)

						end
						_G.onNext = true
						if _G.ServerHop and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then
							if NewWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
								Hopey()
							elseif ThreeWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
								Hopey()
							end
						end

					until not v.Parent or Next == "true" or v.Humanoid.Health <= 0 or _G.KillHop == false or
						game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
					Next = "d"
					sakill1 = false
					--  pk = false
					v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
				end
			end
		end)
	end
	
	Next = ""
	function CombatPlayerGun()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
				if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~=
					game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
					v:FindFirstChild("Humanoid") then
					hpmun = v.Humanoid.Health
					repeat
						game:GetService("RunService").RenderStepped:Wait()

						cope = v.Name
						--  sakill1 = true
						EquipWeapon(_G.SelectToolWeaponGun)
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							local args = {
								[1] = "Buso"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
						--   sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						Px = v.HumanoidRootPart.CFrame.X
						Py = v.HumanoidRootPart.CFrame.Y
						Pz = v.HumanoidRootPart.CFrame.Z
						if _G.FightingMode == nil then
                		game:GetService'VirtualUser':CaptureController()
                		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						else
                		game:GetService'VirtualUser':CaptureController()
                		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						end
						_G.onNext = true
						if _G.ServerHop and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then
							if NewWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
								Hopey()
							elseif ThreeWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
								Hopey()
							end
						end

					until not v.Parent or Next == "true" or v.Humanoid.Health <= 0 or _G.KillHopGun == false or
						game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
					Next = "d"
					sakill1 = false
					--  pk = false
					v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
				end
			end
		end)
	end
	
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if _G.KillHopGun and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun) then
			local args = {
				[1] = game:GetService("Players"):FindFirstChild(cope).Character.HumanoidRootPart.Position,
				[2] = game:GetService("Players"):FindFirstChild(cope).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
		end 
	end)

	function Hopey()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
		function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									-- delfile("NotSameServers.json")
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end
		function Teleport() 
			while wait() do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
		end
		Teleport()
	end

	spawn(function()
		while wait(6) do
			if _G.onNext then
				pcall(function()
					for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if v.Name == cope and v.Humanoid.Health == v.Humanoid.MaxHealth or v.Humanoid.Health > hpmun and
							v.Name == cope then

							Next = "true"
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.KillHop then
				pcall(function()
					wait(45)
					repeat wait()
						_G.KillHop = false
						wait(.5)
						if NewWorld then  
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
						elseif ThreeWorld then
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
						end
						if game:GetService("Players").localPlayer.PlayerGui.Main.InCombat.Visible == false then
							Hopey()
						end
					until nil
				end)
			end
		end
	end)
	
		spawn(function()
		while wait() do
			if _G.KillHopGun then
				pcall(function()
					wait(45)
					repeat wait()
						_G.KillHop = false
						wait(.5)
						if NewWorld then  
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
						elseif ThreeWorld then
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
						end
						if game:GetService("Players").localPlayer.PlayerGui.Main.InCombat.Visible == false then
							Hopey()
						end
					until nil
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.safe then
				if game.Players.LocalPlayer.Character.Humanoid.Health > 4000 then
				else
					repeat wait()
						local x = math.random(1, 100000)
						local y = math.random(100, 100000)
						local z = math.random(1, 100000)

						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
					until _G.safe == false or game.Players.LocalPlayer.Character.Humanoid.Health >= game.Players.LocalPlayer.Character.Humanoid.MaxHealth
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
				end
			end
		end
	end)

	Players:Toggle("Aimbot Gun",false,function(bool)
		Aimbot = bool
	end)
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeaponPlayer) then
			local args = {
				[1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
				[2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponPlayer].RemoteFunctionShoot:InvokeServer(unpack(args))
		end 
	end)

	Players:Toggle("Spectate Player",false,function(bool)
		Sp = bool
		local plr1 = game.Players.LocalPlayer.Character.Humanoid
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		repeat wait(.1)
			game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
		until Sp == false 
		game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end)
	Players:Button("Teleport Player",function()
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
	end)
	
	Players:Button("Bring Player(Beta)", function()
		Target = SelectedKillPlayer

        NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.Humanoid.Name = 1
        local l = game.Players.LocalPlayer.Character["1"]:Clone()
        l.Parent = game.Players.LocalPlayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        game.Players.LocalPlayer.Character["1"]:Destroy()
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait(0.1)
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            if v.Name == "Kabucha" then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
        end
        local function tp(player,player2)
        local char1,char2=player.Character,player2.Character
        if char1 and char2 then
        char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
        end
        end
        local function getout(player,player2)
        local char1,char2=player.Character,player2.Character
        if char1 and char2 then
        char1:MoveTo(char2.Head.Position)
        end
        end
        tp(game.Players[Target], game.Players.LocalPlayer)
        wait(0.1)
        tp(game.Players[Target], game.Players.LocalPlayer)
        wait(0.3)
        getout(game.Players.LocalPlayer, game.Players[Target])
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
	end)

	Players:Button("Copy Pant and Shirt", function()
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		plr1.Shirt.ShirtTemplate = plr2.Character.Shirt.ShirtTemplate
		plr1.Pants.PantsTemplate = plr2.Character.Pants.PantsTemplate
	end)

	Players:Label("Use With Kill Player")
	local SelectWeapona = Players:Dropdown("Select Weapon",Wapon,function(Value)
		_G.SelectWeaponPlayer = Value
	end)
	Players:Button("Refresh Weapon",function()
		SelectWeapona:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end

		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end
	end) 

	local Raids = serv:Channel("Raid") 
	Raids:Label("Use in Dungeon Only")

	Raids:Dropdown("Select Microchip",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha"},function(t)
		_G.CHIP = t
	end)

	Raids:Toggle("Auto Raid",_G.autoraid,function(t)
		_G.autoraid = t
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.autoraid then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	if NewWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraid then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraid then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
					end
					local args = {
						[1] = "Awakener",
						[2] = "Check"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "Awakener",
						[2] = "Awaken"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end

	if ThreeWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraid then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraid then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
					end
					local args = {
						[1] = "Awakener",
						[2] = "Check"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "Awakener",
						[2] = "Awaken"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end

	Raids:Toggle("Auto Raid+Hop",_G.autoraidhop,function(t)
		_G.autoraidhop = t
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.autoraidhop then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	if NewWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraidhop then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						wait(1)
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraidhop and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraidhop or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraidhop then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
					end
					local args = {
						[1] = "Awakener",
						[2] = "Check"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "Awakener",
						[2] = "Awaken"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end

	if ThreeWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraidhop then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						wait(1)
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraidhop and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraidhop or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraidhop then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)
						end
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
					end
					local args = {
						[1] = "Awakener",
						[2] = "Check"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "Awakener",
						[2] = "Awaken"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end


	spawn(function()
		while wait(35) do
			if _G.autoraidhop then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					local PlaceID = game.PlaceId
					local AllIDs = {}
					local foundAnything = ""
					local actualHour = os.date("!*t").hour
					local Deleted = false
          --[[
          local File = pcall(function()
             AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
             table.insert(AllIDs, actualHour)
             writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
					function TPReturner()
						local Site;
						if foundAnything == "" then
							Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
						else
							Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
						end
						local ID = ""
						if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
							foundAnything = Site.nextPageCursor
						end
						local num = 0;
						for i,v in pairs(Site.data) do
							local Possible = true
							ID = tostring(v.id)
							if tonumber(v.maxPlayers) > tonumber(v.playing) then
								for _,Existing in pairs(AllIDs) do
									if num ~= 0 then
										if ID == tostring(Existing) then
											Possible = false
										end
									else
										if tonumber(actualHour) ~= tonumber(Existing) then
											local delFile = pcall(function()
												-- delfile("NotSameServers.json")
												AllIDs = {}
												table.insert(AllIDs, actualHour)
											end)
										end
									end
									num = num + 1
								end
								if Possible == true then
									table.insert(AllIDs, ID)
									wait()
									pcall(function()
										-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
										wait()
										game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
									end)
									wait(4)
								end
							end
						end
					end

					function Teleport()
						while wait() do
							pcall(function()
								TPReturner()
								if foundAnything ~= "" then
									TPReturner()
								end
							end)
						end
					end

					Teleport()
				end
			end
		end
	end)

	Distance = 1000

	Raids:Toggle("Kill Aura",false,function(value)
		RaidsArua = value
	end)
	Raids:Toggle("Auto Next Island",false,function(value)
		NextIsland = value
	end)
	Raids:Toggle("Auto Awake",false,function(value)
		Awakener = value
	end)
	if NewWorld then
		Raids:Button("Teleport to Lab",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
		end)
	end
	if ThreeWorld then
		Raids:Button("Teleport to Lab",function()
			game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
		end)
	end
	Raids:Button("Awakening Room",function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783, 1.39509034, 1857.00732)
	end)
	spawn(function()
		while wait(.1) do
			if Awakener then
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if NextIsland then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	spawn(function()
		while wait(.1) do
			if NextIsland then
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)
				end
			end
		end
	end)
	spawn(function()
		while wait(.1) do
			if RaidsArua then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if RaidsArua and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
						pcall(function()
							repeat wait(.1)
								if setsimulationradius then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
								v.HumanoidRootPart.Transparency = 70
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CanCollide = false
								if v.Humanoid.Health > 0 then
									v.Humanoid.Health = 0 
								elseif v.Humanoid.Health == 0 then
									v.Humanoid.Health = v.Humanoid.MaxHealth
								else
									v.Humanoid.Health = 0 
								end
							until not RaidsArua or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			end
		end
	end)

	local BuyItem = serv:Channel("Buy") 
	BuyItem:Line()
	BuyItem:Label("Abilities")
	BuyItem:Button("Geppo ",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Geppo"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Buso Haki",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Buso"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Ken Haki",function()
		local args = {
			[1] = "KenTalk",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Soru",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Soru"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Line()
	BuyItem:Button("Buy Random Devil Fruit",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
	end)
	BuyItem:Toggle("Auto Buy Random Devil Fruit",false,function(v)
		DevilAutoBuy = v
	end)
	spawn(function()
		while wait() do
			if DevilAutoBuy then wait()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			end
		end
	end)

	BuyItem:Line()
	BuyItem:Label("Fighting Style")

	BuyItem:Button("Black Leg",function()
		local args = {
			[1] = "BuyBlackLeg"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Electro",function()
		local args = {
			[1] = "BuyElectro"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Fishman Karate",function()
		local args = {
			[1] = "BuyFishmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Dragon Claw",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "DragonClaw",
			[3] = "1"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BlackbeardReward",
			[2] = "DragonClaw",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Superhuman",function()
		local args = {
			[1] = "BuySuperhuman"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Death Step",function()
		local args = {
			[1] = "BuyDeathStep"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Sharkman Karate",function()
		local args = {
			[1] = "BuySharkmanKarate",
			[2] = true
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Electric Claw",function()
		local args = {
			[1] = "BuyElectricClaw"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Line()
	BuyItem:Label(" Sword ")

	BuyItem:Button("Bisento",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Bisento"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Dual-Headed Blade",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Dual-Headed Blade"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Soul Cane",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Soul Cane"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Triple Katana",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Triple Katana"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Pipe",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Pipe"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Dual Katana",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Dual Katana"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Iron Mace",function()
		-- Script generated by SimpleSpy - credits to exx#9394

		local args = {
			[1] = "BuyItem",
			[2] = "Iron Mace"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Line()
	BuyItem:Label(" Accessories ")

	BuyItem:Button("Black Cape",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Black Cape"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Swordsman Hat",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Swordsman Hat"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Tomoe Ring",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Tomoe Ring"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Line()
	BuyItem:Label(" Ectoplasm ")

	BuyItem:Button("Race Ghoul",function()
		local args = {
			[1] = "Ectoplasm",
			[2] = "BuyCheck",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Ectoplasm",
			[2] = "Change",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Race Cyborg",function()
		local args = {
			[1] = "CyborgTrainer",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Line()
	BuyItem:Label(" Fragment ")
	BuyItem:Button("Random Race",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Reroll",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Reset Stats",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Refund",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)



	BuyItem:Button("Microchip [ Raw ]",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Microchip",
			[3] = "2"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Line()
	BuyItem:Label(" Gun ")

	BuyItem:Button("Slingshot",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Slingshot"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	BuyItem:Button("Musket",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Musket"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	BuyItem:Button("Refined Slingshot",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Refined Slingshot"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)


	BuyItem:Button("Cannon",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Cannon"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)


	BuyItem:Button("Bizarre Rifle",function()
		local args = {
			[1] = "Ectoplasm",
			[2] = "Buy",
			[3] = 1
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	local Misc = serv:Channel("Misc") 

	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function infinitestam()
		LocalPlayer.Character.Energy.Changed:connect(function()
			if InfinitsEnergy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	spawn(function()
		while wait(.1) do
			if InfinitsEnergy then
				wait(0.3)
				originalstam = LocalPlayer.Character.Energy.Value
				infinitestam()
			end
		end
	end)

	nododgecool = false
	function NoDodgeCool()
		if nododgecool then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not nododgecool
							end
						end
					end
				end
			end
		end
	end
	Misc:Button("Join Pirates Team",function()
		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Buso"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Misc:Button("Join Marines Team",function()
		local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Buso"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Misc:Button("Open Devil Shop",function()
		local args = {
			[1] = "GetFruits"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
	end)
	Misc:Button("Open Inventory",function()
		local args = {
			[1] = "getInventoryWeapons"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(1)
		game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
	end)
	Misc:Button("Invisible", function()
		game.Players.LocalPlayer.Character.LowerTorso:Destroy()
	end)

	Misc:Line()

	local ScreenGui = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	TextLabel.Parent = ScreenGui
	TextLabel.Active = true
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.Position = UDim2.new(0.424812019, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 50)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "Server Time"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 25.000
	TextLabel.TextTransparency = 1
	TextLabel.TextStrokeTransparency = 300.000

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(204, 255, 69)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(150, 240, 69)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(204, 255, 69))}
	UIGradient.Parent = TextLabel

	local function UpdateTime()
		local GameTime = math.floor(workspace.DistributedGameTime+0.5)
		local Hour = math.floor(GameTime/(60^2))%24
		local Minute = math.floor(GameTime/(60^1))%60
		local Second = math.floor(GameTime/(60^0))%60
		TextLabel.Text = ("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
	end

	spawn(function()
		while true do
			UpdateTime()
			game:GetService("RunService").RenderStepped:Wait()
		end
	end)


	Misc:Toggle("Server Time",false,function(value)
		ServerTime = value
		if ServerTime == true then
			TextLabel.TextTransparency = 0
		elseif ServerTime == false then
			TextLabel.TextTransparency = 1
		end
	end)

	Misc:Toggle("Dodge No Cooldown",false,function(Value)
		nododgecool = Value
		NoDodgeCool()
	end)
	Misc:Toggle("Infinits Energy",false,function(value)
		InfinitsEnergy = value
		originalstam = LocalPlayer.Character.Energy.Value
	end)

	Misc:Toggle("Bring All Fruit",false,function(t)
		TPF = t
		while wait() do
			if TPF then
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					if v:IsA ("Tool") then
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
					end
				end
			end
		end
	end)


	Misc:Toggle("Lag Sever",false,function(vu)
		Lag = vu
		while Lag do wait()
			if Lag then
				spawn(function()
					local args = {
						[1] = "SetTeam",
						[2] = "Pirates"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
					local args = {
						[1] = "BartiloQuestProgress"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "Buso"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			end
		end
	end)

	Misc:Toggle("Tween Chest (Ban Risk)",false,function(t)
		_G.Chest = t
	end)

	spawn(function()
		while wait() do
			if _G.Chest == true then
				pcall(function()
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "Chest2" or v.Name == "Chest1" or v.Name == "Chest3" then
							tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2,Enum.EasingStyle.Quad)
							tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.CFrame})
							tween:Play()
							v.CanCollide = false
						end
					end
				end)
			end
			wait(3)
		end
	end)

	Misc:Toggle("Fast Attack",_G.FastAttk,function(value)
		_G.FastAttk = value
	end)
	
		local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
	local VirtualUser = game:GetService('VirtualUser')
				kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastAttk then
							pcall(function()
								pcall(function ()
										kkii:Stop()
								end)  
							end)
						end
					end)
				end)
				---------------------------------
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastAttk then
							pcall(function()
								pcall(function ()
										RigC.activeController.timeToNextAttack = 0 ---ปรับเป็น 0 ได้เพิ่มความเร็ว
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastAttk then
							pcall(function()
								pcall(function ()
										RigC.activeController.hitboxMagnitude = 25
									wait(.05)
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastAttk then
							pcall(function()
								pcall(function ()
										
										RigC.activeController.increment = 3
								end)
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastAttk then
							pcall(function()
								pcall(function ()
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									wait(.05)
								end)
							end)
						end
					end)
				end)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.FastAttk then
							pcall(function()
								pcall(function ()
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									wait(.05)
								end)
							end)
						end
					end)
				end)
	
	Misc:Toggle("Invisible Mob",false,function(Value)
		Invisible = Value
	end)

	Misc:Toggle("Auto Haki",_G.AutoHaki,function(Value)
		_G.AutoHaki = Value  
	end)

	Misc:Toggle("Auto Agility",false,function(Value)
		_G.Agility = Value
	end)

	Misc:Toggle("Walk on Water",false,function(Value)
		_G.WalkWater = Value
		if _G.WalkWater == true then
			game.Players.LocalPlayer.Data.DevilFruit.Value = ("Ice-Ice")
		elseif _G.WalkWater == false then
			game.Players.LocalPlayer.Data.DevilFruit.Value = ("")
		end
	end)

	Fly = false  
	function activatefly()
		local mouse=game.Players.LocalPlayer:GetMouse''
		localplayer=game.Players.LocalPlayer
		game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
		local speedSET=25
		local keys={a=false,d=false,w=false,s=false}
		local e1
		local e2
		local function start()
			local pos = Instance.new("BodyPosition",torso)
			local gyro = Instance.new("BodyGyro",torso)
			pos.Name="EPIXPOS"
			pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			pos.position = torso.Position
			gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			gyro.cframe = torso.CFrame
			repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.cframe - gyro.cframe.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
					speed=1
				end
				if keys.w then
					new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+speedSET
				end
				if keys.s then
					new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+speedSET
				end
				if keys.d then
					new = new * CFrame.new(speed,0,0)
					speed=speed+speedSET
				end
				if keys.a then
					new = new * CFrame.new(-speed,0,0)
					speed=speed+speedSET
				end
				if speed>speedSET then
					speed=speedSET
				end
				pos.position=new.p
				if keys.w then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*90),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*90),0,0)
				else
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				end
			until not Fly
			if gyro then 
				gyro:Destroy() 
			end
			if pos then 
				pos:Destroy() 
			end
			flying=false
			localplayer.Character.Humanoid.PlatformStand=false
			speed=0
		end
		e1=mouse.KeyDown:connect(function(key)
			if not torso or not torso.Parent then 
				flying=false e1:disconnect() e2:disconnect() return 
			end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start()
	end
	Misc:Toggle("Fly",false,function(Value)
		Fly = Value
		activatefly()
	end)
	Misc:Toggle("No Clip",false,function(value)
		NoClip = value
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if NoClip or _G.Observation then
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
	)

	Misc:Line()

	Misc:Label("Sever")
	Misc:Button("Rejoin",function()
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
	end)
	local function HttpGet(url)
		return game:GetService("HttpService"):JSONDecode(htgetf(url))
	end
	Misc:Button("Server Hop",function()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
 --[[
 local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
 end)
 if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
 end
 ]]
		function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									-- delfile("NotSameServers.json")
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end

		function Teleport()
			while wait() do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
		end

		Teleport()
	end)

	Misc:Button("Teleport To Lower Server",function()
        local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
        if not _G.FailedServerID then _G.FailedServerID = {} end

        local function serversearch()
            data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
            for _, v in pairs(data_table.data) do
                pcall(function()
                    if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
                        maxplayers = v.playing
                        goodserver = v.id
                    end
                end)
            end
        end

        function getservers()
            pcall(serversearch)
            for i, v in pairs(data_table) do
                if i == "nextPageCursor" then
                    if gamelink:find"&cursor=" then
                        local a = gamelink:find"&cursor="
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" .. v
                    pcall(getservers)
                end
            end
        end

        pcall(getservers)
        wait()
        if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
        end
        table.insert(_G.FailedServerID, goodserver)
        game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
        end)

	if NewWorld then
		Misc:Line()
		Misc:Button("Remove Lava",function()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Lava" then   
					v:Destroy()
				end
			end
			for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
				if v.Name == "Lava" then   
					v:Destroy()
				end
			end
		end)

		Misc:Button("TP Flower Red",function()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Flower2" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
				end
			end
		end)

		Misc:Button("TP Flower Blue",function()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Flower1" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
				end
			end
		end)
	end

	function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	function UpdateChestChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if string.find(v.Name,"Chest") then
					if ChestESP then
						if string.find(v.Name,"Chest") then
							if not v:FindFirstChild('NameEsp'..Number) then
								local bill = Instance.new('BillboardGui',v)
								bill.Name = 'NameEsp'..Number
								bill.ExtentsOffset = Vector3.new(0, 1, 0)
								bill.Size = UDim2.new(1,200,1,30)
								bill.Adornee = v
								bill.AlwaysOnTop = true
								local name = Instance.new('TextLabel',bill)
								name.Font = "GothamBold"
								name.FontSize = "Size14"
								name.TextWrapped = true
								name.Size = UDim2.new(1,0,1,0)
								name.TextYAlignment = 'Top'
								name.BackgroundTransparency = 1
								name.TextStrokeTransparency = 0.5
								if v.Name == "Chest1" then
									name.TextColor3 = Color3.fromRGB(109, 109, 109)
									name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest2" then
									name.TextColor3 = Color3.fromRGB(173, 158, 21)
									name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest3" then
									name.TextColor3 = Color3.fromRGB(85, 255, 255)
									name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
							else
								v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	function UpdateDevilChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if DevilFruitESP then
					if string.find(v.Name, "Fruit") then   
						if not v.Handle:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Handle)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Handle
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						else
							v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						end
					end
				else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end)
		end
	end
	function UpdateFlowerChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if v.Name == "Flower2" or v.Name == "Flower1" then
					if FlowerESP then 
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
							if v.Name == "Flower1" then 
								name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(0, 0, 255)
							end
							if v.Name == "Flower2" then
								name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(255, 0, 0)
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end   
			end)
		end
	end
	Misc:Toggle("ESP Player",false,function(a)
		ESPPlayer = a
		while ESPPlayer do wait()
			UpdatePlayerChams()
		end
	end)
	Misc:Toggle("ESP Chest",false,function(a)
		ChestESP = a
		while ChestESP do wait()
			UpdateChestChams() 
		end
	end)
	Misc:Toggle("ESP Devil Fruit",false,function(a)
		DevilFruitESP = a
		while DevilFruitESP do wait()
			UpdateDevilChams() 
		end
	end)
	Misc:Toggle("ESP Flower",false,function(a)
		FlowerESP = a
		while FlowerESP do wait()
			UpdateFlowerChams() 
		end
	end)

	Misc:Line()
	Misc:Button("Redeem All Code", function()

		local string_1 = "UPD14";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Sub2NoobMaster123";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Sub2Daigrock";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Axiore";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "TantaiGaming";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "StrawHatMaine";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Sub2OfficialNoobie";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "TheGreatAce";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Fudd10";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Bignews";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "UPD15";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

	end)
	Misc:Button("Redeem Stat Refund Code", function()

		local string_1 = "Sub2UncleKizaru";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		Misc:Line()
	end)
	Misc:Button("FPS Boost",function(t)
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1
				v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			elseif v:IsA("MeshPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
				v.TextureID = 10385902758728957
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false
			end
		end
	end)
	Misc:Label("Auto Farm Level Lock")
	_G.LockLevelValue = 2000
	OldLevel = game.Players.localPlayer.Data.Level.Value
	Misc:Slider("Select Level Lock",1,_G.LockLevelValue,_G.LockLevelValue,function(value)
		_G.LockLevelValue = value
	end)
	Misc:Toggle("Lock Level",false,function(value)
		_G.LockLevel = value
	end)
	spawn(function()
		while wait(.1) do
			if _G.LockLevel then
				if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
					game.Players.localPlayer:Kick("การฟามเสร็จสิ้นแล้ว")
				end
			end
		end
	end)

	Misc:Toggle("Lock Level Stop Farm",false,function(value)
		_G.LockLevelStopFarm = value
	end)
	spawn(function()
		while wait(.1) do
			if _G.LockLevelStopFarm then
				if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
					_G.AutoFarm = false
					if _G.LockLevelStopFarm == false then
						return
					end
				end
			end
		end
	end)

	spawn(function()
		while wait(.1) do
			if AuctoClick then
				Click()
			end
		end
	end)

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

	spawn(function()
		while wait(.1) do
			if _G.AutoHaki then 
				if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

				else
					local args = {
						[1] = "Buso"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
			if AUTOHAKIObs then 
				if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

				else wait(1)
					local virtualUser = game:GetService('VirtualUser')
					virtualUser:CaptureController()

					virtualUser:SetKeyDown('0x65')
					wait(2)  
					virtualUser:SetKeyUp('0x65')
				end
			end
		end
	end)

spawn(function()
	while wait(.1) do
		if _G.Agility then
			game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
		end
	end
end)
end
