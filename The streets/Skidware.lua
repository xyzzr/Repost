local Target = nil
local runservice = game:GetService("RunService")
local uip = game:GetService("UserInputService")
local blinkspeed = 10
local shoottoggle = false
local godmode = false
local tptarget = nil
local mouse = game.Players.LocalPlayer:GetMouse()
local antigh = false
local noclip = false
local shootremote
local noslow = false
local blink = true
local blinking = false

    local antiaimconfig = {
        enabled = false,
    }
    local flyconfig = {
        flying = false,
        key = Enum.KeyCode.F,
        speed = 100,
        movement = {w = false, a = false, s = false, d = false},
    
    }
    local camsettings = {
        locking = false,
        locktarget = nil, 
}
local chat = game.Players.LocalPlayer.PlayerGui.Chat.Frame
chat.ChatChannelParentFrame.Visible = true
chat.ChatBarParentFrame.Position = chat.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chat.ChatChannelParentFrame.Size.Y)

-- right here is a check for the gun shoot remote since the skids who published the game think changing the name of it is cool and edgy
local remotenames = {
-- if theres a new shitty skidripped game that uses a different remote name then any of the ones in here just put a , and make a new line and put the name of the remote in the quotes
"Shoot",
"s",
"Fire",
}
function getremote()
for _,v in pairs(game.Players.LocalPlayer.Backpack.Glock:GetChildren()) do
if v:IsA("RemoteEvent") and table.find(remotenames,v.Name) then
return v
      end
   end
end
shootremote = getremote()

if game.PlaceId == 10046946702  then -- bypass for yevs especially skidded "remake"
function getchar() 
    return game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
    end
    
    -- disable shit
    for _, v in next, getconnections(game:GetService("ScriptContext").Error) do 
        v:Disable();
    end
    function loopdisable()
    for _,v in next, getconnections(getchar():WaitForChild("Humanoid").ChildRemoved) do
      v:Disable()  
    end
    for _,v in next, getconnections(getchar().ChildAdded) do
    v:Disable()
    end
    for _,v in next, getconnections(game.Players.LocalPlayer.DescendantAdded) do
    v:Disable()
    end
    for _,v in next, getconnections(game.ReplicatedStorage.Changed) do
        v:Disable()
    end
end


loopdisable()
game.Players.LocalPlayer.CharacterAdded:connect(loopdisable)
    -- end of disable shit

    local banargs = {"spd"," jumpheiught"," hipheight"," walkspeed override","wh"}
    
    local oldNameCall;oldNameCall = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
        if(checkcaller()) then return oldNameCall(self,...) end
        
        local arguements =  {...}
        local method = getnamecallmethod()
    
         if (self.Name == "lIIl" and table.find(banargs,arguements[1])) then
              return task.wait(9e9)
         end

        
        if (method == "Kick" and self == getchar()) then
            return task.wait(9e9)
        elseif (method == "BreakJoints" and self == getchar()) then
            return task.wait(9e9)
        elseif (method == "Destroy" and self == getchar()) then
             return task.wait(9e9)
        end
    
        if (arguements[1] == "WalkSpeed" or arguements[1] == "JumpPower" or arguements[1] == "HipHeight" or arguements[1] == "Health") then
        return task.wait(9e9)
        end
        
    
        
        return oldNameCall(self,...)
end))

local oldnewindex;oldnewindex = hookmetamethod(game,"__newindex",newcclosure(function(self,property,value)

if (checkcaller()) then return oldnewindex(self,property,value) end

if property == "Health" then
return
elseif property == "Anchored" or property == "CFrame" or property == "Position" then
if (self == getchar():FindFirstChild("Torso")) then
return
end

end



return oldnewindex(self,property,value)
end))
else
end 


local skidware = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local healthlabel = Instance.new("TextLabel")
local ammolabel = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local targetlabel = Instance.new("TextLabel")
local statuslabel = Instance.new("TextLabel")
local pinglabel = Instance.new("TextLabel")
local fpslabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel_2 = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local TextLabel_15 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local close = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local UIGradient_4 = Instance.new("UIGradient")

skidware.Name = "skidware"
skidware.Parent = game.CoreGui

Frame.Parent = skidware
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.882424235, 0, 0.752753973, 0)
Frame.Size = UDim2.new(0, 191, 0, 202)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 191, 0, 18)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "SkidWare"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(156, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(156, 0, 0))}
UIGradient.Offset = Vector2.new(1, 2)
UIGradient.Rotation = 5
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.10), NumberSequenceKeypoint.new(1.00, 0.10)}
UIGradient.Parent = TextLabel

healthlabel.Name = "healthlabel"
healthlabel.Parent = Frame
healthlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthlabel.BackgroundTransparency = 1.000
healthlabel.BorderSizePixel = 0
healthlabel.Position = UDim2.new(-0.0785340294, 0, 0.0891089141, 0)
healthlabel.Size = UDim2.new(0, 102, 0, 23)
healthlabel.Font = Enum.Font.Ubuntu
healthlabel.Text = "Health: nil"
healthlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
healthlabel.TextScaled = true
healthlabel.TextSize = 21.000
healthlabel.TextWrapped = true

ammolabel.Name = "ammolabel"
ammolabel.Parent = Frame
ammolabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ammolabel.BackgroundTransparency = 1.000
ammolabel.BorderSizePixel = 0
ammolabel.Position = UDim2.new(0.031413611, 0, 0.202970296, 0)
ammolabel.Size = UDim2.new(0, 102, 0, 23)
ammolabel.Font = Enum.Font.Ubuntu
ammolabel.Text = "Ammo: nil"
ammolabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ammolabel.TextScaled = true
ammolabel.TextSize = 21.000
ammolabel.TextWrapped = true

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

targetlabel.Name = "targetlabel"
targetlabel.Parent = Frame
targetlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetlabel.BackgroundTransparency = 1.000
targetlabel.BorderSizePixel = 0
targetlabel.Position = UDim2.new(0.031413611, 0, 0.202970296, 0)
targetlabel.Size = UDim2.new(0, 102, 0, 23)
targetlabel.Font = Enum.Font.Ubuntu
targetlabel.Text = "Target: nil"
targetlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
targetlabel.TextScaled = true
targetlabel.TextSize = 21.000
targetlabel.TextWrapped = true

statuslabel.Name = "statuslabel"
statuslabel.Parent = Frame
statuslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
statuslabel.BackgroundTransparency = 1.000
statuslabel.BorderSizePixel = 0
statuslabel.Position = UDim2.new(0.115183249, 0, 0.554455459, 0)
statuslabel.Size = UDim2.new(0, 102, 0, 23)
statuslabel.Font = Enum.Font.Ubuntu
statuslabel.Text = "Status: inactive"
statuslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statuslabel.TextScaled = true
statuslabel.TextSize = 21.000
statuslabel.TextWrapped = true

pinglabel.Name = "pinglabel"
pinglabel.Parent = Frame
pinglabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.BackgroundTransparency = 1.000
pinglabel.BorderSizePixel = 0
pinglabel.Position = UDim2.new(0.115183249, 0, 0.554455459, 0)
pinglabel.Size = UDim2.new(0, 102, 0, 23)
pinglabel.Font = Enum.Font.Ubuntu
pinglabel.Text = "Ping: nil"
pinglabel.TextColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.TextScaled = true
pinglabel.TextSize = 21.000
pinglabel.TextWrapped = true

fpslabel.Name = "fpslabel"
fpslabel.Parent = Frame
fpslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.BackgroundTransparency = 1.000
fpslabel.BorderSizePixel = 0
fpslabel.Position = UDim2.new(0.115183249, 0, 0.554455459, 0)
fpslabel.Size = UDim2.new(0, 102, 0, 23)
fpslabel.Font = Enum.Font.Ubuntu
fpslabel.Text = "FPS: nil"
fpslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.TextScaled = true
fpslabel.TextSize = 21.000
fpslabel.TextWrapped = true

Frame_2.Parent = skidware
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.455151528, 0, 0.37943697, 0)
Frame_2.Size = UDim2.new(0, 370, 0, 223)

ScrollingFrame.Parent = Frame_2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.232432425, 0, -0.269058287, 0)
ScrollingFrame.Size = UDim2.new(0, 346, 0, 226)
ScrollingFrame.Visible = false

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(0, 124, 0, 23)
TextLabel_2.Font = Enum.Font.Ubuntu
TextLabel_2.Text = "shoot [Target] / stopshoot"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.179190755, 0, 0.101769909, 0)
TextLabel_3.Size = UDim2.new(0, 124, 0, 23)
TextLabel_3.Font = Enum.Font.Ubuntu
TextLabel_3.Text = "camlock [Target] / uncamlock"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = ScrollingFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.179190755, 0, 0.101769909, 0)
TextLabel_4.Size = UDim2.new(0, 124, 0, 23)
TextLabel_4.Font = Enum.Font.Ubuntu
TextLabel_4.Text = "noclip"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = ScrollingFrame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.179190755, 0, 0.101769909, 0)
TextLabel_5.Size = UDim2.new(0, 124, 0, 23)
TextLabel_5.Font = Enum.Font.Ubuntu
TextLabel_5.Text = "blinkspeed [Value]"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = ScrollingFrame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.179190755, 0, 0.101769909, 0)
TextLabel_6.Size = UDim2.new(0, 124, 0, 23)
TextLabel_6.Font = Enum.Font.Ubuntu
TextLabel_6.Text = "flyspeed [Value]"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

TextLabel_7.Parent = ScrollingFrame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0, 0, 0.535398245, 0)
TextLabel_7.Size = UDim2.new(0, 124, 0, 17)
TextLabel_7.Font = Enum.Font.Ubuntu
TextLabel_7.Text = "godmode"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

TextLabel_8.Parent = ScrollingFrame
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(0, 0, 0.535398245, 0)
TextLabel_8.Size = UDim2.new(0, 124, 0, 17)
TextLabel_8.Font = Enum.Font.Ubuntu
TextLabel_8.Text = "goto [Target]"
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

TextLabel_9.Parent = ScrollingFrame
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.Position = UDim2.new(0, 0, 0.535398245, 0)
TextLabel_9.Size = UDim2.new(0, 124, 0, 17)
TextLabel_9.Font = Enum.Font.Ubuntu
TextLabel_9.Text = "rejoin"
TextLabel_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

TextLabel_10.Parent = ScrollingFrame
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Position = UDim2.new(0, 0, 0.535398245, 0)
TextLabel_10.Size = UDim2.new(0, 124, 0, 17)
TextLabel_10.Font = Enum.Font.Ubuntu
TextLabel_10.Text = "antigh"
TextLabel_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

TextLabel_11.Parent = ScrollingFrame
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Position = UDim2.new(0.00289017335, 0, 0.849557519, 0)
TextLabel_11.Size = UDim2.new(0, 124, 0, 17)
TextLabel_11.Font = Enum.Font.Ubuntu
TextLabel_11.Text = "view [Target] / unview"
TextLabel_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

TextLabel_12.Parent = ScrollingFrame
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.Position = UDim2.new(0.00289017335, 0, 0.849557519, 0)
TextLabel_12.Size = UDim2.new(0, 124, 0, 17)
TextLabel_12.Font = Enum.Font.Ubuntu
TextLabel_12.Text = "antiaim"
TextLabel_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true

TextLabel_13.Parent = ScrollingFrame
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.Position = UDim2.new(0.00289017335, 0, 0.849557519, 0)
TextLabel_13.Size = UDim2.new(0, 124, 0, 17)
TextLabel_13.Font = Enum.Font.Ubuntu
TextLabel_13.Text = "noslow"
TextLabel_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14.000
TextLabel_13.TextWrapped = true

TextLabel_14.Parent = Frame_2
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(-0.232432425, 0, -0.385650218, 0)
TextLabel_14.Size = UDim2.new(0, 346, 0, 27)
TextLabel_14.Font = Enum.Font.Ubuntu
TextLabel_14.Text = "SkidWare Commands"
TextLabel_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.TextSize = 14.000
TextLabel_14.Visible = false

TextLabel_15.Parent = ScrollingFrame
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.Position = UDim2.new(0.00289017335, 0, 0.849557519, 0)
TextLabel_15.Size = UDim2.new(0, 124, 0, 17)
TextLabel_15.Font = Enum.Font.Ubuntu
TextLabel_15.Text = "blink"
TextLabel_15.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(156, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(156, 0, 0))}
UIGradient_2.Parent = TextLabel_14

close.Name = "close"
close.Parent = TextLabel_14
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.947976887, 0, 0, 0)
close.Size = UDim2.new(0, 25, 0, 21)
close.Font = Enum.Font.Ubuntu
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000
close.MouseButton1Click:connect(function()
ScrollingFrame.Visible = false
TextLabel_14.Visible = false
end)


function makenotif(text)
    task.spawn(function()
        
        local notification = Instance.new("Frame")
        local UIGradient = Instance.new("UIGradient")
        local title = Instance.new("TextLabel")
        local UIGradient_2 = Instance.new("UIGradient")
        local message = Instance.new("TextLabel")
    
    
    
        notification.Name = "notification"
        notification.Parent = skidware
        notification.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
        notification.BorderSizePixel = 0
        notification.Position = UDim2.new(1.999, 0,0.535, 0)
        notification.Size = UDim2.new(0, 229, 0, 78)
    
        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(117, 117, 117)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(117, 117, 117))}
        UIGradient.Parent = notification
    
        title.Name = "title"
        title.Parent = notification
        title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        title.BorderSizePixel = 0
        title.Position = UDim2.new(0, 0, -0.179487184, 0)
        title.Size = UDim2.new(0, 229, 0, 14)
        title.Font = Enum.Font.Ubuntu
        title.Text = "SkidWare"
        title.TextColor3 = Color3.fromRGB(0, 0, 0)
        title.TextSize = 14.000
    
        UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(156, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(156, 0, 0))}
        UIGradient_2.Parent = title
    
        message.Name = "message"
        message.Parent = notification
        message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        message.BackgroundTransparency = 1.000
        message.Position = UDim2.new(0.0043668123, 0, 0, 0)
        message.Size = UDim2.new(0, 228, 0, 78)
        message.Font = Enum.Font.Ubuntu
        message.Text = text
        message.TextColor3 = Color3.fromRGB(255, 255, 255)
        message.TextSize = 19.000
        message.TextWrapped = true
            
            notification:TweenPosition(UDim2.new(0.847, 0,0.535, 0))
            task.wait(3)
            notification:TweenPosition(UDim2.new(1.999, 0,0.535, 0))
            task.wait(0.3)
            notification:Destroy()
        end)
    end
    local function makemover(place)
        local pos = Instance.new("BodyPosition")
        pos.P = 50000
        pos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        pos.Parent = place
        pos.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position	
    end


    local function GetPlayer(Player : string)
        for I, V in next, game.Players:GetPlayers() do 
              if string.sub(string.lower(V.Name), 1, string.len(Player)) == string.lower(Player) then 
                  return V
              end
          end
        
        return nil
    end
    function Respawn(position)
        local m = Instance.new("Model")
        local t = Instance.new("Humanoid")
        t.Parent = m
        local l = game.Players.LocalPlayer
        local c = l.Character
        local r = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.MutePlayerRequest
        r:InvokeServer()
        l.Character = a
        l.Character = c
        task.wait(4.79)
        c:BreakJoints()
 
        task.wait(0.4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position.X,position.Y,position.Z)
    end

    uip.InputBegan:connect(function(ye)
        if ye.KeyCode == Enum.KeyCode.LeftShift then
            blinking = true
        end
    end)
    
    uip.InputEnded:connect(function(ye)
        if ye.KeyCode == Enum.KeyCode.LeftShift then
            blinking = false
        end
    end)
function showcmds()
ScrollingFrame.Visible = true
TextLabel_14.Visible = true
    end
function getping()
return game.Stats.PerformanceStats.Ping:GetValue() / 1000
end
    
    runservice.Stepped:connect(function()
        if blink == true then
        if blinking == true then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection / 5 * blinkspeed 
               end)
            end
        end
    end)
    uip.InputBegan:connect(function(fly,chats)
        if chats then return end
            if fly.KeyCode == flyconfig.key then
                flyconfig.flying = not flyconfig.flying
        if flyconfig.flying == true then
        makemover(game.Players.LocalPlayer.Character.HumanoidRootPart)
        else
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
        end
            elseif fly.KeyCode == Enum.KeyCode.W then
                flyconfig.movement.w = true
            elseif fly.KeyCode == Enum.KeyCode.A then
                flyconfig.movement.a = true
            elseif fly.KeyCode == Enum.KeyCode.S then
                flyconfig.movement.s = true
            elseif fly.KeyCode == Enum.KeyCode.D then
                flyconfig.movement.d = true
            end
        end)
        
        uip.InputEnded:connect(function(fly,chats)
            if chats then
                return
            end
            if fly.KeyCode == Enum.KeyCode.W then
                flyconfig.movement.w = false
            elseif fly.KeyCode == Enum.KeyCode.A then
                flyconfig.movement.a = false
            elseif fly.KeyCode == Enum.KeyCode.S then
                flyconfig.movement.s = false
            elseif fly.KeyCode == Enum.KeyCode.D then
                flyconfig.movement.d = false
            end
        end)
        
        
        game:GetService("RunService").RenderStepped:connect(function()
                if flyconfig.flying == true then
                    
                    if flyconfig.movement.w == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.BodyPosition.Position = game.Players.LocalPlayer.Character.Torso.CFrame.p + workspace.CurrentCamera.CoordinateFrame.lookVector / 5 * flyconfig.speed 
                    elseif flyconfig.movement.a == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.BodyPosition.Position = game.Players.LocalPlayer.Character.Torso.CFrame.p - workspace.CurrentCamera.CoordinateFrame.rightVector / 5 * flyconfig.speed
                    elseif flyconfig.movement.s == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.BodyPosition.Position = game.Players.LocalPlayer.Character.Torso.CFrame.p - workspace.CurrentCamera.CoordinateFrame.lookVector / 5 * flyconfig.speed
                    elseif flyconfig.movement.d == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.BodyPosition.Position = game.Players.LocalPlayer.Character.Torso.CFrame.p + workspace.CurrentCamera.CoordinateFrame.rightVector / 5 * flyconfig.speed
                    
                end
                for i = 1,400 do
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
                end
                if flyconfig.flying == true and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    flyconfig.flying = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                end
            end
        end)

    runservice.Stepped:connect(function()
        if noclip == true then
        for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                 if v:IsA("BasePart") and v.CanCollide == true then
                       v.CanCollide = false
                 end
            end
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                v.CanCollide = false
                end
            end
        end
    end)

runservice.RenderStepped:connect(function()
if noslow == true then
pcall(function()
game.Players.LocalPlayer.Character:FindFirstChild("Action"):Destroy() -- wow so fucking hard right?
       end)
    end
end)

runservice.RenderStepped:connect(function()
	pcall(function()
	if shoottoggle == true then
		for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") and v.Name == "Glock" or v.Name == "Shotty" or v.Name == "Sawed Off" or v.Name == "Uzi" then
                v[shootremote.Name]:FireServer(game.Players[Target.Name].Character.Torso.CFrame + Vector3.new(game.Players[Target.Name].Character.Humanoid.MoveDirection.X,game.Players[Target.Name].Character.Humanoid.MoveDirection.Y,game.Players[Target.Name].Character.Humanoid.MoveDirection.Z) * getping())
                  end
               end
            end
        end)	
    end)
runservice.RenderStepped:connect(function()
	pcall(function()
	    if Target ~= nil then
		local targmag = (game.Players[Target.Name].Character.Torso.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
		if game.Players[Target.Name].Character.Humanoid.Health == 0 or game.Players[Target.Name].Character.Humanoid == nil or game.Players[Target.Name].Character:FindFirstChild("ForceField") or targmag > 120 then
			shoottoggle = false
		else
			shoottoggle = true
				
		   end
		end
	end)
end)
runservice.RenderStepped:connect(function()
    if camsettings.locking == true then
    pcall(function()
    if game.Players[camsettings.locktarget.Name] ~= nil then
    game.Workspace.Camera.CFrame = CFrame.new(game.Workspace.Camera.CFrame.p, game.Players[camsettings.locktarget.Name].Character:FindFirstChild("Torso").CFrame.p)
    
                end
            end)
        else
    end
end)


runservice.Heartbeat:connect(function()
    if antiaimconfig.enabled == true then
            
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -1060
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(-1060), 0)
    game.Players.LocalPlayer.Character.Humanoid:Move(Vector3.new(20,0,-20),true)			
    end
end)

runservice.RenderStepped:connect(function()
    if antigh == true then
        pcall(function()
            if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.PlatformStanding then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(2.7) do
    if godmode == true then
        pcall(function()
    comeback = game.Players.LocalPlayer.Character.Torso.CFrame
    Respawn(comeback)
           end)
        end
    end
end)

runservice.RenderStepped:connect(function()
	pcall(function()
		if Target == nil then
			statuslabel.Text = "Status: Inactive"
		else

			if game.Players[Target.Name].Character.Humanoid.Health < game.Players.LocalPlayer.Character.Humanoid.Health then
				statuslabel.Text = "Status: Winning"
			else
				statuslabel.Text = "Status: Losing"
			end
			if game.Players[Target.Name].Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.Health then
				statuslabel.Text = "Status: Tied"
			end
		end
	end)
end)

runservice.RenderStepped:connect(function()
if Target ~= nil then
        targetlabel.Text = "Target: "..Target.Name..""
else
targetlabel.Text = "Target: nil"
    end
end)

if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	local hum = game.Players.LocalPlayer.Character.Humanoid
	healthlabel.Text = string.format("Health: %d", hum.Health)
	local con = hum:GetPropertyChangedSignal("Health"):Connect(function()
		healthlabel.Text = string.format("Health: %d", hum.Health)
	end)
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
	repeat wait() until c:FindFirstChild("Humanoid")
	local hum = c.Humanoid
	healthlabel.Text = string.format("Health: %d", hum.Health)
	local con = hum:GetPropertyChangedSignal("Health"):Connect(function()
		healthlabel.Text = string.format("Health: %d", hum.Health)
	end)
end)

runservice.RenderStepped:connect(function()

	for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v:FindFirstChild("Ammo") then
				ammolabel.Text = "Ammo: "..v.Ammo.Value..""
			elseif not v:FindFirstChildOfClass("Tool") or not v:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
				ammolabel.Text = "Ammo: nil"
			end
		end	
	end
end)
game.Players.LocalPlayer.Character.ChildRemoved:connect(function(shit)
if shit:IsA("Tool") then
         ammolabel.Text = "Ammo: nil"
    end
end)
runservice.RenderStepped:connect(function()
    local fps = game.Stats.FrameRateManager.AverageFPS:GetValue()
	local ping = game.Stats.PerformanceStats.Ping:GetValue()
       
    fpslabel.Text = string.format("FPS: %d",fps)
    pinglabel.Text = string.format("Ping: %d",ping)
     
end)








local cmdbar = Instance.new("ScreenGui")
local bar = Instance.new("Frame")
local TextBox = Instance.new("TextBox")

cmdbar.Name = "cmdbar"
cmdbar.Parent = game.CoreGui

bar.Name = "bar"
bar.Parent = cmdbar
bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
bar.BorderSizePixel = 4
bar.Position = UDim2.new(-0.00182815362, 0, 0.375446975, 0)
bar.Size = UDim2.new(0, 222, 0, 25)
bar.Visible = false

TextBox.Parent = bar
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.0135135138, 0, 0, 0)
TextBox.Size = UDim2.new(0, 219, 0, 25)
TextBox.Font = Enum.Font.Ubuntu
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(256, 256, 256)
TextBox.TextSize = 24.000
TextBox.TextScaled = true
uip.InputBegan:connect(function(keybind,chats)
	if chats then
		return
	end

	if keybind.KeyCode.Name == "Semicolon" then
		bar.Visible = true
		TextBox.Text = ""
		task.wait(0.1) -- oooooooomggggggggggggggggggg
		TextBox:CaptureFocus()
	end
end)
TextBox.FocusLost:connect(function()
    if TextBox.Text:sub(1,6) == "shoot " then
        Target = GetPlayer(TextBox.Text:sub(7))
        if Target ~= nil then
			shoottoggle = true
			makenotif("Started Shooting At "..Target.Name.."")
			else
			makenotif("Player Not Found")
		end
    elseif TextBox.Text == "rejoin" then
        game:GetService('TeleportService'):Teleport(game.PlaceId)

    elseif TextBox.Text == "cmds" then
       showcmds() 
    
elseif TextBox.Text == "stopshoot" then
  shoottoggle = false
  Target = nil
  makenotif("Stopped Shooting")
elseif TextBox.Text:sub(1,8) == "camlock " then

    camsettings.locktarget = GetPlayer(TextBox.Text:sub(9))
	if camsettings.locktarget ~= nil then
	camsettings.locking = true
	makenotif("Started Camlocking "..camsettings.locktarget.Name.."")
	else
	makenotif("Player Not Found")
	end
elseif TextBox.Text == "uncamlock" then
    camsettings.locking = false
    camsettings.locktarget = nil
    makenotif("Stopped Camlocking")
elseif TextBox.Text:sub(1,11) == "blinkspeed " then
    blinkspeed = TextBox.Text:sub(12)

    makenotif("Blinkspeed Value Changed To "..blinkspeed.."")
elseif TextBox.Text == "noclip" then
    makenotif("Toggled Noclip")
    noclip = not noclip
elseif TextBox.Text:sub(1,5) == "goto " then
		
    tptarget = GetPlayer(TextBox.Text:sub(6))
    if tptarget ~= nil then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tptarget.Character.Torso.CFrame
    makenotif("Teleporting to  "..tptarget.Name.."")
    tptarget = nil
    else
    makenotif("Player Not Found")
    end
elseif TextBox.Text:sub(1,9) == "flyspeed " then
    flyconfig.speed = TextBox.Text:sub(10)
    makenotif("Flyspeed Value Changed To "..flyconfig.speed.."")
elseif TextBox.Text == "antigh" then
    antigh = not antigh
    makenotif("Anti-Groundhit Toggled")
elseif TextBox.Text:sub(1,5) == "view " then
			
    local viewing = GetPlayer(TextBox.Text:sub(6))
    if viewing ~= nil then
    game.workspace.CurrentCamera.CameraSubject = game.Players[tostring(viewing)].Character
    makenotif("Started Viewing  "..viewing.Name.."")
    else
    makenotif("Player Not Found")
end
elseif TextBox.Text == "unview" then
    game.workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
elseif TextBox.Text == "godmode" then
    makenotif("Instant Respawn Godmode Toggled")
    comeback = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    Respawn(comeback)
    godmode = not godmode
elseif TextBox.Text == "antiaim" then
    makenotif("Anti Aim Toggled")
    antiaimconfig.enabled = not antiaimconfig.enabled
elseif TextBox.Text == "noslow" then

makenotif("No-Slow Toggled")
noslow = not noslow
elseif TextBox.Text == "blink" then
blink = not blink
makenotif("Toggled Blink")

end
bar.Visible = false
end)

makenotif("SkidWare Loaded, Made By Scartesu")
