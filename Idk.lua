local library = {}
local function AddCorner(Parent, Radius1, Radius2)
    local UICorner = Instance.new("UICorner")
    Radius1 = Radius1 or 0
    Radius2 = Radius2 or 10
    UICorner.Name = Parent.Name .. " Corner"
    UICorner.CornerRadius = UDim.new(Radius1, Radius2)
    UICorner.Parent = Parent
end
function library:CreateMain(key, Interface)
    local Gui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local TopTitle = Instance.new("TextLabel")
    local TabFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local Logo = Instance.new("ImageLabel")
    local Verified = Instance.new("ImageLabel")
    local CoreGui = game:GetService("CoreGui")
    local ExtraSize = 0
    local ExtraTextSize = 0
    local UserInputService = game:GetService("UserInputService")
    local bn = {}
    local keybinds = {}
    keybinds[0] = {}
    keybinds[0]["pressable"] = false
    local TabCount = 0.02
    local FirstTab = true
    local TableTab = {}
    local configs = {}
    local defaults = {
        ["arm7-4a/mobilesupport"] = {
            Toggle = {},
            exploit = identifyexecutor(),
            UIStrokeColor = "Really red"
        }
    }
    local tabtp = false
    local file = ".SHConfig"
    configs = defaults
    Interface = Interface or "Mobile"
    if Interface == "Mobile" then
        ExtraSize = 0
        ExtraTextSize = 0
    elseif Interface == "Pc" then
        ExtraSize = 15
        ExtraTextSize = 5
    end
    local success, errors = pcall(function()
        configs = game:GetService("HttpService"):JSONDecode(readfile(file)) end)
        
        if not success and errors then
            writefile(file, game:GetService("HttpService"):JSONEncode(defaults))
            configs = defaults 
            else
if configs["arm7-4a/mobilesupport"]["UIStrokeColor"] ~= nil then else
            writefile(file, game:GetService("HttpService"):JSONEncode(defaults))
            configs = defaults 
            
            end
        end
        
        local function async(name, value)
        configs["arm7-4a/mobilesupport"]["Toggle"][name] = value
        writefile(file, game:GetService("HttpService"):JSONEncode(configs))
    end
    local function asyncStroke(value)
        configs["arm7-4a/mobilesupport"]["UIStrokeColor"] = value
        writefile(file, game:GetService("HttpService"):JSONEncode(configs))
    end
    local function getasync(name)
        return configs["arm7-4a/mobilesupport"][name]
    end
local function AddStroke(Parent, Thickness, Color)
    local UICorner = Instance.new("UIStroke")
    Color = Color or BrickColor.new(configs["arm7-4a/mobilesupport"]["UIStrokeColor"]).Color
    Thickness = Thickness or 5
    UICorner.Name = Parent.Name .. " Stroke"
    UICorner.Color = Color
    UICorner.ApplyStrokeMode = "Contextual"
    UICorner.Enabled = true
    UICorner.LineJoinMode = "Round"
    UICorner.Thickness = Thickness
    UICorner.Transparency = 0
    UICorner.Parent = Parent
end
local function protect_gui(obj) 
if destroyed then
   obj.Parent = CoreGui
   return
end
if syn and syn.protect_gui then
syn.protect_gui(obj)
obj.Parent = CoreGui
elseif PROTOSMASHER_LOADED then
obj.Parent = get_hidden_gui()
else
obj.Parent = CoreGui
end
end
    
    Gui.Name = "Symphony Hub"
    protect_gui(Gui)
    Gui.ResetOnSpawn = false
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Gui
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Size = UDim2.new(0, 0, 0, 20)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Visible = false
    MainFrame.Active = true
    MainFrame.Draggable = true
    AddCorner(MainFrame, 0, 5)
    AddStroke(MainFrame)
    
    TopTitle.Name = "TopTitle"
    TopTitle.Parent = MainFrame
    TopTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TopTitle.Size = UDim2.new(0, 450 + ExtraSize, 0, 20 + ExtraSize)
    TopTitle.Font = Enum.Font.SourceSansBold
    TopTitle.Text = ""
    TopTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TopTitle.TextSize = 20 + ExtraTextSize
    TopTitle.TextXAlignment = Enum.TextXAlignment.Left
   -- AddStroke(TopTitle)
    
    TabFrame.Name = "TabFrame"
    TabFrame.Parent = MainFrame
    TabFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    TabFrame.Size = UDim2.new(0, 0, 0, 175 + ExtraSize)
    TabFrame.Position = UDim2.new(0.023, 0, 0.39, 0)
    TabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    TabFrame.ScrollBarThickness = 0
    TabFrame.Visible = false
    AddCorner(TabFrame, 0, 5)
    AddStroke(TabFrame, 4)
    UIListLayout.Parent = TabFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.01, 1)
    
    Logo.Name = "Symphony Hub Logo"
    Logo.Parent = MainFrame
    Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Logo.BackgroundTransparency = 0
    Logo.Position = UDim2.new(0.023, 0, 0.09, 0)
    Logo.Size = UDim2.new(0, 0, 0, 85 + ExtraSize)
    Logo.Image = "rbxassetid://13564730595"
    Logo.Visible = false
    
    AddCorner(Logo, 0, 5)
    Verified.Name = "Symphony Hub Verified"
    Verified.Parent = TopTitle
    Verified.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Verified.BackgroundTransparency = 1
    Verified.Position = UDim2.new(0.42, 0, 0.5, 0)
    Verified.AnchorPoint = Vector2.new(0.5, 0.5)
    Verified.Size = UDim2.new(0, 17.5 + ExtraSize, 0, 17.5 + ExtraSize)
    Verified.Image = "rbxassetid://9531355888"
    Verified.Visible = false
    
    AddCorner(Verified, 0, 5)
    
    task.wait(1)
    
    MainFrame.Visible = true
    MainFrame:TweenSize(UDim2.new(0, 450 + ExtraSize, 0, 20 + ExtraSize), "Out", "Quad", 0.5, true)
    
    task.wait(0.5)
    
    local title = " • Symphony Hub [BETA]"
    
    for i = 1, #title do
        TopTitle.Text = string.sub(title, 1, i)
        wait(0.1)
    end
if Interface == "Mobile" then
    
elseif Interface == "Pc" then
    Verified.Position = UDim2.new(0.52, 0, 0.5, 0)
    TabFrame.Position = UDim2.new(0.023, 0, 0.42, 0)
    Logo.Position = UDim2.new(0.022, 0, 0.115, 0)
    Logo.Size = UDim2.new(0, 0, 0, 82.5 + ExtraSize)
end
    Verified.Visible = false
    task.wait(0.5)
    
    if Interface == "Mobile" then
        MainFrame:TweenSize(UDim2.new(0, 450 + ExtraSize, 0, 300 + ExtraSize), "Out", "Quad", 0.5, true)
    elseif Interface == "Pc" then
        MainFrame:TweenSize(UDim2.new(0, 450 + ExtraSize + 25, 0, 300 + ExtraSize + 25), "Out", "Quad", 0.5, true)
    end
    
    UserInputService.InputBegan:Connect(function(KEY)
        if KEY.KeyCode == Enum.KeyCode.Unknown then return end
        if KEY.KeyCode == key then
            MainFrame.Visible = not MainFrame.Visible
        else
            if keybinds[0]["pressable"] then
                for _ = 1, #keybinds do
                    if keybinds[_].Value == "" then
                        keybinds[_].Value = KEY.KeyCode
                        keybinds[_].Inst.Text = UserInputService:GetStringForKeyCode(KEY.KeyCode)
                        keybinds[0]["pressable"] = false
                    end
                end
            else
                for _ = 1, #keybinds do
                    if keybinds[_].Value == KEY.KeyCode then
                        keybinds[_].Callback()
                    end
                end
            end
        end
    end)
    
    function bn:CreateTab(name, rbxid)
        local Tabb = Instance.new("Frame")
        local Tab = Instance.new("TextButton")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local Section = Instance.new("TextLabel")
        rbxid = rbxid or false
    
        Tab.Name = "Tab_" .. name
        Tab.Parent = Tabb
        Tab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Tab.Size = UDim2.new(0, 95 + ExtraSize, 0, 20 + ExtraSize)
        Tab.Font = Enum.Font.SourceSansBold
        Tab.Text = name
        Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tab.TextSize = 13 + ExtraTextSize
        
        Tabb.Name = "Tabb_" .. name
        Tabb.Parent = TabFrame
        Tabb.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Tabb.Size = UDim2.new(0, 95 + ExtraSize, 0, 20 + ExtraSize)
        Tabb.Position = UDim2.new(0.05, 0, TabCount, 0)
        AddCorner(Tab, 0, 5)
        AddStroke(Tabb, 2)
    
        ScrollingFrame.Name = "Inst_" .. name
        ScrollingFrame.Parent = MainFrame
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        ScrollingFrame.Size = UDim2.new(0, 0, 0, 265 + ExtraSize)
        ScrollingFrame.Position = UDim2.new(0.29, 0, 0.09, 0)
        ScrollingFrame.ScrollBarThickness = 0
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
        ScrollingFrame.Visible = false
        AddCorner(ScrollingFrame, 0, 5)
        AddStroke(ScrollingFrame)
    
        UIListLayout.Parent = ScrollingFrame
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0.01, 1)
    
        Section.Name = "Section"
        Section.Parent = ScrollingFrame
        Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Section.BackgroundTransparency = 1
        Section.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
        Section.Font = Enum.Font.SourceSansBold
        Section.Text = " " .. name .. ":"
        Section.TextColor3 = Color3.fromRGB(255, 255, 255)
        Section.TextSize = 20 + ExtraTextSize
        Section.TextXAlignment = Enum.TextXAlignment.Left
        
        if Interface == "Mobile" then
        elseif Interface == "Pc" then
ScrollingFrame.Position = UDim2.new(0.31, 0, 0.13, 0)
Tab.Text = " " .. Tab.Text
end
        if rbxid then
            local ImageR = Instance.new("ImageLabel")
            
            ImageR.Name = "Image Side"
            ImageR.Parent = Tab
            ImageR.Image = rbxid
if Interface == "Mobile" then
            ImageR.Size = UDim2.new(0, 17.5 + ExtraSize - 2.5, 0, 17.5 + ExtraSize - 2.5)
            elseif Interface == "Pc" then
            ImageR.Size = UDim2.new(0, 14 + ExtraSize - 2.5, 0, 14 + ExtraSize - 2.5)
            end
            ImageR.Position = UDim2.new(0.1, 0, 0.5, 0)
            ImageR.AnchorPoint = Vector2.new(0.5, 0.5)
            ImageR.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            ImageR.BackgroundTransparency = 0
            ImageR.ImageColor3 = Color3.fromRGB(255, 255, 255)
            AddCorner(ImageR, 0, 5)
        else
        end
    
        local function Click()
            if not tabtp then
                tabtp = true
                for _ = 1, #TableTab do
                    if TableTab[_].Inst.Visible then
                        game:GetService("TweenService"):Create(TableTab[_].Tab,TweenInfo.new(0.25),{ TextSize = 13 + ExtraTextSize}):Play()
                        TableTab[_].Inst:TweenSize(UDim2.new(0, 0, 0, 265 + ExtraSize), "Out", "Quad", 0.5, true)
                        wait(0.5)
                        TableTab[_].Inst.Visible = false
                    end
                end
                ScrollingFrame.Visible = true
                ScrollingFrame:TweenSize(UDim2.new(0, 315 + ExtraSize, 0, 265 + ExtraSize), "Out", "Quad", 0.5, true)
                game:GetService("TweenService"):Create(Tab,TweenInfo.new(0.25),{ TextSize = 16 + ExtraTextSize}):Play()
                wait(0.25)
                tabtp = false
            end
        end
    
        TabCount = TabCount + 0.1
    
        local count = #TableTab + 1
        TableTab[count] = {}
        TableTab[count].Name = name
        TableTab[count].Tab = Tab
        TableTab[count].Inst = ScrollingFrame
    
        Tab.MouseButton1Click:Connect(Click)
    
        if FirstTab then
            FirstTab = false
            wait(0.5)
            TabFrame.Visible = true
if Interface == "Mobile" then
            TabFrame:TweenSize(UDim2.new(0, 105 + ExtraSize, 0, 175 + ExtraSize), "Out", "Quad", 0.5, true)
            elseif Interface == "Pc" then
            TabFrame:TweenSize(UDim2.new(0, 105 + ExtraSize + 5, 0, 175 + ExtraSize + 2), "Out", "Quad", 0.5, true)
            end
            Logo.Visible = true
if Interface == "Mobile" then
            Logo:TweenSize(UDim2.new(0, 105 + ExtraSize, 0, 85 + ExtraSize), "Out", "Quad", 0.5, true)elseif Interface == "Pc" then
            Logo:TweenSize(UDim2.new(0, 105 + ExtraSize + 5, 0, 82.5 + ExtraSize + 2), "Out", "Quad", 0.5, true)
            end
            ScrollingFrame.Visible = true
            ScrollingFrame:TweenSize(UDim2.new(0, 315 + ExtraSize, 0, 265 + ExtraSize), "Out", "Quad", 0.5, true)
            game:GetService("TweenService"):Create(Tab,TweenInfo.new(0.25),{ TextSize = 16 + ExtraTextSize}):Play()
        else
        end
    
        local Property = {}
        
        task.wait(0.5)
    
        function Property:CreateButton(btnName, callback)
            btnName = btnName or "Button"
            callback = callback or function() end
            
            local ButtonE = Instance.new("Frame")
            local Button = Instance.new("TextButton")
            
            Button.Name = btnName .. "_Button"
            Button.Parent = ButtonE
            Button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Button.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            Button.Font = Enum.Font.SourceSansBold
            Button.Text = btnName
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 20 + ExtraTextSize
            Button.MouseButton1Click:Connect(callback)
            
            ButtonE.Name = btnName .. "_Button"
            ButtonE.Parent = ScrollingFrame
            ButtonE.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            ButtonE.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            
            AddCorner(Button, 0, 5)
            AddStroke(ButtonE)
            AddCorner(ButtonE, 0, 5)
        end
    
        function Property:CreateLabel(lbName)
            lbName = lbName or "Label"
            
            local Label = Instance.new("TextLabel")
            local upt = {}
            
            Label.Name = lbName .. "_Label"
            Label.Parent = ScrollingFrame
            Label.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(0, 315 + ExtraSize, 0, 20 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = lbName
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 17 + ExtraTextSize
            
            function upt:Update(new)
                Label.Text = new
            end
            return upt
        end
        
        function Property:UIStrokeSettingLoad()
        
            
            local Label = Instance.new("TextLabel")
            local upt = {}
            
            Label.Name = "Label"
            Label.Parent = ScrollingFrame
            Label.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(0, 315 + ExtraSize, 0, 20 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = "UI Stroke: " .. getasync("UIStrokeColor")
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 17 + ExtraTextSize
            
            function updatee(new)
                Label.Text = new
            end
        function create(lbName, list, callback)
            lbName = lbName or "Label"
            list = list or {}
            callback = callback or function() end
            
            local ButtonE = Instance.new("Frame")
            local Label = Instance.new("TextButton")
            local selects = ""
            local upt = {}
            local Instp = {}
            local open = false
            
            ButtonE.Name = "Frame"
            ButtonE.Parent = ScrollingFrame
            ButtonE.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            ButtonE.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            
            AddStroke(ButtonE)
            AddCorner(ButtonE, 0, 5)
            Label.Name = lbName .. "_Label"
            Label.Parent = ButtonE
            Label.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Label.BackgroundTransparency = 0
            Label.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = "🔻 " .. lbName
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 17 + ExtraTextSize
            
            function Toggle()
                open = not open
                for _ = 1, #Instp do
                    if open then
                        Instp[_].Visible = true
                        Label.Text = "🔺 " .. lbName .. selects
                    else
                        Instp[_].Visible = false
                        Label.Text = "🔻 " .. lbName .. selects
                    end
                end
            end
            
            Label.MouseButton1Click:Connect(Toggle)
            
            for _ = 1, #list do
                local Button = Instance.new("TextButton")
                local ButtonEE = Instance.new("Frame")
                
                Button.Name = list[_] .. "_Button"
                Button.Parent = ButtonEE
                Button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
                Button.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
                Button.Font = Enum.Font.SourceSansBold
                Button.Text = "➡️ " .. list[_] .. " ⬅️"
                Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                Button.TextSize = 20 + ExtraTextSize
                ButtonEE.Visible = false
                Button.MouseButton1Click:Connect(function()
                    selects = " - " .. list[_]
                    Toggle()
                    callback(list[_])
                end)
                ButtonEE.Name = list[_] .. "_Button"
                ButtonEE.Parent = ScrollingFrame
                ButtonEE.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
                ButtonEE.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
                AddStroke(ButtonEE)
                AddCorner(ButtonEE, 0, 5)
                
                Instp[_] = ButtonEE
            end
        end
create("Select Color", {"Really red", "Bright green", "Bright blue", "White", "Grey", "Black", "Dark grey", "Dark green", "Gold", "Silver", "Neon orange", "Neon green", "Brick yellow", "Light lilac", "Lilac", "Bright orange", "Pastel blue", "Nougat", "Bright violet", "Neon orange", "Sand blue"}, function(Selected)
asyncStroke(Selected)
updatee("UI Stroke: "..Selected)
end)
        end
    
        function Property:CreateToggle(tgleName, callback)
            tgleName = tgleName or "Toggle"
            callback = callback or function() end
    
            local Frame = Instance.new("Frame")
            local Label = Instance.new("TextLabel")
            local Toggle = Instance.new("TextButton")
            local Toggle_2 = Instance.new("Frame")
            local toggle = false
            
            Frame.Name = tgleName .. "_Frame"
            Frame.Parent = ScrollingFrame
            Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Frame.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            
            AddStroke(Frame)
            AddCorner(Frame, 0, 5)
    
            Label.Name = "Title"
            Label.Parent = Frame
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(0, 200 + ExtraSize, 0, 25 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = " " .. tgleName
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 20 + ExtraTextSize
            Label.TextXAlignment = Enum.TextXAlignment.Left
    
            Toggle.Name = "Toggle"
            Toggle.Parent = Frame
            Toggle.AnchorPoint = Vector2.new(0, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            Toggle.BackgroundTransparency = 0.000
            Toggle.ClipsDescendants = false
if Interface == "Mobile" then
            Toggle.Position = UDim2.new(0.8, 0, 0.5, 0)
            Toggle.Size = UDim2.new(0, 45 + ExtraSize, 0, 15 + ExtraSize)
            elseif Interface == "Pc" then
            Toggle.Position = UDim2.new(0.75, 0, 0.5, 0)
            Toggle.Size = UDim2.new(0, 65 + ExtraSize, 0, 15 + ExtraSize)
            end
            Toggle.Text = ""
            AddCorner(Toggle, 0, 15)
            Toggle_2.Name = "Toggle_2"
            Toggle_2.Parent = Toggle
            Toggle_2.AnchorPoint = Vector2.new(0, 0.5)
            Toggle_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            Toggle_2.BackgroundTransparency = 0.000
            Toggle_2.ClipsDescendants = false
            Toggle_2.Position = UDim2.new(0.1, 0, 0.5, 0)
            Toggle_2.Size = UDim2.new(0, 17 + ExtraSize, 0, 12.5 + ExtraSize)
            AddCorner(Toggle_2, 0, 15)
            local function Toggles()
                toggle = not toggle
                async(tgleName, toggle)
                if toggle then
                    game:GetService("TweenService"):Create(Toggle,TweenInfo.new(0.25),{ BackgroundColor3 = Color3.fromRGB(0, 255, 0)}):Play()
                    Toggle_2:TweenPosition(UDim2.new(0.5,0,0.5,0), "Out", "Quad", 0.25, true)
                    callback(toggle)
                else
                    game:GetService("TweenService"):Create(Toggle,TweenInfo.new(0.25),{ BackgroundColor3 = Color3.fromRGB(255, 0, 0)}):Play()
                    if Interface == "Mobile" then
                        Toggle_2:TweenPosition(UDim2.new(0.1,0,0.5,0), "Out", "Quad", 0.25, true)
                    elseif Interface == "Pc" then
                        Toggle_2:TweenPosition(UDim2.new(0.05,0,0.5,0), "Out", "Quad", 0.25, true)
                    end
                    callback(toggle)
                end
            end
            Toggle.MouseButton1Click:Connect(Toggles)
            if configs["arm7-4a/mobilesupport"]["Toggle"][tgleName] == true then
                Toggles()
            else
                async(tgleName, false)
            end
        end
    
        function Property:CreateTextbox(tbName, callback)
            tbName = tbName or "Textbox"
            callback = callback or function() end
    
            local Frame = Instance.new("Frame")
            local Label = Instance.new("TextLabel")
            local Textbox = Instance.new("TextBox")
            
            Frame.Name = tbName .. "_Frame"
            Frame.Parent = ScrollingFrame
            Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Frame.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            AddCorner(Frame, 0, 5)
            AddStroke(Frame)
    
            Label.Name = "Title"
            Label.Parent = Frame
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(0, 200 + ExtraSize, 0, 25 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = " " .. tbName
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 20 + ExtraTextSize
            Label.TextXAlignment = Enum.TextXAlignment.Left
    
            Textbox.Name = "Textbox"
            Textbox.Parent = Frame
            Textbox.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
            Textbox.BackgroundTransparency = 0
            Textbox.AnchorPoint = Vector2.new(0, 0.5)
            Textbox.Size = UDim2.new(0, 115 + ExtraSize, 0, 15 + ExtraSize)
            Textbox.Position = UDim2.new(0.6, 0, 0.5, 0)
            Textbox.Font = Enum.Font.SourceSansBold
            Textbox.PlaceholderColor3 = Color3.fromRGB(0, 255, 0)
            Textbox.PlaceholderText = "Input Value"
            Textbox.Text = ""
            Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
            Textbox.TextSize = 15 + ExtraTextSize
            Textbox.FocusLost:Connect(function()
                callback(Textbox.Text)
            end)
            AddCorner(Textbox, 0, 10)
        end
        function Property:CreateKeybind(tbName, originkey, callback)
            tbName = tbName or "KeyBinds"
            originkey = originkey or ""
            callback = callback or function() end
    
            local Frame = Instance.new("Frame")
            local Label = Instance.new("TextLabel")
            local Textbox = Instance.new("TextButton")
            local P = #keybinds + 1
            
            Frame.Name = tbName .. "_Frame"
            Frame.Parent = ScrollingFrame
            Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Frame.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            AddCorner(Frame, 0, 5)
            AddStroke(Frame)
    
            Label.Name = "Title"
            Label.Parent = Frame
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(0, 200 + ExtraSize, 0, 25 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = " " .. tbName
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 20 + ExtraTextSize
            Label.TextXAlignment = Enum.TextXAlignment.Left
    
            Textbox.Name = "Textbox"
            Textbox.Parent = Frame
            Textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            Textbox.BackgroundTransparency = 0
            Textbox.Position = UDim2.new(0.7, 0, 0.5, 0)
            Textbox.Size = UDim2.new(0, 85 + ExtraSize, 0, 15 + ExtraSize)
            Textbox.AnchorPoint = Vector2.new(0, 0.5)
            Textbox.Font = Enum.Font.SourceSansBold
            Textbox.Text = UserInputService:GetStringForKeyCode(originkey)
            Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
            Textbox.TextSize = 15 + ExtraTextSize
            Textbox.MouseButton1Click:Connect(function()
                if not keybinds["pressable"] then
                    Textbox.Text = "Press Any Key"
                    keybinds[P].Value = ""
                    keybinds[0]["pressable"] = true
                end
            end)
            
            keybinds[P] = {}
            keybinds[P].Value = originkey
            keybinds[P].Callback = callback
            keybinds[P].Inst = Textbox
        end
        function Property:CreateDropdown(lbName, list, callback)
            lbName = lbName or "Label"
            list = list or {}
            callback = callback or function() end
            
            local ButtonE = Instance.new("Frame")
            local Label = Instance.new("TextButton")
            local selects = ""
            local upt = {}
            local Instp = {}
            local open = false
            
            ButtonE.Name = "Frame"
            ButtonE.Parent = ScrollingFrame
            ButtonE.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            ButtonE.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            
            AddStroke(ButtonE)
            AddCorner(ButtonE, 0, 5)
            Label.Name = lbName .. "_Label"
            Label.Parent = ButtonE
            Label.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            Label.BackgroundTransparency = 0
            Label.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
            Label.Font = Enum.Font.SourceSansBold
            Label.Text = "🔻 " .. lbName
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 17 + ExtraTextSize
            
            function Togglee()
                open = not open
                for _ = 1, #Instp do
                    if open then
                        Instp[_].Visible = true
                        Label.Text = "🔺 " .. lbName .. selects
                    else
                        Instp[_].Visible = false
                        Label.Text = "🔻 " .. lbName .. selects
                    end
                end
            end
            
            Label.MouseButton1Click:Connect(Togglee)
            
            for _ = 1, #list do
                local Button = Instance.new("TextButton")
                local ButtonEE = Instance.new("Frame")
                
                ButtonEE.Name = "Frame"
                ButtonEE.Parent = ScrollingFrame
                ButtonEE.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
                ButtonEE.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
                ButtonEE.Visible = false
                AddStroke(ButtonEE)
                AddCorner(ButtonEE, 0, 5)
                Button.Name = list[_] .. "_Button"
                Button.Parent = ButtonEE
                Button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
                Button.Size = UDim2.new(0, 315 + ExtraSize, 0, 25 + ExtraSize)
                Button.Font = Enum.Font.SourceSansBold
                Button.Text = "➡️ " .. list[_] .. " ⬅️"
                Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                Button.TextSize = 20 + ExtraTextSize
                Button.MouseButton1Click:Connect(function()
                   selects = " - " .. list[_]
                open = not open
                for _ = 1, #Instp do
                    if open then
                        Instp[_].Visible = true
                        Label.Text = "🔺 " .. lbName .. selects
                    else
                        Instp[_].Visible = false
                        Label.Text = "🔻 " .. lbName .. selects
                    end
                end
                    callback(list[_])
                end)
                Instp[_] = ButtonEE
            end
        end
        return Property
    end
    return bn
end

return library
