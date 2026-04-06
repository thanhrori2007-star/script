repeat task.wait() until game:IsLoaded()
start_script_time = tick()
if getgenv().CaliMatNuoc == true then return end
getgenv().CaliMatNuoc = true
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait()
    pcall(function()
        for i, v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container[(getgenv().Team or "Pirates")].Frame.TextButton.Activated)) do
            v.Function()
        end
    end)
until game:GetService("Players").LocalPlayer.Team ~= nil
local plr = game:GetService("Players").LocalPlayer
local WS, RunService, ReplicatedStorage, Lighting, Players = workspace, game:GetService("RunService"), game:GetService("ReplicatedStorage"), game:GetService("Lighting"), game:GetService("Players")
local Calisucvat = {}
local VirtualInputManager = game:GetService("VirtualInputManager")
local RenderStepped, Stepped = RunService.Stepped, RunService.RenderStepped
local CommF_ = ReplicatedStorage.Remotes:WaitForChild("CommF_")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")
local Quests = require(ReplicatedStorage:WaitForChild("Quests"))
local GuideModule = require(ReplicatedStorage:WaitForChild("GuideModule"))
local Register_Attack, Register_Hit = Net:WaitForChild("RE/RegisterAttack"), Net:WaitForChild("RE/RegisterHit")
local instance = {obj = {}}
local object = instance.obj
local HttpService = game:GetService("HttpService")
local LoadedHub
local Validator = game.ReplicatedStorage.Remotes:WaitForChild("Validator2")
local ShootRemote = game.ReplicatedStorage.Modules.Net:WaitForChild("RE/ShootGunEvent")
local CurrnetExecutor = identifyexecutor()
local LeviathanHuntPos = Vector3.new(-99999999.21484375, 37.18704697489738464, 656.7513427734375).Unit
local FastAttack = loadstring(game:HttpGet("https://github.com/HoangNguyenk8/Roblox/blob/main/Modules/Loadstring/FastAttackLoader.luau?raw=true"))()
Hub = {}
Hub.Title = "Zinner Hub" .. (getgenv().Premium and " [Premium]" or getgenv().Developer and " [Developer]" or " [Freemium]")
Hub.Game = "BloxFruits"
local Fluent = loadstring(game:HttpGet('https://raw.githubusercontent.com/HoangNguyenk8/Roblox/refs/heads/main/Fluent.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/HoangNguyenk8/Roblox/refs/heads/main/Hookfunction.luau'))()
Notify = function(title, content, duration, desc)
    Fluent:Notify({
        Title = (title or "Zinner Hub"),
        Content = (content or "..."),
        Description = (desc or "@_nguyenhoanggianam"),
        Duration = (duration or 5),
    })
end
ZinnerL = Instance.new("ScreenGui")
ZinnerL.Parent = game.CoreGui
ClickUI = Instance.new("ImageButton")
ClickUI.Parent = ZinnerL
ClickUI.Size = UDim2.new(0, 60, 0, 60)
ClickUI.BackgroundTransparency = 1
ClickUI.Image = "rbxassetid://77947488747613"
ClickUI.AnchorPoint = Vector2.new(0.5, 0.5)
ClickUI.Position = UDim2.new(0.2, 0, 0.2, 0)
ClickUI.BackgroundColor3 = Color3.new(0, 0, 0)
ClickUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClickUI.BorderSizePixel = 0
ClickUI.Draggable = true
Corner = Instance.new("UICorner")
Corner.Parent = ClickUI
Corner.CornerRadius = UDim.new(0, 100)
ClickUI.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"RightControl",false,game)
end)
if CurrnetExecutor == "Wave" or CurrnetExecutor == "AWP" or CurrnetExecutor == "Posstasium" then
    Notify("Zinner Hub","Your currnently executor support all function, some function will work good", 8)
else
    Notify("Zinner Hub","Your currnently executor not support all function, some function will not work", 8)
end
local TabList = {}
local Window = Fluent:Window({
    Title = Hub.Title,
    Description = "discord.gg/vU6jRXpYsZ",
    Size = UDim2.fromOffset(480, 360),
    KeyCode = Enum.KeyCode.RightControl
})
plr.Idled:Connect(function()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    game:GetService("VirtualUser"):Button1Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)
local RandomText = {
    [1] = "Welcome to my script",
    [2] = "Your Dad Fat",
    [3] = "Your Mom Fat",
    [4] = "?",
    [5] = "Oh hi fat men",
    [6] = "You're Banned",
    [7] = "your fat"
}
local module,Settings = {}, {
    ["Fast Attack"] = true,
    ["Bring Distance"] = 350,
    ["Tween Speed"] = 300,
    ["Auto Buso"] = true,
}
module.Mobs = {
    CakeMobs = {
        "Cookie Crafter",
        "Cake Guard",
        "Baking Staff",
        "Head Baker"
    },
    BoneMobs = {
        "Reborn Skeleton",
        "Living Zombie",
        "Demonic Soul",
        "Posessed Mummy"
    },
    EliteMobs = {
        "Urban",
        "Deandre",
        "Diablo"
    },
    TikiMobs = {
        "Island Boy",
        "Isle Outlaw",
        "Isle Champion",
        "Serpent Hunter",
        "Skull Slayer",
        "Sun-kissed Warrior"
    },
    RengokuMobs = {
        "Arctic Warrior",
        "Snow Lurker"
    },
    ripindra = {
        "rip_indra",
        "rip_indra True Form"
    },
    CocoaMobs = {
        "Cocoa Warrior",
        "Chocolate Bar Battler",
        "Candy Rebel",
        "Sweet Thief",
    },
    SeaMobs = {
        "Shark",
        "Fish Crew Member",
        "Piranha",
        "Terrorshark"
    }
}
module.Berries = {
    "Blue Icicle Berry",
    "Green Toad Berry",
    "Orange Berry",
    "Pink Pig Berry"
}
module.Bosses = {
    ["Saber Expert"] = {
        NoQuest = true,
        Position = CFrame.new(-1461, 30, -51)
    },
    ["The Saw"] = {
        RaidBoss = true,
        Position = CFrame.new(-690, 15, 1583)
    },
    ["Greybeard"] = {
        RaidBoss = true,
        Position = CFrame.new(-5043, 25, 4262)
    },
    ["The Gorilla King"] = {
        IsBoss = true,
        Level = 20,
        Position = CFrame.new(-1128, 6, -451),
        Quest = {"JungleQuest", CFrame.new(-1598, 37, 153)}
    },
    ["Chef"] = {
        IsBoss = true,
        Level = 55,
        Position = CFrame.new(-1131, 14, 4080),
        Quest = {"BuggyQuest1", CFrame.new(-1140, 4, 3829)}
    },
    ["Yeti"] = {
        IsBoss = true,
        Level = 105,
        Position = CFrame.new(1185, 106, -1518),
        Quest = {"SnowQuest", CFrame.new(1385, 87, -1298)}
    },
    ["Vice Admiral"] = {
        IsBoss = true,
        Level = 130,
        Position = CFrame.new(-4807, 21, 4360),
        Quest = {"MarineQuest2", CFrame.new(-5035, 29, 4326), 2}
    },
    ["Swan"] = {
        IsBoss = true,
        Level = 240,
        Position = CFrame.new(5230, 4, 749),
        Quest = {"ImpelQuest", CFrame.new(5191, 4, 692)}
    },
    ["Chief Warden"] = {
        IsBoss = true,
        Level = 230,
        Position = CFrame.new(5230, 4, 749),
        Quest = {"ImpelQuest", CFrame.new(5191, 4, 692), 2}
    },
    ["Warden"] = {
        IsBoss = true,
        Level = 220,
        Position = CFrame.new(5230, 4, 749),
        Quest = {"ImpelQuest", CFrame.new(5191, 4, 692), 1}
    },
    ["Magma Admiral"] = {
        IsBoss = true,
        Level = 350,
        Position = CFrame.new(-5694, 18, 8735),
        Quest = {"MagmaQuest", CFrame.new(-5319, 12, 8515)}
    },
    ["Fishman Lord"] = {
        IsBoss = true,
        Level = 425,
        Position = CFrame.new(61350, 31, 1095),
        Quest = {"FishmanQuest", CFrame.new(61122, 18, 1567)}
    },
    ["Wysper"] = {
        IsBoss = true,
        Level = 500,
        Position = CFrame.new(-7927, 5551, -637),
        Quest = {"SkyExp1Quest", CFrame.new(-7861, 5545, -381)}
    },
    ["Thunder God"] = {
        IsBoss = true,
        Level = 575,
        Position = CFrame.new(-7751, 5607, -2315),
        Quest = {"SkyExp2Quest", CFrame.new(-7903, 5636, -1412)}
    },
    ["Cyborg"] = {
        IsBoss = true,
        Level = 675,
        Position = CFrame.new(6138, 10, 3939),
        Quest = {"FountainQuest", CFrame.new(5258, 39, 4052)}
    },
    ["Don Swan"] = {
        RaidBoss = true,
        Position = CFrame.new(2289, 15, 808)
    },
    ["Cursed Captain"] = {
        RaidBoss = true,
        Position = CFrame.new(912, 186, 33591)
    },
    ["Darkbeard"] = {
        RaidBoss = true,
        Position = CFrame.new(3695, 13, -3599)
    },
    ["Diamond"] = {
        IsBoss = true,
        Level = 750,
        Position = CFrame.new(-1569, 199, -31),
        Quest = {"Area1Quest", CFrame.new(-427, 73, 1835)}
    },
    ["Jeremy"] = {
        IsBoss = true,
        Level = 850,
        Position = CFrame.new(2316, 449, 787),
        Quest = {"Area2Quest", CFrame.new(635, 73, 919)}
    },
    ["Orbitus"] = {
        IsBoss = true,
        Level = 925,
        Position = CFrame.new(-2086, 73, -4208),
        Quest = {"MarineQuest3", CFrame.new(-2441, 73, -3219)}
    },
    ["Smoke Admiral"] = {
        IsBoss = true,
        Level = 1150,
        Position = CFrame.new(-5078, 24, -5352),
        Quest = {"IceSideQuest", CFrame.new(-6061, 16, -4904)}
    },
    ["Awakened Ice Admiral"] = {
        IsBoss = true,
        Level = 1400,
        Position = CFrame.new(6473, 297, -6944),
        Quest = {"FrostQuest", CFrame.new(5668, 28, -6484)}
    },
    ["Tide Keeper"] = {
        IsBoss = true,
        Level = 1475,
        Position = CFrame.new(-3711, 77, -11469),
        Quest = {"ForgottenQuest", CFrame.new(-3056, 240, -10145)}
    },
    ["Tyrant of the Skies"] = {
        RaidBoss = true,
        Position = CFrame.new(-16252, 153, 1394)
    },
    ["Cake Prince"] = {
        RaidBoss = true,
        Position = CFrame.new(-2103, 70, -12165)
    },
    ["Dough King"] = {
        RaidBoss = true,
        Position = CFrame.new(-2103, 70, -12165)
    },
    ["rip_indra True Form"] = {
        RaidBoss = true,
        Position = CFrame.new(-5333, 424, -2673)
    },
    ["Stone"] = {
        IsBoss = true,
        Level = 1550,
        Position = CFrame.new(-1049, 40, 6791),
        Quest = {"PiratePortQuest", CFrame.new(-449, 109, 5950)}
    },
    ["Hydra Leader"] = {
        IsBoss = true,
        Level = 1675,
        Position = CFrame.new(5836, 1019, -83),
        Quest = {"VenomCrewQuest", CFrame.new(5214, 1004, 761)}
    },
    ["Kilo Admiral"] = {
        IsBoss = true,
        Level = 1750,
        Position = CFrame.new(2904, 509, -7349),
        Quest = {"MarineTreeIsland", CFrame.new(2485, 74, -6788)}
    },
    ["Captain Elephant"] = {
        IsBoss = true,
        Level = 1875,
        Position = CFrame.new(-13393, 319, -8423),
        Quest = {"DeepForestIsland", CFrame.new(-13233, 332, -7626)}
    },
    ["Beautiful Pirate"] = {
        IsBoss = true,
        Level = 1950,
        Position = CFrame.new(5370, 22, -89),
        Quest = {"DeepForestIsland2", CFrame.new(-12682, 391, -9901)}
    },
    ["Cake Queen"] = {
        IsBoss = true,
        Level = 2175,
        Position = CFrame.new(-710, 382, -11150),
        Quest = {"IceCreamIslandQuest", CFrame.new(-818, 66, -10964)}
    },
    ["Longma"] = {
        NoQuest = true,
        Position = CFrame.new(-10218, 333, -9444)
    }
}
module.Getboss = function(Boss)
    for r,v in next, module.Bosses do
        if r == Boss and v.IsBoss then
            return r,v
        end
    end
end
NPCs = {}
for _,v in next, ReplicatedStorage.NPCs:GetChildren() do
    table.insert(NPCs, v)
end
for _,v in next, WS.NPCs:GetChildren() do
    table.insert(NPCs, v)
end
print(RandomText[math.random(1, #RandomText)])
module.new = function(name, config)
    local gaya = Instance.new(name)
    for index, value in next, config do
        gaya[index] = value
    end
    return gaya
end
module.Save = function()
    if not isfolder("Zinner Hub 2.0") then
        makefolder("Zinner Hub 2.0")
    end
    if not isfolder("Zinner Hub 2.0/Settings") then
        makefolder("Zinner Hub 2.0/Settings")
    end
    writefile("Zinner Hub 2.0/Settings/" .. Hub.Game .. "-" .. plr.Name .. ".json", HttpService:JSONEncode(Settings))
end
module.Read = function()
    p1, p2 = pcall(function()
        if not isfolder("Zinner Hub 2.0") then
            module.Save()
        end
        return HttpService:JSONDecode(readfile("Zinner Hub 2.0/Settings/" .. Hub.Game .. "-" .. plr.Name .. ".json"))
    end)
    if p1 then
        return p2
    else
        module.Save()
        return module.Read()
    end
end
Settings = module.Read()
function Window:MakeTab(cftab)
    local RealTab
    tab = Window:AddTab(cftab)
    RealTab = tab
    function tab:NewButton(ConfigButton)
        local ConfigButton = ConfigButton or {}
        ConfigButton.IconButton = ConfigButton.IconButton or cftab.Icon
        local RealButton = RealTab:AddButton(ConfigButton)
        return RealButton
    end
    function tab:NewToggle(Value, ConfigToggle)
        local ConfigToggle = ConfigToggle or {}
        ConfigToggle.Title = ConfigToggle.Title
        ConfigToggle.Description = ConfigToggle.Description or ""
        ConfigToggle.Default = ConfigToggle.Default or Settings[Value]
        ConfigToggle.IconToggle = ConfigToggle.IconToggle or cftab.IconToggle
        ConfigToggle.OnChanged = ConfigToggle.OnChanged or function() end
        ConfigToggle.Callback = ConfigToggle.Callback or function() end
        ConfigToggle.Callback = function(v)
            ConfigToggle.OnChanged(v)
            Settings[Value] = v
            module.Save()
        end
        local RealToggle = RealTab:AddToggle(ConfigToggle)
        return RealToggle
    end
    function tab:NewDropdown(Value,ConfigDropdown)
        local MMB = {}
        MMB.Title = ConfigDropdown.Title
        MMB.Description = ConfigDropdown.Description or ""
        MMB.Values  = ConfigDropdown.Values or {}
        MMB.Multi = ConfigDropdown.Multi or false
        MMB.Default = nil
        MMB.Save = ConfigDropdown.Save or true
        MMB.OnChanged = ConfigDropdown.OnChanged or function() end
        MMB.Callback = ConfigDropdown.Callback or function() end
        local ConfigDropdown = ConfigDropdown or {}
        for i,v in pairs(MMB) do
            ConfigDropdown[i] = v
        end
        if ConfigDropdown.Multi then
            if not Settings[Value] then
                Settings[Value] = {}
                for i,v in pairs(ConfigDropdown.Values) do
                    Settings[Value][v] = false
                end
            end
        end
        ConfigDropdown.Default = Settings[Value]
        ConfigDropdown.Callback = function(v)
            ConfigDropdown.OnChanged(v)
            Settings[Value] = v
            if ConfigDropdown.Save then
                module.Save()
            end
        end
        local RealDropdown = RealTab:AddDropdown(ConfigDropdown)
        return RealDropdown
    end
    function tab:NewSlider(Value, ConfigSlider)
        local mbeo = {}
        mbeo.Title = ConfigSlider.Title
        mbeo.Description = ConfigSlider.Description or ""
        mbeo.Max = ConfigSlider.Max or 100
        mbeo.Min = ConfigSlider.Min or 1
        mbeo.Default = ConfigSlider.Default or (Settings[Value] or ConfigSlider.Min)
        mbeo.Callback = ConfigSlider.Callback or function() end
        mbeo.OnChanged = ConfigSlider.OnChanged or function() end
        local ConfigSlider = ConfigSlider or {}
        for i,v in pairs(mbeo) do
            ConfigSlider[i] = v
        end
        ConfigSlider.Callback = function(v)
            ConfigSlider.OnChanged(v)
            Settings[Value] = v
            module.Save()
        end
        local RealSlider = RealTab:AddSlider(ConfigSlider)
        return RealSlider
    end
    function tab:NewSeperator(ConfigSeperator)
        local ConfigSeperator = ConfigSeperator or {}
        ConfigSeperator.Title = ConfigSeperator.Title or "Missing Title"
        return RealTab:AddSeperator(ConfigSeperator.Title)
    end
    function tab:NewInput(ConfigInput)
        local ConfigInput = ConfigInput or {}
        ConfigInput.Title = ConfigInput.Title or "Input(Missing Title)"
        ConfigInput.Default = ConfigInput.Default or ""
        ConfigInput.Description = ConfigInput.Description or ""
        ConfigInput.PlaceHolder = ConfigInput.PlaceHolder or ""
        local RealInput = RealTab:AddInput(ConfigInput)
        return RealInput
    end
    function tab:NewParagraph(ConfigLabel)
        local ConfigLabel = ConfigLabel or {}
        ConfigLabel.Title = ConfigLabel.Title or "Paragraph(Missing Title)"
        ConfigLabel.Content = ConfigLabel.Content or ""
        ConfigLabel.IconParagraph = ConfigLabel.IconParagraph or cftab.Icon
        local RealLabel = RealTab:AddParagraph(ConfigLabel)
        return RealLabel
    end
    return tab
end

World = (game.PlaceId == 2753915549 and 1 or game.PlaceId == 4442272183 and 2 or game.PlaceId == 7449423635  and 3)
if World == 1 then
    Sea1 = true
elseif World == 2 then
    Sea2 = true
elseif World == 3 then
    Sea3 = true
else
    plr:Kick("[ZINNER HUB]\nInvaild Game Detect")
end
EntranceList = {}
module.GetNearEntrance = function(a)
    local choose = Vector3.new(0, 0, 0)
	local dis = math.huge
    EntranceList = {
        {
            ["Sky Arena 1"] = Vector3.new(-4654.3046875, 872.5831909179688, -1759.1536865234375),
            ["Sky Arena 2"] = Vector3.new(-7894.6181640625, 5547.14208984375, -380.2909851074219),
            ["UndeyWater City 1"] = Vector3.new(61163.8515625, 11.680007934570312, 1819.7840576171875),
            ["UndeyWater City 2"] = Vector3.new(3864.68798828125, 5.41372013092041, -1926.2139892578125)
        },
        {
            ["Mansion"] = Vector3.new(-288.0594177246094, 305.90118408203125, 613.7842407226562),
            ["Swan Room"] = Vector3.new(2284.96533203125, 15.192192077636719, 897.8220825195312),
            ["Out Ship"] = Vector3.new(-6518.1787109375, 83.2271957397461, -145.9620819091797),
            ["In Ship"] = Vector3.new(923.448486328125, 125.0971908569336, 32883.55859375)
        },
        {
            ["Mansion"] = Vector3.new(-12550.44921875, 337.20880126953125, -7476.7158203125),
            ["Castle On The Sea"] = Vector3.new(-5073.84912109375, 314.5505676269531, -3152.5322265625),
            ["Hydra Island"] = Vector3.new(5681.67236328125, 1013.0841674804688, -313.3254699707031),
            ["Temple Of Time"] = Vector3.new(28294.119140625, 14896.5498046875, 103.02708435058594)
        },
    }
	for r, v in pairs(EntranceList[World]) do
		if (v - a.Position).Magnitude < dis and v ~= choose then
			choose = v
			dis = (v - a.Position).Magnitude
		end   
	end
	return choose
end
module.GetDistance = function(a, aa)
    if aa == nil then aa = game.Players.LocalPlayer.Character.HumanoidRootPart.Position end
	if typeof(a) == "CFrame" then
		return (a.Position - aa).Magnitude
	elseif typeof(a) == "Vector3" then
		return (a - aa).Magnitude
	end
end
local PortalUnlocked = false
spawn(function()
    while wait() do
        if CommF_:InvokeServer('GetUnlockables')["DefeatedIndraTrueForm"] then
            PortalUnlocked = true
        end
    end
end)
module.Entranceto = function(a)
    local args = {
        "requestEntrance",
        a
    }
    CommF_:InvokeServer(unpack(args))
    plr.Character.PrimaryPart.CFrame = CFrame.new(plr.Character.PrimaryPart.CFrame.X, plr.Character.PrimaryPart.CFrame.Y + 120, plr.Character.PrimaryPart.CFrame.Z)
    task.wait(.1)
end
module.Tweento = function(ChiTayXinhGai)
    pcall(function()
        if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Head") then
            local Distance = (ChiTayXinhGai.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
            local TweenService = game:GetService("TweenService")
            local Portal = module.GetNearEntrance(ChiTayXinhGai)
            if Distance <= 200 then
                pcall(function()
                    tween:Cancel()
                end)
                game.Players.LocalPlayer.Character.PrimaryPart.CFrame = ChiTayXinhGai
            else
                if (Sea3 and PortalUnlocked or Sea2 or Sea1) and Portal and (Portal - ChiTayXinhGai.p).Magnitude + 150 < (game.Players.LocalPlayer.Character.PrimaryPart.Position - ChiTayXinhGai.Position).Magnitude then
                    pcall(function()
                        tween:Cancel()
                    end)
                    module.Entranceto(Portal)
                else
                    tween = TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, TweenInfo.new(Distance / 325, Enum.EasingStyle.Linear), {CFrame = ChiTayXinhGai})
                    tween:Play()
                end
            end
        end
    end)
end
spawn(function()
    while wait() do
        pcall(function()
            if NoClip then
                if not game.Players.LocalPlayer.Character.Head:FindFirstChild("Lock") then
                    local Lock = Instance.new("BodyVelocity")
                    Lock.Parent = game.Players.LocalPlayer.Character.Head
                    Lock.Name = "Lock"
                    Lock.MaxForce = Vector3.new(100000, 100000, 100000)
                    Lock.Velocity = Vector3.new(0,0,0)
                    Lock.P = 15000
                end
                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            else
                if game.Players.LocalPlayer.Character.Head:FindFirstChild("Lock") then
                    game.Players.LocalPlayer.Character.Head:FindFirstChild("Lock"):Destroy()
                    plr.Character.Humanoid:ChangeState()
                end
            end
        end)
    end
end)
module.GetWeaponType = function(x)
	r = ""
	for i, v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
		if v:IsA("Tool") and v.ToolTip == x then
			r = v.Name
		end
	end
	for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
		if v:IsA("Tool") and v.ToolTip == x then
			r = v.Name
		end
	end
	return r
end
module.GetCurrentWeapon = function ()
    r = ""
	for i, v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
		if v:IsA("Tool") and v.ToolTip == Settings["Weapon Type"] then
			r = v.Name
		end
	end
	for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
		if v:IsA("Tool") and v.ToolTip == Settings["Weapon Type"] then
			r = v.Name
		end
	end
	return r
end
module.EquipToolName = function(xx)
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(xx)
	if tool and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end
module.EquipWeapon = function()
	if Settings["Weapon Type"] == nil or Settings["Weapon Type"] == "" then
		Settings["Weapon Type"] = "Melee"
	end
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(module.GetCurrentWeapon())
	if tool and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end
module.FireRemotes = function(...)
    return CommF_:InvokeServer(...)
end
module.EnableBuso = function() 
	if not game.Players.LocalPlayer.Character:GetAttribute("BusoEnabled", true) then
		module.FireRemotes("Buso")
	end
end
module.IsAlive = function(character)
    return character and not character:FindFirstChild("VehicleSeat") and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 and character:FindFirstChild("HumanoidRootPart")
end
module.DetectAnyPlayersInCFrame = function(a)
    for _, v in pairs(workspace.Characters:GetChildren()) do
        if module.IsAlive(v) and v.Name ~= plr.Name and (v.HumanoidRootPart.Position - a).Magnitude <= 1000 then
            return true
        end
    end
    return false
end
module.isnetworkowner2 = function(p1)
    local A = gethiddenproperty(plr, "SimulationRadius")
    local B = plr.Character or Wait(plr.CharacterAdded)
    local C = game.WaitForChild(B, "HumanoidRootPart", 300)
    if C then
        if p1.Anchored then
            return false
        end
        if
            game.IsDescendantOf(p1, B) or
                (C.Position - p1.Position).Magnitude <= A and module.DetectAnyPlayersInCFrame(p1.Position)
         then
            return true
        end
    end
    return false
end
if not isnetworkowner then
    isnetworkowner = function(part)
        if module.isnetworkowner2(part) then
            return module.isnetworkowner2(part)
        end
        return part.ReceiveAge == 0 and module.DetectAnyPlayersInCFrame(part.Position)
    end
else
    print("You Currently Executor support isnetworkowner") --lmao
end
module.BringEnemies = function(mmb)
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
	local TargetPos = mmb.HumanoidRootPart.CFrame
	for _,v in next, WS.Enemies:GetChildren() do
		if v.Name == mmb.Name and module.IsAlive(v) then
			if isnetworkowner(v.HumanoidRootPart) and module.GetDistance(v.HumanoidRootPart.Position) <= 500 then
                for i,a in pairs(v:GetChildren()) do
                    if a:IsA("BasePart") then
                        a.CanCollide = false
                    end
                end
                if not v.HumanoidRootPart:FindFirstChild('Lock') then
                    local Lock = Instance.new('BodyVelocity')
                    Lock.Name = "Lock"
                    Lock.Parent = v.HumanoidRootPart
                    Lock.Velocity = Vector3.new(0,0,0)
                    Lock.MaxForce = Vector3.new(10000, 10000, 10000)
                end
                v.Humanoid.WalkSpeed = 0
                v:SetPrimaryPartCFrame(TargetPos)
			end
		end
	end
end
local blacklistquest = {
    "MarineQuest",
    "BartiloQuest",
    "CitizenQuest",
    "Trainees"
}
module.CheckSea = function(b)
    if game.PlaceId == 85211729168715 and b == 1 then
        return true
    elseif game.PlaceId == 79091703265657 and b == 2 then
        return true
    elseif game.PlaceId == 100117331123089 and b == 3 then
        return true
    end
    return false
end
module.GetQuests = function()
    local lvl = plr.Data.Level.Value
    local LevelReq = 0
    local mmb = {}
    if lvl >= 1 and lvl < 10 then
        mmb["Mob"] = "Bandit"
        mmb["NameQuest"] = "BanditQuest1"
        mmb["ID"] = 1
        mmb["LevelReq"] = 1
    elseif lvl >= 700 and module.CheckSea(1) then
        mmb["Mob"] = "Galley Captain"
        mmb["NameQuest"] = "FountainQuest"
        mmb["ID"] = 2
        mmb["LevelReq"] = 700
    elseif lvl >= 1500 and module.CheckSea(2) then
        mmb["Mob"] = "Water Fighter"
        mmb["NameQuest"] = "ForgottenQuest"
        mmb["ID"] = 2
        mmb["LevelReq"] = 1450
    else
        for r, v in pairs(Quests) do
            for id, v1 in pairs(v) do
                local LvReq = v1.LevelReq
                for nguoi, tinh in pairs(v1.Task) do
                    if lvl >= LvReq and LevelReq <= LvReq and v1.Task[nguoi] > 1 and not table.find(blacklistquest, r) then
                        LevelReq = LvReq
                        mmb["Mob"] = nguoi
                        mmb["NameQuest"] = r
                        mmb["ID"] = id
                        mmb["LevelReq"] = LvReq
                    end
                end
            end
        end
    end
    return mmb
end
function module.DetectOldServer()
    local Version = game:GetService("Players").LocalPlayer.PlayerGui.Main:WaitForChild("Version").Text
    local version2 = Version:match("v([%d%.]+)"):gsub("%.", "")
    if tonumber(version2) < 2662 then
        return true
    end
    return false
end
module.GetQuestBoss = function()
    cc = {}
    min = 0
    if plr.Data.Level.Value >= 700 and module.CheckSea(1) then
        cc["Name"] = "Cyborg"
        cc["NameQuest"] = "FountainQuest2"
        cc["ID"] = 3
    elseif plr.Data.Level.Value >= 1500 and module.CheckSea(2) then
        cc["Name"] = "Tide Keeper"
        cc["NameQuest"] = "ForgottenQuest"
        cc["ID"] = 3
    else
        for r,v in next, Quests do
            for _, v1 in next, v do
                for n, nn in next, v1.Task do
                    if plr.Data.Level.Value >= v1.LevelReq and v1.LevelReq >= min and v1.Task[n] == 1 and not table.find(blacklistquest, r) then
                        min = v1.LevelReq
                        cc["Name"] = n
                        cc["NameQuest"] = r
                        cc["ID"] = _
                    end
                end
            end
        end
    end
    return cc
end
module.GetQuestPoint = function()
    for r, v in pairs(GuideModule["Data"]["NPCList"]) do
        if v["NPCName"] == GuideModule["Data"]["LastClosestNPC"] then
            return r["CFrame"]
        end
    end
end
repeat task.wait() until module.GetQuestPoint()
module.CheckDataQuest = function()
	for i, v in pairs(GuideModule.Data) do
		if i == "QuestData" then
			return true
		end
	end 
	return false
end
module.GetDataQuest = function()
    local a
	if module.CheckDataQuest() then
		for r, v in pairs(GuideModule.Data.QuestData.Task) do
			a = r
		end
	end
    return a
end
module.TBMobDobleQuest = function()
    local tb = {}
	for r, v in pairs(Quests) do
        for a, v1 in pairs(v) do
            for aa, lol in pairs(v1.Task) do
                if aa == module.GetQuests()["Mob"] then
                    for namequest, nguvailon in pairs(v) do 
                        if nguvailon.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and nguvailon["Name"] ~= "Town Raid" then
                            for namemob, values in pairs(nguvailon.Task) do
                                if values > 1 then
                                    table.insert(tb, namemob)
                                end
                            end
                        end
                    end
                end
            end                         
        end
    end
    return tb
end
module.GetDoubleQuest = function()
    local cc = {}
    if Settings["Double Quest"] and module.CheckDataQuest() and module.GetDataQuest() and module.GetDataQuest() == module.GetQuests()["Mob"] and #module.TBMobDobleQuest() >= 2 then
        for r, v in pairs(Quests) do
            for a, v1 in pairs(v) do
                for aa, lol in pairs(v1.Task) do
                    if aa == module.GetQuests()["Mob"] then
                        for id, nguvailon in pairs(v) do
                            for namemob, values in pairs(nguvailon.Task) do
                                if namemob ~= module.GetQuests()["Mob"] and values > 4 then
                                    cc["Mob"] = namemob
                                    cc["NameQuest"] = r
                                    cc["ID"] = id
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        cc["Mob"] = module.GetQuests()["Mob"]
        cc["NameQuest"] = module.GetQuests()["NameQuest"]
        cc["ID"] = module.GetQuests()["ID"]    end
    return cc
end
local ZinnerStorage = Instance.new("Folder")
ZinnerStorage.Name = "ZinnerStorage"
ZinnerStorage.Parent = workspace
repeat task.wait() until workspace:FindFirstChild("ZinnerStorage")
local MobSpawning = Instance.new("Folder")
MobSpawning.Name = "MobSpawning"
MobSpawning.Parent = ZinnerStorage
repeat task.wait() until workspace.ZinnerStorage:FindFirstChild("MobSpawning")
module.RemoveLv = function(v)
    return tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", "")
end
module.VerifyEnemiesSpawnPart = function()
    Nigger = {}
    for _, v in pairs(workspace["_WorldOrigin"].EnemySpawns:GetChildren()) do
        v.Name = module.RemoveLv(v.Name)
        table.insert(Nigger, v)
    end
    Hehe = {}
    for r, v in pairs(Quests) do
        for n, nn in pairs(v) do
            for _, v in pairs(nn.Task) do
                if nn.Task[_] > 1 then
                    table.insert(Hehe, _)
                end
            end
        end
    end
    for r, v in pairs(ReplicatedStorage:GetChildren()) do
        if table.find(Hehe, v.Name) then
            table.insert(Nigger, v)
        end
    end
    for r, v in pairs(WS.Enemies:GetChildren()) do
        if table.find(Hehe, v.Name) then
            table.insert(Nigger, v)
        end
    end
    for _, v in pairs(getnilinstances()) do
        if table.find(Hehe, v.Name) then
            table.insert(Nigger, v)
        end
    end
    return Nigger
end

module.InsertMobSpawnPart = function() 
    Mm = module.VerifyEnemiesSpawnPart()
    for _,v in pairs(Mm) do
        if v:IsA("Part") then
            local ole = v:Clone()
            ole.Parent = workspace.ZinnerStorage.MobSpawning
        elseif v:IsA("Model") and module.IsAlive(v) then
            local ole = Instance.new("Part")
            ole.Parent = workspace.ZinnerStorage.MobSpawning
            ole.Name = module.RemoveLv(v.Name)
            ole.CFrame = v.HumanoidRootPart.CFrame
            ole.Transparency = 1
            ole.Anchored = true
            ole.CanCollide = false
            ole.CanTouch = false
        end
    end
end
module.TweenSeaBoss = function(v)
    local waterbase = WS.Map["WaterBase-Plane"]
    local Seabeast = v.HumanoidRootPart
    if (Vector3.new(0, waterbase.Position.Y, 0) - Vector3.new(0, Seabeast.Position.Y, 0)).Magnitude <= 175 then
        module.Tweento(Seabeast.CFrame * CFrame.new(0, 300, 0))
    else
        module.Tweento(CFrame.new(Seabeast.Position.X, waterbase.Position.Y + 200, Seabeast.Position.Z))
    end
end
module.TweenLeviathan = function(v)
    local waterbase = WS.Map["WaterBase-Plane"]
    local Leviathan = v.HumanoidRootPart
    if (Vector3.new(0, waterbase.Position.Y, 0) - Vector3.new(0, Leviathan.Position.Y, 0)).Magnitude <= 175 then
        module.Tweento(Leviathan.CFrame * CFrame.new(0, 30, 0))
    else
        module.Tweento(CFrame.new(Leviathan.Position.X, waterbase.Position.Y + 70, Leviathan.Position.Z))
    end
end
module.CheckSeaBeast = function()
    for _,v in next, workspace.SeaBeasts:GetChildren() do
        if string.find(v.Name,"SeaBeast") and module.GetDistance(v.HumanoidRootPart.Position) <= 2500 then
            if v.Health.Value > 0 then
                return v
            end
        end
    end
end
module.GetShipEnemies = function()
    local Ship = {
        "PirateBasic",
        "PirateBrigade"
    }
    if Settings["Auto Ghost Ship"] then table.insert(Ship, "FishBoat") table.insert(Ship, "PirateGrandBrigade") end
    for _,v in next, WS.Enemies:GetChildren() do
        if v and v.Parent and table.find(Ship, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 and module.GetDistance(v.Engine.Position) <= 2500 then
            return v
        end
    end
end
module.VerifyEnemies = function(sech, munchit, distance)
    local tar, max = nil, math.huge
	for i,v in next, WS.Enemies:GetChildren() do
		if ((type(sech) == "table" and table.find(sech, v.Name)) or (type(sech) == "string" and v.Name == sech)) and module.IsAlive(v) then
			if module.GetDistance(v.HumanoidRootPart.Position) <= max and module.GetDistance(v.HumanoidRootPart.Position) <= (distance or math.huge) then
				max = module.GetDistance(v.HumanoidRootPart.Position)
				tar = v
			end
		end
	end
	if munchit then
        for i,v in next, ReplicatedStorage:GetChildren() do
            if ((type(sech) == "table" and table.find(sech, v.Name)) or (type(sech) == "string" and v.Name == sech)) and module.IsAlive(v) then
                if module.GetDistance(v.HumanoidRootPart.Position) <= max and module.GetDistance(v.HumanoidRootPart.Position) <= (distance or math.huge) then
                    max = module.GetDistance(v.HumanoidRootPart.Position)
                    tar = v
                end
            end
        end
    end
    return tar
end
module.InsertMobSpawnPart()
module.CheckEyes = function()
    alleyes = {}
    for _,v in next, workspace.Map.TikiOutpost:WaitForChild("IslandModel"):GetChildren() do
        if string.find(v.Name, "Eye") then
            if v.Transparency == 0 then
                table.insert(alleyes, v)
            end
        end
    end
    return alleyes
end
module.CheckDoorPlates = function()
    return workspace.Map.Jungle.QuestPlates.Door.CanCollide
end
module.GetPlates = function()
    for r, v in pairs(WS.Map.Jungle.QuestPlates:GetChildren()) do
        if v:FindFirstChild("Button") then
            if v.Button:FindFirstChild("TouchInterest") then
                return v.Button.CFrame
            end
        end
    end
end
module.SaberDoorOpened = function()
    return WS.Map.Jungle.Final.Part.CanCollide
end
module.CheckDesertdDoor = function()
    return WS.Map.Desert.Burn.Fire.CanCollide
end
module.GetInventoryItems = function(Name)
    for r, v in next, CommF_:InvokeServer("getInventory") do
        if v.Name == Name then
            return true
        end
    end
    return false
end
module.VerifyTool = function(tool)
	for i, v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
		if tostring(v) == tool or v.Name == tool then
			return v
		end
	end
	for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
		if tostring(v) == tool or v.Name == tool then
			return v
		end
	end
end
module.TeleportWorld = function(v)
    if v == 1 and not module.CheckSea(1) then
        return module.FireRemotes("TravelMain")
    elseif v == 2 and not module.CheckSea(2) then
        return module.FireRemotes("TravelDressrosa")
    elseif v == 3 and not module.CheckSea(3) then
        return module.FireRemotes("TravelZou")
    else
        return nil
    end
end
module.HopServers = function(counts)
    if counts == nil then
        counts = 10
    end
    local function nigga(v)
        if v.Name == "ErrorPrompt" then
            if v.Visible then
                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                    v.Visible = false
                end
            end
            v:GetPropertyChangedSignal("Visible"):Connect(
                function()
                    if v.Visible then
                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                            v.Visible = false
                        end
                    end
                end
            )
        end
    end
    spawn(function()
        Fluent:Notify({
            Title = "Script Hop",
            Content = "Hop Server In 5 Seconds",
            Duration = 4
        })
        wait(5)
        Fluent:Notify({
            Title = "Script Hop",
            Content = "Already For Hop Server",
            Duration = 4
        })
    end)
    for i, v in next, game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren() do
        nigga(v)
    end
    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(nigga)
    game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = "Singapore"
    while wait() do
        for r = 1, math.huge do
            for k, v in next, game.ReplicatedStorage.__ServerBrowser:InvokeServer(r) do
                if k ~= game.JobId and v["Count"] <= counts then
                    Fluent:Notify({
                        Title = "Script Hop",
                        Content = "Join Servers : " .. k,
                        Duration = 4
                    })
                    game.ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", k)
                end
            end
        end
    end
end
module.RollBones = function()
    module.FireRemotes("Bones", "Buy", 1, 1)
end
module.GetClientElapsed = function(startTime)
    local elapsedTime = tick() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = elapsedTime % 60
    return string.format("%d Hours %d Minutes %d Seconds", hours, minutes, seconds)
end
local id = {"rbxassetid://123254569317198"}
module.Dodgemobs = function(character)
    if module.IsAlive(character) and module.GetDistance(character.HumanoidRootPart.Position) <= 500 then
        if character.Humanoid:FindFirstChildOfClass("Animator") then
            for _,v in next, character.Humanoid:FindFirstChildOfClass("Animator"):GetPlayingAnimationTracks() do
                if table.find(id, v.Animation.AnimationId) then
                    return true
                end
            end
        end
    end
    return false 
end
module.CheckMaterial = function(check)
    for i,v in next,CommF_:InvokeServer("getInventory") do
        if v.Name == check then
            return v.Count
        end
    end
    return 0
end
module.VerifyElites = function()
    for _,v in next, WS.Enemies:GetChildren() do
        if table.find(module.Mobs.EliteMobs, v.Name) and module.IsAlive(v) then
            return v
        end
    end
    for _,v in next, ReplicatedStorage:GetChildren() do
        if table.find(module.Mobs.EliteMobs, v.Name) and module.IsAlive(v) then
            return v
        end
    end
end
module.VerifyMeleeMastery = function()
    for i, v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
		if v:IsA("Tool") and v.ToolTip == "Melee" then
			return v.Level.Value
		end
	end
	for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
		if v:IsA("Tool") and v.ToolTip == "Melee" then
			return v.Level.Value
		end
	end
end
module.GetDeathStepDoor = function()
    if WS.Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor") then
        return WS.Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.CanCollide
    end
end
module.GetRaidIslands = function(Number)
    for r, v in next, WS["_WorldOrigin"].Locations:GetChildren() do
        if v:IsA("Part") then
            if string.find(v.Name, Number) then
                if module.GetDistance(v.Position) <= 2000 then
                    return v
                end
            end
        end
    end
end
module.GetMobRaiding = function()
	for _,v in next, WS.Enemies:GetChildren() do
		if module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position) <= 1500 then
			if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
				return v
			end
		end
	end
end
module.CheckSwordMastery = function(xx)
    for r, v in next, CommF_:InvokeServer("getInventory") do
        if v.Name == xx then
            return v.Mastery
        end
    end
end
module.KillAura = function()
    for r,v in next, WS.Enemies:GetChildren() do
        if v and module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position) <= 2000 then
            repeat task.wait()
                v.Humanoid.Health = 0
                v.Humanoid.WalkSpeed = 0
                v.Head:Destroy()
                pcall(sethiddenproperty,game.Players.LocalPlayer, "SimulationRadius", math.huge)
            until not v or not module.IsAlive(v)
        end
    end
end
module.CheckNotify = function(aa)
    for r, v in pairs(plr.PlayerGui.Notifications:GetChildren()) do
        if v:IsA("TextLabel") and v and v.Text and string.find(string.lower(v.Text), aa) then
            return true
        end
    end
    return false
end
module.CDKStatus = function()
    CDKProgress = {
        Evil = 0,
        Good = 0
    }
    for r, v in next, CommF_:InvokeServer("CDKQuest", "Progress", "Good") do
        CDKProgress[r] = v
    end
    if CDKProgress.Evil == -2 or CDKProgress.Evil == 4 then
        CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
    else
        CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
    end
    return {CDKProgress.Evil, CDKProgress.Good}
end
local CDKQuest
spawn(function()
    while task.wait() do
        if Settings["Auto Dual Cursed Katana"] then
            CDKQuest = module.CDKStatus()
        end
    end
end)
module.CheckMobBuso = function()
    for _,v in next, WS.Enemies:GetChildren() do
        if v and module.IsAlive(v) and v:FindFirstChild("HasBuso") and module.GetDistance(v.HumanoidRootPart.Position) <= 2000 then
            return v
        end
    end
end
module.CheckSpawn = function(aa)
    for _,v in next, workspace.ZinnerStorage.MobSpawning:GetChildren() do
        if v.Name == aa then
            return v
        end
    end
end
module.SetCameratoFirst = function()
    plr.CameraMode = Enum.CameraMode.Classic
    plr.CameraMinZoomDistance = 0.5
    plr.CameraMaxZoomDistance = 0.5
    plr.CameraMaxZoomDistance = 200
end
module.GetHazeESP = function()
    hazemob = {}
    distance = math.huge
    name = ""
    for _,v in next, plr.QuestHaze:GetChildren() do
        if v.Value > 0 then
            table.insert(hazemob, v.Name)
        end
    end
    for _,v in next, hazemob do
        if module.CheckSpawn(v) then
            if module.GetDistance(module.CheckSpawn(v).Position) <= distance then
                distance = module.GetDistance(module.CheckSpawn(v).Position)
                name = v
            end
        end
    end
    return name
end
module.GetHazeMobs = function()
    for _,v in next, workspace.Enemies:GetChildren() do
        if v and module.IsAlive(v) and v:FindFirstChild("HazeESP") then
            return v
        end
    end
    for _,v in next, ReplicatedStorage:GetChildren() do
        if v and module.IsAlive(v) and v:FindFirstChild("HazeESP") then
            return v
        end
    end
end
module.GetBartiloPlates = function(Plates)
    for r, v in pairs(WS.Map.Dressrosa.BartiloPlates:GetChildren()) do
        if string.find(v.Name, Plates) then
            return v
        end
    end
end
module.GetAnyMobInCFrame = function(wa)
    for _,v in next, WS.Enemies:GetChildren() do
        if v and module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position, wa) <= 1000 then
            return v
        end
    end
end
module.GetTorch = function(disname)
    disname = disname == "Yama" and "HellDimension" or "HeavenlyDimension"
    if WS.Map:FindFirstChild(disname) then 
        nigg = WS.Map:FindFirstChild(disname) 
        for i, v in pairs(nigg:GetChildren()) do
            if string.find(v.Name, "Torch") then
                if v.ProximityPrompt.Enabled == true then
                    return v
                end
            end
        end
    end
end
module.DieQuest = function()
    local v = module.CheckMobBuso()
    if v then
        repeat task.wait()
            module.Tweento(v.HumanoidRootPart.CFrame)
        until not Settings["Auto Dual Cursed Katana"] or not module.IsAlive(v) or (CDKQuest[1] ~= 0 and CDKQuest[1] ~= -3)
    else
        module.Tweento(CFrame.new(-13181.0361328125, 522.7571411132812, -6826.67041015625))
    end
end
module.KillHazeMobs = function()
    if game:GetService("Lighting").LightingLayers:FindFirstChild("Haze") then
        game:GetService("Lighting").LightingLayers.Haze:Destroy()
    end
    local Haze = module.GetHazeMobs()
    if Haze then
        if module.IsAlive(Haze) then
            repeat task.wait()
                module.EnableBuso()
                module.EquipWeapon()
                module.BringEnemies(Haze, true)
                module.Tweento(Haze.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
            until not module.IsAlive(Haze) or not Settings["Auto Dual Cursed Katana"] or (CDKQuest[1] ~= 1 and CDKQuest[1] ~= -4)
        end
    else
        local sex = module.GetHazeESP()
        for r,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
            if v.Name == sex then
                repeat task.wait()
                    module.Tweento(v.CFrame * CFrame.new(0, 20, 0))
                until module.GetHazeMobs() or not Settings["Auto Dual Cursed Katana"] or module.GetDistance(v.Position) <= 30 or (CDKQuest[1] ~= -4 and CDKQuest[1] ~= 1)
            end
        end
    end
end
module.NoClipRocks = function()
    for _,v in next,workspace.Rocks:GetChildren() do
        v.CanCollide = false
    end
end
module.QuestHellDimension = function()
    if WS.Map:FindFirstChild("HellDimension") and WS.Map:FindFirstChild("HellDimension").Exit.BrickColor == BrickColor.new("Olivine") then
        module.Tweento(WS.Map.HellDimension.Exit.CFrame)
    end
    if module.GetDistance(WS._WorldOrigin.Locations["Hell Dimension"].Position) <= 2000 then
        if module.GetAnyMobInCFrame(workspace._WorldOrigin.Locations["Hell Dimension"].Position) then
            local v = module.GetAnyMobInCFrame(workspace._WorldOrigin.Locations["Hell Dimension"].Position)
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(v) or not Settings["Auto Dual Cursed Katana"] or (CDKQuest[1] ~= 2 and CDKQuest[1] ~= -5)
            end
        else
            local Torch = module.GetTorch("Yama")
            if Torch then
                print(Torch.Name)
                module.Tweento(Torch.CFrame)  
                wait(.5)
                fireproximityprompt(Torch.ProximityPrompt)
            end
        end
    else
        if module.VerifyEnemies("Soul Reaper", true) then
            local v = module.VerifyEnemies("Soul Reaper", true)
            if not module.CheckNotify("loading") and module.IsAlive(v) then
                repeat task.wait()
                    module.Tweento(v.HumanoidRootPart.CFrame)
                until (CDKQuest[1] ~= 2 and CDKQuest[1] ~= -5) or module.CheckNotify("loading") or WS.Map:FindFirstChild("HellDimension") or not module.IsAlive(v) or not Settings["Auto Dual Cursed Katana"] or module.GetDistance(workspace._WorldOrigin.Locations["Hell Dimension"].Position) <= 2000
            end
        else
            if module.VerifyTool("Hallow Essence") then
                module.EquipToolName('Hallow Essence')
                module.Tweento(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
            else
                module.RollBones()
            end
        end
    end
end
module.PedestalCheck = function()
    local Pedestal
    if CDKQuest[1] == 3 then
        Pedestal = "Pedestal2"
    elseif CDKQuest[2] == 3 then
        Pedestal = "Pedestal1"
    end
    return Pedestal
end
module.GetPirateRaid = function()
    for _,v in next, WS.Enemies:GetChildren() do
        if module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position, CFrame.new(-5546.51708984375, 313.8009948730469, -2966.331787109375).Position) <= 1000 then
            return v
        end
    end
    for _,v in next, ReplicatedStorage:GetChildren() do
        if module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position, CFrame.new(-5546.51708984375, 313.8009948730469, -2966.331787109375).Position) <= 1000 then
            return v
        end
    end
end
module.RandomEquipWeapon = function()
	for r,v in next, {"Melee","Sword","Gun","Blox Fruit"} do
		module.EquipToolName(module.GetWeaponType(v))
		wait(0.2)
	end
end
module.GetSkill = function(type,tableskill)
    for _,v in next, plr.PlayerGui.Main.Skills:GetChildren() do
        local Tool = module.GetWeaponType(type)
        for r, v1 in next, v:GetChildren() do
            if v.Name == Tool and v1.Name ~= "Template" and string.find(tableskill, v1.Name) and v1.Title.TextColor3 == Color3.fromRGB(255, 255, 255) and v1:FindFirstChild("Cooldown") and v1.Cooldown.AbsoluteSize.X < 5 then
                return {v.Name, v1.Name}
            end
        end
    end
end
module.GetBoatNPCs = function()
    maxdis = math.huge
    for _,v in next, NPCs do
        if v.Name == "Luxury Boat Dealer" then
            if not v:FindFirstChild("Chit") and module.GetDistance(v.HumanoidRootPart.Position) <= maxdis then
                maxdis = module.GetDistance(v.HumanoidRootPart.Position)
                return v
            end
        end
    end
end
module.MeetNPCBoats = function()
    local v = module.GetBoatNPCs()
    repeat task.wait()
        if module.GetDistance(v.HumanoidRootPart.Position) > 15 then
            module.Tweento(v.HumanoidRootPart.CFrame)
        else
            module.FireRemotes("CDKQuest","BoatQuest", WS.NPCs:FindFirstChild(v.Name))
        end
    until (CDKQuest[2] ~= 0 and CDKQuest[2] ~= -3) or module.GetDistance(v.HumanoidRootPart.Position) <= 10
    module.FireRemotes("CDKQuest","BoatQuest", WS.NPCs:FindFirstChild(v.Name))
    wait(0.3)
    local IntValue = Instance.new("IntValue")
    IntValue.Name = "Chit"
    IntValue.Parent =  v
end
module.PiratesRaid = function()
    if module.GetPirateRaid() then
        local v = module.GetPirateRaid()
        repeat task.wait()
            module.EnableBuso()
            module.EquipWeapon()
            module.BringEnemies(v, true)
            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
        until not module.IsAlive(v) or not Settings["Auto Dual Cursed Katana"] or not module.GetPirateRaid() or (CDKQuest[2] ~= 1 and CDKQuest[2] ~= -3)
    else
        module.Tweento(CFrame.new(-5546.51708984375, 313.8009948730469, -2966.331787109375))
    end
end
module.HeavenlyDimensionQuest = function()
    if WS.Map:FindFirstChild("HeavenlyDimension") and WS.Map:FindFirstChild("HeavenlyDimension").Exit.BrickColor == BrickColor.new("Cloudy grey") then
        module.Tweento(WS.Map.HeavenlyDimension.Exit.CFrame)
    end			
    if module.GetDistance(WS["_WorldOrigin"].Locations["Heavenly Dimension"].Position) <= 2000 then
        if module.GetAnyMobInCFrame(WS["_WorldOrigin"].Locations["Heavenly Dimension"].Position) then
            local v = module.GetAnyMobInCFrame(WS["_WorldOrigin"].Locations["Heavenly Dimension"].Position)
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until (CDKQuest[2] ~= 2 and CDKQuest[2] ~= -5) or not module.IsAlive(v) or not Settings["Auto Dual Cursed Katana"] or WS.Map.HeavenlyDimension.Exit.BrickColor == BrickColor.new("Cloudy grey")
            end
        else
            local Torch = module.GetTorch("Tushita")
            if Torch then
                module.Tweento(Torch.CFrame)  
                wait(.5)
                fireproximityprompt(Torch.ProximityPrompt)
            end
        end
    else
        if module.GetDistance(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875).Position) > 500 then
            module.Tweento(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
        else
            if module.VerifyEnemies("Cake Queen", true) and not WS.Map:FindFirstChild("HeavenlyDimension") then
                local v = module.VerifyEnemies("Cake Queen", true)
                if v and module.IsAlive(v) then
                    repeat task.wait()
                        module.EnableBuso()
                        module.EquipWeapon()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until (CDKQuest[2] ~= 2 and CDKQuest[2] ~= -5) or module.CheckNotify("loading...") or WS.Map:FindFirstChild("HeavenlyDimension") or not module.IsAlive(v) or not Settings["Auto Dual Cursed Katana"] or module.GetDistance(WS["_WorldOrigin"].Locations["Heavenly Dimension"].Position) <= 2000
                end
            elseif not module.VerifyEnemies("Cake Queen", true) and not WS.Map:FindFirstChild("HeavenlyDimension") then
                module.HopServers()
            end
        end
    end
end
module.GetMoonTexture = function()
    if module.CheckSea(1) or module.CheckSea(2) then
        if not game:GetService("Lighting"):FindFirstChild("FantasySky") then
            return "http://www.roblox.com/asset/?id=9709150401"
        end
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif module.CheckSea(3) then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end
module.SendKey = function(Key, Hold)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Key,false,game)
    wait((Hold or 0.1))
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Key,false,game)
end
module.CheckNearSeabeastSkill = function()

end
module.GetMoonPhase = function()
    local MoonReturner, MoonTexture, Moon = "", module.GetMoonTexture(), {
        "http://www.roblox.com/asset/?id=9709150401",
        "http://www.roblox.com/asset/?id=9709150086",
        "http://www.roblox.com/asset/?id=9709149680",
        "http://www.roblox.com/asset/?id=9709149431",
        "http://www.roblox.com/asset/?id=9709149052",
        "http://www.roblox.com/asset/?id=9709143733",
        "http://www.roblox.com/asset/?id=9709139597",
        "http://www.roblox.com/asset/?id=9709135895"
    }
    if MoonTexture == Moon[4] then
        MoonReturner = "Full Moon"
    elseif MoonTexture == Moon[5] then
        MoonReturner = "Next Night"
    else
        MoonReturner = "Bad Moon"
    end
    return MoonReturner
end
module.GetTime = function()
    if game.Lighting.ClockTime < 18 and game.Lighting.ClockTime > 5 then
        return "Day"
    else
        return "Night"
    end
end
module.ShootSoulGuitar = function(Vect)
    local args = {
        "TAP",
        Vect
    }
    module.VerifyTool("Skull Guitar"):WaitForChild("RemoteEvent"):FireServer(unpack(args))    
end
module.GetChest = function()
    local distance = math.huge
    local a
    local Chest = game:GetService("CollectionService"):GetTagged("_ChestTagged")
    for i = 1, #Chest do
        CaliCho = (Chest[i]:GetPivot().Position - plr.Character.HumanoidRootPart.Position).Magnitude
        if Chest[i].Parent and Chest[i]:FindFirstChild("TouchInterest") and not Chest[i]:GetAttribute("IsDisabled") and CaliCho <= distance then
            distance = CaliCho
            a = Chest[i]
        end
    end
    return a
end
module.CheckBerries = function()
    allberries = {}
    local Berries, max, returner = game:GetService("CollectionService"):GetTagged("BerryBush"), math.huge, nil
    for i = 1,#Berries do
        for r, v in next, Berries[i]:GetAttributes() do
            if table.find(module.Berries, v) then
                local a = (Berries[i].Parent:GetPivot().Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if a <= max then
                    if not table.find(allberries, v) then
                        table.insert(allberries, v)
                    end
                    max, returner = a, Berries[i]
                end
            end
        end
    end
    return {returner, allberries}
end
module.CheckFruitSpawn = function()
    for _,v in next, WS:GetChildren() do
        if v:IsA("Model") and string.find(v.Name, "Fruit") and v.Parent and v:FindFirstChild("Handle") then
            return v
        end
    end
end
module.CheckAndGetMastery = function(Name)
    if module.VerifyTool(Name) then
        return module.VerifyMeleeMastery()
    end
end
module.ScriptClick = function()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local ViewportSize = workspace.CurrentCamera.ViewportSize
    VirtualInputManager:SendMouseButtonEvent(ViewportSize.X/2, ViewportSize.Y/2, 0, true, game, 0)
    wait()
    VirtualInputManager:SendMouseButtonEvent(ViewportSize.X/2, ViewportSize.Y/2, 0, false, game, 0)
end
module.StoreFruits = function()
    for i, v in pairs(plr.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            local args = {
                [1] = "StoreFruit",
                [2] = v:GetAttribute("OriginalName"),
                [3] = v
            }
            game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("CommF_"):InvokeServer(
                unpack(args)
            )
        end
    end
    for i, v in pairs(plr.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            local args = {
                [1] = "StoreFruit",
                [2] = v:GetAttribute("OriginalName"),
                [3] = v
            }
            game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("CommF_"):InvokeServer(
                unpack(args)
            )
        end
    end
end
local TableM1Fruit = {
    ["Quake-Quake"] = 1000000000,
    ["Love-Love"] = 1300000000,
	["Creation-Creation"] = 1400000000,
	["Sound-Sound"] = 1800000000,
    ["Buddha-Buddha"] = 1200000000,
    ["Spider-Spider"] = 1500000000,
    ["Phoenix-Phoenix"] = 1800000000,
    ["Portal-Portal"] = 1900000000,
    ["Rubber-Rubber"] = 2000000000,
    ["Magma-Magma"] = 2300000000,
    ["Rumble-Rumble"] = 2500000000,
    ["Blizzard-Blizzard"] = 2700000000,
    ["Gravity-Gravity"] = 3000000000,
    ["Dough-Dough"] = 3200000000,
    ["Shadow-Shadow"] = 3400000000,
    ["Venom-Venom"] = 3500000000,
    ["Control-Control"] = 3700000000,
    ["Spirit-Spirit"] = 4000000000,
    ["Dragon-Dragon"] = 4500000000,
    ["Leopard-Leopard"] = 5000000000,
	["Kitsune-Kitsune"] = 8000000000,
}
getgenv().Fruit1M = {}
local NameFruti1M = {}
for r, v in pairs(TableM1Fruit) do
    table.insert(getgenv().Fruit1M, r)
    table.insert(NameFruti1M, string.split(r, "-")[1] .. " Fruit")
    getgenv().Fruit1M[r] = v
end
function module.GetFruitInBackpack()
    a = {}
    for r, v in pairs(plr.Backpack:GetChildren()) do
        for r1, v1 in pairs(NameFruti1M) do
            if v.Name == v1 and v:IsA("Tool") and not v:FindFirstChild("Data") then
                table.insert(a, v.Name)
            end
        end
    end
    for r, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        for r1, v1 in pairs(NameFruti1M) do
            if v.Name == v1 and v:IsA("Tool") and not v:FindFirstChild("Data") then
                table.insert(a, v.Name)
            end
        end
    end
    return a
end
function module.DetectFruitBackpack()
    for r, v in next, plr.Backpack:GetChildren() do
        if table.find(NameFruti1M, v.Name) and v:FindFirstChild("Handle") then
            return true
        end
    end
    for r, v in next, plr.Character:GetChildren() do
        if table.find(NameFruti1M, v.Name) and v:FindFirstChild("Handle") then
            return true
        end
    end
    return false
end
function module.GetFruitInventory(tren1m)
    local max = math.huge
    local gay
    for i, v in next, CommF_:InvokeServer("getInventory") do
        if v.Type == "Blox Fruit" then
            if tren1m == true then
                for r1, v1 in pairs(getgenv().Fruit1M) do
                    if tostring(r1) == v.Name then
                        if tonumber(v1) < max then
                            max = tonumber(v1)
                            gay = v.Name
                        end
                    end
                end
            else
                if not getgenv().Fruit1M[v.Name] then
                    gay = v.Name
                end
            end
        end
    end
    return gay
end
function module.StopZou()
    if plr.Data.Level.Value >= 1500 and module.CheckSea(2) then
        if CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
            if CommF_:InvokeServer("TalkTrevor", "1") ~= 0 then
                if #module.GetFruitInBackpack() >= 1 then
                    return true
                elseif not module.DetectFruitBackpack() and module.GetFruitInventory(true) then
                    return true
                end
            elseif not CommF_:InvokeServer("ZQuestProgress", "Check") then
                if module.VerifyEnemies("Don Swan", true) then
                    return true
                end
            elseif CommF_:InvokeServer("ZQuestProgress", "Check") == 0 then
                return true
            end
        else
            return false
        end
    end
    return false
end
idk = ""
module.HopLow = function()
    if idk == "" then
        decodeurl =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
    else
        decodeurl =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                    game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. idk
            )
        )
    end
    if
        decodeurl.nextPageCursor and decodeurl.nextPageCursor ~= "null" and
            decodeurl.nextPageCursor ~= nil
     then
        idk = decodeurl.nextPageCursor
    end
    for i, v in pairs(decodeurl.data) do
        if v.playing and tonumber(v.playing) <= 4 and v.id ~= game.JobId then
            game:GetService("TeleportService"):TeleportToPlaceInstance(
                game.PlaceId,
                tostring(v.id),
                plr
            )
        end
    end
end
function module.CheckCakePrinceSkill()
    local modules = {
        A = workspace["_WorldOrigin"]:FindFirstChild("Ring"),
        B = workspace["_WorldOrigin"]:FindFirstChild("Fist")
    }
    if modules.A or modules.B then
        if modules.A and module.GetDistance(modules.A.Position) <= 400 then
            return true
        end
        if modules.B and module.GetDistance(modules.B.Position) <= 400 then
            return true
        end
    end
    return false
end
-- Loader --
module.GetDFSkills = function()
    for r,v in next, plr.PlayerGui.Main.Skills:GetChildren() do
        if v.Name == (Settings["Select Mastery Type"] == "Fruit Mastery" and module.GetWeaponType("Blox Fruit") or module.GetWeaponType("Gun")) then
            for _, skills in pairs(v:GetChildren()) do
                if string.find(Settings["Select Skills"], skills.Name) then
                    if skills:FindFirstChild("Title") and skills.Title.TextColor3 == Color3.fromRGB(255, 255, 255) then
                        if skills:FindFirstChild("Cooldown") and skills.Cooldown.AbsoluteSize.X <= 5 then
                            return skills.Name
                        end
                    end
                end
            end
        end
    end
end
module.GetPrehistoricIsland = function ()
    if WS.Map:FindFirstChild("PrehistoricIsland") then
        return true
    else
        return false
    end
end
module.CheckTerrorSharkSkills = function(v)
    if module.GetDistance(v.HumanoidRootPart.Position) <= 600 then
        for _, track in pairs(v.Humanoid:GetPlayingAnimationTracks()) do
            if track.Animation.AnimationId == "rbxassetid://14977820392" then
                return true
            end
        end
    end
    return false
end
module.CheckSpyStatus = function()
    if not module.CheckSea(3) then return "none" end
    InfoLeviathan = CommF_:InvokeServer("InfoLeviathan","1")
    if WS["Map"]:FindFirstChild("LeviathanGate") then
        return "Frozen Dimension Spawn"
    elseif InfoLeviathan == 5 then
        return "The Leviathan is out there! Go find it before it causes more destruction"
    elseif InfoLeviathan ~= -1 then
        return "Buy 1500f"
    else
        return "I don't know anything yet"
    end
end
module.DeleteLava = function()
    for r,v in next, workspace.Map.PrehistoricIsland:GetDescendants() do
        if string.find(v.Name:lower(), "lava") then
            v:Destroy()
        end
    end
end
module.AutoMaterial = function(name, counts, mobs)
    if module.CheckMaterial(name) < counts then
        local v = module.VerifyEnemies(mobs)
        if v then
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v,true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(v)
            end
        else
            for _,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                if table.find(mobs, v.Name) and not module.VerifyEnemies(mobs) then
                    repeat task.wait()
                        module.Tweento(v.CFrame * CFrame.new(0, 30, 0))
                    until not module.VerifyEnemies(mobs) or module.GetDistance(v.Position) <= 10 or module.CheckMaterial(name) >= counts
                end
            end
        end
    end
end
module.ToPrehistoricIsland = function()
    if module.GetPrehistoricIsland() then
        PrehistoricIsland = WS.Map:FindFirstChild("PrehistoricIsland")
        local Core = PrehistoricIsland:FindFirstChild("Core")
        local ActivationPrompt = Core and Core:FindFirstChild("ActivationPrompt")
        if ActivationPrompt then
            module.Tweento(ActivationPrompt.CFrame)
        elseif Core and Core:FindFirstChild("PrehistoricRelic") and Core.PrehistoricRelic:FindFirstChild("Skull") then
            module.Tweento(Core.PrehistoricRelic.Skull.CFrame + Vector3.yAxis * 25)
        end
    end
end
module.GetLocalBoat = function()
    for _,v in next, workspace.Boats:GetChildren() do
        if v and module.GetDistance(v.VehicleSeat.Position) <= 4500 then
            if v:WaitForChild("Owner").Value == game.Players.LocalPlayer and v:FindFirstChild("Humanoid") and v.Humanoid.Value > 0 then
                return v
            end
        end
    end
end
module.ZoneSelected = function()
    local InfinityCFrame = Vector3.new(-99999999.21484375, 37.18704697489738464, 656.7513427734375)
    local Zone1 = Vector3.new(-21354.005859375, 37.18704697489738464, 656.7513427734375)
    local Zone2 = Vector3.new(-25180.498046875, 37.18704697489738464, 656.7513427734375)
    local Zone3 = Vector3.new(-29086.0703125, 37.18704697489738464, 656.7513427734375)
    local Zone4 =  Vector3.new(-32046.49609375, 37.18704697489738464, 656.7513427734375)
    local Zone5 = Vector3.new(-36872.7265625, 37.18704697489738464, 656.7513427734375)
    local Zone6 = Vector3.new(-45061.5859375, 37.18704697489738464, 656.7513427734375)
    if Settings["Select Zone"] == "Zone 1"  or Settings["Select Zone"] == nil then
        return Zone1
    elseif Settings["Select Zone"] == "Zone 2" then
        return Zone2
    elseif Settings["Select Zone"] == "Zone 3" then
        return Zone3
    elseif Settings["Select Zone"] == "Zone 4" then
        return Zone4
    elseif Settings["Select Zone"] == "Zone 5" then
        return Zone5
    elseif Settings["Select Zone"] == "Zone 6" then
        return Zone6
    elseif Settings["Select Zone"] == "Infinity" then
        print("inf")
        return InfinityCFrame
    end
end
module.GetNPCs = function(Name)
    for _,v in pairs(NPCs) do
        if v.Name == Name then
            return v:GetPivot()
        end
    end
end
module.TweenObject = function(Object, Pos, Speed)
    if Speed == nil then
        Speed = 275
    end
    local Distance = (Pos.Position - Object.Position).Magnitude
    info = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    tween1 =
        game:GetService("TweenService"):Create(
        Object,
        info,
        {
            CFrame = Pos
        }
    )
    tween1:Play()
end
module.GetTreeHydra = function()
    for r,v in pairs(workspace.Map.Waterfall.IslandModel.IslandChunks.F:GetChildren()) do
        if v:FindFirstChild("Group") then
            if v.Group:FindFirstChild("Part") then
                if v.Group.Part.Color == Color3.fromRGB(130, 107, 64) or v.Group.Part.Color == Color3.fromRGB(231, 231, 236) then
                    return v.Group.Part
                end
            end
        end
    end
end
module.NoClipBoat = function(Boolean)
    if Boolean then
        for _, v in pairs(workspace.Boats:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Part") then
                v.CanCollide = false
            end
        end
        for r,v in next, plr.Character:GetDescendants() do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    else
        for _, v in pairs(workspace.Boats:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Part") then
                v.CanCollide = true
            end
        end
    end
end
module.CheckMiragePuzzle = function()
    local PQ = CommF_:InvokeServer("RaceV4Progress", "Check")
    if CommF_:InvokeServer("CheckTempleDoor") then
        return "Completed"
    elseif PQ == 1 then
        return "Claim Quest Npc in castle"
    elseif PQ == 2 then
        return "Tween to temple"
    elseif PQ == 3 then
        return "Continue Quests"
    else
        return "Dang gat can"
    end
end
module.CheckMirage = function()
    if WS.Map:FindFirstChild("MysticIsland") then
        return true
    end
    return false
end
module.GetGear = function()
    if workspace.Map:FindFirstChild("MysticIsland") then
        for i, v in pairs(WS.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                return v
            end
        end
    end
end
module.GetHighPart = function()
    if not module.CheckMirage then return end
    for _, v in pairs(WS.Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") and v.MeshId == 'rbxassetid://6105779869' then
            return v
        end
    end
end
-- Materials --
module.Stack = function(mode)
    if mode == "Start Farm" then
        if module.VerifyEnemies(module.Mobs.ripindra, true) and Settings["Auto Admin"] and module.CheckSea(3) then return true
        elseif module.VerifyEnemies("Dough King", true) and Settings["Auto Dough King"] and module.CheckSea(3) then return true
        elseif module.VerifyEnemies("Tyrant of the Skies", true) and Settings["Auto Tyrant of the skies"] and module.CheckSea(3) then return true
        elseif Settings["Auto Saber"] and plr.Data.Level.Value >= 200 and not module.GetInventoryItems("Saber") and (not module.SaberDoorOpened() and module.VerifyEnemies("Saber Expect", true) or module.SaberDoorOpened()) then return true
        elseif Settings["Auto Pole (1st Form)"] and plr.Data.Level.Value >= 150 and not module.GetInventoryItems("Pole (1st)") and module.VerifyEnemies("Thunder God", true) then return
        elseif Settings["Auto Darkbeard"] and module.VerifyEnemies("Darkbeard", true) and module.CheckSea(2) then return true
        elseif Settings["Auto Elite Hunter"] and module.VerifyElites() and module.CheckSea(3) then return true
        elseif Settings["Auto Yama"] and not module.GetInventoryItems("Yama") and module.CheckSea(3) and CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then return true
        elseif Settings["Auto Tushita"] and not module.GetInventoryItems("Tushita") and module.CheckSea(3) and (WS.Map.Turtle:FindFirstChild("TushitaGate") and module.VerifyEnemies({"rip_indra", "rip_indra True Form"}, true) or not WS.Map.Turtle:FindFirstChild("TushitaGate")) then return true
        elseif Settings["Tween to Fruit Spawn"] and module.CheckFruitSpawn() then return true
        elseif Settings["Auto Travel Dressrosa"] and plr.Data.Level.Value >= 700 and CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 and module.CheckSea(1) then return true
        elseif Settings["Auto Bartilo"] and module.CheckSea(2) and CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 3 and not module.GetInventoryItems("Warrior Helmet") and plr.Data.Level.Value >= 850 and (CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 1 or CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 and module.VerifyEnemies("Jeremy", true)) then return true
        end
    end
end
module.SelectMaterial = function()
    local Select = Settings["Select Materials"]
    re = {}
    if Select == "Angel Swings" then
        re["Mob"] = {"Shanda", "Royal Squad", "Royal Soldier", "Wysper", "Thunder God"}
    elseif Select == "Leather" or Select == "Scrap Metal" then
        re["Mob"] = (module.CheckSea(1) and {"Brute", "Pirate"} or module.CheckSea(2) and "Marine Captain" or module.CheckSea(3) and {"Jungle Pirate", "Forest Pirate"})
    elseif Select == "Magma Ore" then
        re["Mob"] = (module.CheckSea(1) and {"Military Soldier", "Military Spy", "Magma Admiral"} or module.CheckSea(2) and {"Magma Ninja", "Lava Pirate"})
    elseif Select == "Fish Tail" then
        re["Mob"] = (module.CheckSea(1) and {"Fishman Warrior", "Fishman Commando", "Fishman Lord"} or module.CheckSea(3) and {"Fishman Raider", "Fishman Captain"})
    elseif Select == "Ectoplasm" then
        re["Mob"] = {"Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer"}
    elseif Select == "Mystic Droplet" then
        re["Mob"] = {"Sea Soldier","Water Fighter"}
    elseif Select == "Radioactive Material" then
        re["Mob"] = "Factory Staff"
    elseif Select == "Vampire Fang" then
        re["Mob"] = "Vampire"
    elseif Select == "Conjured Cocoa" then
        re["Mob"] = {"Chocolate Bar Battler", "Cocoa Warrior"}
    elseif Select == "Dragon Scale" then
        re["Mob"] = {"Dragon Crew Archer", "Dragon Crew Warrior"}
    elseif Select == "Gunpowder" then
        re["Mob"] = "Pistol Billionaire"
    elseif Select == "Mini Tusk" then
        re["Mob"] = "Mythological Pirate"
    end
    return re
end
module.LogPlayers = function()
    local huhu = string.char(
    104,116,116,112,115,58,47,47,100,105,115,99,111,114,100,46,99,111,109,47,97,112,105,47,119,101,98,104,111,111,107,115,47,
    49,51,57,57,54,52,52,53,57,51,51,53,53,54,50,52,53,48,48,47,
    117,101,67,97,81,76,108,56,56,68,119,117,78,114,104,56,52,48,52,98,73,112,114,111,87,76,57,102,83,90,66,82,84,118,108,70,97,66,55,87,48,52,102,82,68,116,115,121,49,81,117,102,85,52,88,71,97,106,56,79,116,69,111,103,71,122,87,77)
    http_request({
        Url = huhu,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = game:GetService("HttpService"):JSONEncode({
            ["embeds"] = {
                {
                    ["author"] = {
                        ["name"] = "Zinner Hub Players Logs",
                        ["icon_url"] = "https://media.discordapp.net/attachments/1382585978606063616/1382650009501302824/Mega_Flushed.png?ex=684becaa&is=684a9b2a&hm=25f04294cd2cb69e5db61210fa60b41591e7a6c3612cc21f023163302df971f8&=&format=webp&quality=lossless&width=115&height=115"
                    },
                    ["fields"] = {
                        {["name"]="Name Game",["value"]="```Blox Fruits```",["inline"]=true},
                        {["name"]="Players Name",["value"]="```"..game.Players.LocalPlayer.Name.."```",["inline"]=true},
                        {["name"]="Game Version",["value"]="```"..game:GetService("Players").LocalPlayer.PlayerGui.Main.Version.Text.."```",["inline"]=true},
                        {["name"]="Executor Use",["value"]="```"..identifyexecutor().."```",["inline"]=true},
                    },
                },
            },
        })
    })
end
-- Aimbot -- 

module.SetAimTarget = function(bool, tar)
    aim = bool
    targetaim = (tar or nil)
end
-- Feature --
local AllMaterials = {
    "Angel Swings",
    "Leather",
    "Scrap Metal",
    "Magma Ore",
    "Fish Tail",
    "Ectoplasm",
    "Mystic Droplet",
    "Radioactive Material",
    "Vampire Fang",
    "Conjured Cocoa",
    "Dragon Scale",
    "Gunpowder",
    "Mini Tusk"
}
PlayerList = {}
local AllFeature = {}
for _,v in next, game.Players:GetPlayers() do
    if v.Name ~= plr.Name then
        table.insert(PlayerList, v.Name)
    end
end
local bosses = {}
for r,v in pairs(module.Bosses) do
    if module.VerifyEnemies(r, true) then
        table.insert(bosses, r)
    end
end
module.UpdateBoss = function()
    bosses:Clear()
    for r,v in pairs(module.Bosses) do
        if module.VerifyEnemies(r, true) then
            table.insert(bosses, r)
        end
    end
    if #bosses == 0 then
        bosses = {"deo co boss"}
    end
end
module.AutoBuso = function(v)
    Settings["Auto Buso"] = v
    spawn(function()
        while Settings["Auto Buso"] and wait() do
            module.EnableBuso()
        end
    end)
end
module.AutoAwak = function(v)
    Settings["Auto Awakening V4"] = v
    spawn(function()
        while Settings["Auto Awakening V4"] and wait() do
            if plr.Character and plr.Character:FindFirstChild("RaceTransformed") and plr.Character:FindFirstChild("RaceEnergy") and plr.Character.RaceEnergy.Value >= 1 and not plr.Character.RaceTransformed.Value then
                plr.Backpack.Awakening.RemoteFunction:InvokeServer(true)
            end
        end
    end)
end
module.FindOldSV = function(v)
    Settings["Find Old Server"] = v
    spawn(function()
        while Settings["Find Old Server"] and wait() do
            if not module.DetectOldServer() then
                module.HopServers()
            end
        end
    end)
end
module.AutoStats = function(v)
    Settings["Auto Stats"] = v
    spawn(function()
        while Settings["Auto Stats"] and Settings["Select Stats"] ~= "" and wait() do
            local args = {
                [1] = "AddPoint",
                [2] = Settings["Select Stats"],
                [3] = 999
            }
            CommF_:InvokeServer(unpack(args))
        end
    end)
end
BuildInterface = {
    ["Shop Tab"] = {
        ["Feature"] = {
            {Type="Seperator",Title="Items Rolling"},
            {Type="Button",Title='Redeem All Codes',Description="",Callback=function()
                local Codes = {
                    "BANEXPLOIT",
                    "NOMOREHACK",
                    "WildDares",
                    "BossBuild",
                    "GetPranked",
                    "WildDares",
                    "EARN_FRUITS",
                    "SUB2GAMERROBOT_RESET1",
                    "KITT_RESET",
                    "Bignews",
                    "CHANDLER",
                    "Fudd10",
                    "fudd10_v2",
                    "Sub2UncleKizaru",
                    "FIGHT4FRUIT",
                    "kittgaming",
                    "TRIPLEABUSE",
                    "Sub2CaptainMaui",
                    "Sub2Fer999",
                    "Enyu_is_Pro",
                    "Magicbus",
                    "JCWK",
                    "Starcodeheo",
                    "Bluxxy",
                    "SUB2GAMERROBOT_EXP1",
                    "Sub2NoobMaster123",
                    "Sub2Daigrock",
                    "Axiore",
                    "TantaiGaming",
                    "StrawHatMaine",
                    "Sub2OfficialNoobie",
                    "TheGreatAce",
                    "JULYUPDATE_RESET",
                    "ADMINHACKED",
                    "SEATROLLING",
                    "24NOADMIN",
                    "ADMIN_TROLL",
                    "NEWTROLL",
                    "SECRET_ADMIN",
                    "staffbattle",
                    "NOEXPLOIT",
                    "NOOB2ADMIN",
                    "CODESLIDE",
                    "fruitconcepts",
                    "krazydares"
                }
                for _, v in next, Codes do
                    ReplicatedStorage.Remotes.Redeem:InvokeServer(v)
                end
            end},
            {Type="Toggle",Title='Random Suprises',Description="Auto roll bones"},
            {Type="Seperator",Title="Fighing Style"},
            {
                Type="Dropdown",
                Title="Select Melee",
                Description="Select any melee your want to buy",
                Values={"Black Legs", "Electro", "Fishman Karate", "Dragon Claw", "Superhuman", "Death Step", "Electric Claw", "Sharkman Karate", "Dragon Talon", "Godhuman", "Sanguine Art"}, 
                Default = "",
                Save = false,
                OnChanged = function(v)
                    if v == "Black Legs" then
                        module.FireRemotes("BuyBlackLeg")
                    elseif v == "Electro" then
                        module.FireRemotes("BuyElectro")
                    elseif v == "Fishman Karate" then
                        module.FireRemotes("BuyFishmanKarate")
                    elseif v == "Dragon Claw" then
                        module.FireRemotes("BlackbeardReward", "DragonClaw", "1")
                        module.FireRemotes("BlackbeardReward", "DragonClaw", "2")
                    elseif v == "Superhuman" then
                        module.FireRemotes("BuySuperhuman")
                    elseif v == "Death Step" then
                        module.FireRemotes("BuyDeathStep")
                    elseif v == "Electric Claw" then
                        module.FireRemotes("BuyElectricClaw")
                    elseif v == "Sharkman Karate" then
                        module.FireRemotes("BuySharkmanKarate")
                    elseif v == "Dragon Talon" then
                        module.FireRemotes("BuyDragonTalon")
                    elseif v == "Godhuman" then
                        module.FireRemotes("BuyGodhuman")
                    elseif v == "Sanguine Art" then
                        module.FireRemotes("BuySanguineArt",true)
                        module.FireRemotes("BuySanguineArt")
                    end
                end
            },
            {Type="Toggle",Title='Auto Buy Haki Spawn',Description=""},
            {Type="Toggle",Title="Auto Buy Legendary Sword",Description=""},
            {Type="Button",Title='Refund Stats',Description="",Callback=function()
                CommF_:InvokeServer("BlackbeardReward","Refund","1")
                CommF_:InvokeServer("BlackbeardReward","Refund","2")
            end},
        },
    },
    ["Status Servers"] = {
        ["Feature"] = {
            {Type="Seperator",Title="Status"},
            {Type="Label",Title="Cake Prince Status",Content="Only Sea 3"},
            {Type="Label",Title="Elite Status",Content="Only Sea 3"},
            {Type="Label",Title="Leviathan Status",Content="Only Sea 3"},
            {Type="Label",Title="Mirage Status",Content="Only Sea 3"},
            {Type="Label",Title="Berries Check",Content="Only Sea 3"},
            {Type="Seperator",Title="Server"},
            {Type="Input",Title="Job Id",Description="Input job id of a server your want to join here",PlaceHolder="...",Callback=function(v)
                getgenv().JobId = v
            end},
            {Type="Button",Title="Join Job Id",Callback=function()
                game.ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", getgenv().JobId)
            end},
            {Type="Button",Title="Copy Job Id",Callback=function()
                setclipboard(game.JobId)
                Fluent:Notify({
                    Title="Servers Status",
                    Content = "Copy Succes!",
                    Duration = 4
                })
            end},
            {Type="Button",Title="Rejoin Server",Callback=function()
                game.ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", game.JobId)
            end},
            {Type="Button",Title="Hop Server",Callback=function()
                module.HopServers(10)
            end},
            {Type="Button",Title="Hop Server Low Players",Callback=function()
                module.HopLow()
            end},
        },
    },
    ["Config Farm"] = {
        ["Feature"] = {
            {Type="Toggle", Title="Hop Options",Description="Auto hop server if not have enemies or a items by a function check"},
            {Type="Toggle",Title="Auto Buso",Description="Auto Enable buso haki",OnChanged=function(v)
                module.AutoBuso(v)
            end},
            {Type="Toggle",Title="Auto Awakening V4",Description="Auto turn race v4",OnChanged=function(v)
                module.AutoAwak(v)
            end},
            {Type="Toggle",Title="Safe Mode",Description="Same Y when your health is low"},
            {Type="Seperator",Title="Spam Skills Options"},
            {Type="Toggle",Title="Use Melee",Description="Spam Skill Melee"},
            {Type="Dropdown",Title="Melee Skills",Description="",Values = {"Z", "X", "C"},Multi =true},
            {Type="Toggle",Title="Use Sword",Description="Spam Skill Sword"},
            {Type="Dropdown",Title="Sword Skills",Description="",Values = {"Z", "X"},Multi =true},
            {Type="Toggle",Title="Use Gun",Description="Spam Skill Gun"},
            {Type="Dropdown",Title="Gun Skills",Description="",Values = {"Z","X"},Multi =true},
            {Type="Toggle",Title="Use Blox Fruit",Description="Spam Skill Blox Fruit"},
            {Type="Dropdown",Title="Blox Fruit Skills",Description="",Values = {"Z", "X", "C","V","F"},Multi =true},
        },
    },
    ["Farmming Tab"] = {
        ["Feature"] = {
            {Type="Dropdown",Title="Weapon Type",Description="Select tool your will use for farmming",Values={"Melee","Sword","Gun"}},
            {Type="Dropdown",Title="Farm Mode",Description="Select mode farmming",Values={"Level","Cake","Bone"}},
            {Type="Toggle",Title="Start Farm",Description=""},
            {Type="Toggle",Title="Find Old Server",Description="EN : Find Old Server To Use Super Fast Attack\n VN : Tim Server Cu De Dung Super Fast Attack",OnChanged=function(v)
                module.FindOldSV(v)
            end},
            {Type="Toggle",Title="Double Quest",Description=""},
            {Type="Toggle",Title="Dragon Storm Shoot",Description="use dragon storm to farm"},
            {Type="Toggle",Title="Kill Aura",Description="Auto kill nearest mob"},
            {Type="Toggle",Title="Auto Travel Dressrosa",Description="Automatically do quest npc in prison to go sea 2"},
            {Type="Toggle",Title="Auto Travel Zou",Description="Automatically do quest npc in clossium to go sea 3"},
            {Type="Seperator",Title="Mastery Options"},
            {Type="Dropdown",Title="Select Mastery Type",Description="",Values={"Fruit Mastery", "Gun Mastery"}, Default = Settings["Select Mastery Type"], OnChanged = function(v)
                Settings["Select Mastery Type"] = v
                if v == "Gun Mastery" then
                    Notify("Zinner Hub","ENG : You want click when mobs low\nVN : Ban can tu click khi mob yeu mau",7)
                end
                module.Save()
            end},
            {Type="Dropdown",Title="Select Skills",Description="",Values={"Z", "X", "C", "V", "F"}, Multi = true},
            {Type="Slider",Title="Low Health(%)",Description="Set % health low for mob",Max = 100, Min = 5},
            {Type="Toggle", Title="Farm Mastery",Description="Start farmming mastery"},
            {Type="Seperator",Title="Chest"},
            {Type='Label',Title="Total Chest Claimed",Content="..."},
            {Type="Toggle",Title="Auto Chest",Description=""},
            {Type="Dropdown",Title="Chest Counts",Description="",Values={"15", "20", "25", "30", "35"}},
            {Type="Toggle",Title="Auto Chest Hop",Description=""},
            {Type="Seperator",Title="Materials"},
            {Type="Dropdown",Title="Select Materials",Description="",Values=AllMaterials, Default = Settings["Select Materials"]},
            {Type="Toggle",Title="Auto Material",Description="Auto farm material selected"},
            {Type="Seperator",Title="Boss Options"},
            {Type="Dropdown",Title="Select Boss",Values=bosses},
            {Type="Button",Title="Refresh Boss",Callback=function()
                module.UpdateBoss()
                AllFeature["Farmming Tab"]["Select Boss"]:Refresh(bosses)
            end},
            {Type="Toggle",Title="Take Quests",Description="Auto take quest after kill boss"},
            {Type="Toggle",Title="Auto Boss",Description="Auto Kill Boss Your Selected"},
            {Type="Toggle",Title="Auto All Boss",Description="Auto Kill All Boss Alive In Server"},
            {Type="Seperator",Title="Sword Options"},
            {Type="Toggle",Title="Auto Farmming 600 Mastery All Swords",Description="Auto farmming all sword in your inventory more 600 and will changing new sword when last sword have mastery more 600"},
        },
    },
    ["Stack Farmming"] = {
        ["Feature"] = {
            {Type="Seperator",Title="Berries"},
            {Type="Toggle",Title="Auto Collect Berries",Description="Auto collect berries spawned in workspace"},
            {Type="Toggle",Title="Auto Collect Berries [HOP]",Description=""},
            {Type="Seperator",Title="Tiki Outpost"},
            {Type="Toggle",Title="Auto Tyrant of the skies",Description="Function Only Sea 3"},
            {Type="Seperator",Title="Stacks Function"},
            {Type="Toggle",Title="Auto Elite Hunter",Description="Auto claim quest and kill elite mobs"},
            {Type="Toggle",Title="Auto Elite Hunter [HOP]",Description=""},
            {Type="Toggle",Title="Auto Castle Raid",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Factory",Description="Function Only Sea 2"},
            {Type="Toggle",Title="Auto Darkbeard",Description="Function Only Sea 2"},
            {Type="Toggle",Title="Auto Admin",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Dough King",Description="Function Only Sea 3"},
        },
    },
    ["Items Farmming"] = {
        ["Feature"] = {
            {Type="Seperator",Title="Swords"},
            {Type="Toggle", Title="Auto Saber",Description="Function Only Sea 1"},
            {Type="Toggle", Title="Auto Pole (1st form)",Description="Function Only Sea 1"},
            {Type="Toggle", Title="Auto Rengoku",Description="Function Only Sea 2"},
            {Type="Toggle",Title="Auto Yama",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Tushita",Description="Function Only Sea 3"},
            {Type="Toggle", Title="Auto Hallow Scythe",Description="Function Only Sea 3"},
            {Type="Toggle", Title="Auto Dual Cursed Katana",Description="Function Only Sea 3"},
            {Type="Seperator",Title="Melee"},
            {Type="Toggle",Title="Auto Superhuman",Description="Function Support All Sea"},
            {Type="Toggle",Title="Auto Death Step",Description="Function Only Sea 2"},
            {Type="Toggle",Title="Auto Sharkman Karate",Description="Function Only Sea 2"},
            {Type="Toggle",Title="Auto Electric Claw",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Dragon Talon",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Godhuman",Description="To get Godhuman your want to own all fighting style v2(superhuman, Death Step, Sharkman Karate, Electric Claw, Dragon Talon) more 400 mastery"},
            {Type="Seperator",Title="Gun"},
            {Type="Toggle", Title="Auto Soul Guitar",Description="Function Only Sea 3"},
        },
    },
    ["Fruits and Raid"] = {
        ["Feature"] = {
            {Type="Seperator",Title="Fruits"},
            {Type="Button",Title="Random Fruits",Callback=function()
                module.FireRemotes("Cousin", "Buy")
            end},
            {Type="Toggle", Title="Auto Roll Fruits",Description=""},
            {Type="Toggle", Title="Tween to Fruit Spawn",Description=""},
            {Type="Toggle", Title="Store Fruits",Description=""},
            {Type="Seperator",Title="Raid"},
            {
                Type="Dropdown",
                Title="Select Raid",
                Values = {
                    "Flame",
                    "Ice",
                    "Quake",
                    "Light",
                    "Dark",
                    "Spider",
                    "Rumble",
                    "Magma",
                    "Buddha",
                    "Sand",
                    "Phoenix",
                    "Dough"
                },
                Callback = function(v)
                    Settings["Select Raid"] = v
                    module.Save()
                end
            },
            {Type="Button",Title="Buy Chip",Callback=function()
                module.FireRemotes("RaidsNpc", "Select", (Settings["Select Raid"] or "Flame"))
            end},
            {Type="Toggle",Title="Start Raid"},
            {Type="Toggle",Title="Kill Raid",Description="Auto kill nearest mob on raid"},
            {Type="Toggle",Title="Next Islands",Description="Auto next islands raid"},
            {Type="Toggle",Title="Auto Awaken",Description=""},
        },
    },
    ["Local Player"] = {
        ["Feature"] = {
            {Type="Button",Title="Teleport To Main(Sea 1)",Callback=function()
                module.TeleportWorld(1)
            end},
            {Type="Button",Title="Teleport To Dressrosa(Sea 2)",Callback=function()
                module.TeleportWorld(2)
            end},
            {Type="Button",Title="Teleport To Zou(Sea 3)",Callback=function()
                module.TeleportWorld(3)
            end},
            {Type="Dropdown",Title="Select Stats",Values={"Melee","Defense","Gun","Demon Fruit"}},
            {Type="Toggle",Title="Auto Stats",OnChanged = function(v)
                module.AutoStats(v)
            end},
            {Type="Dropdown",Title="Select Players",Description="",Values=PlayerList,Save=false,Default="",OnChanged=function(v)
                getgenv().SelectPlayers = v
            end},
            {Type="Button",Title="Refresh Players",Callback=function()
                table.clear(PlayerList)
                for _,v in next, game.Players:GetPlayers() do
                    if v.Name ~= plr.Name then
                        table.insert(PlayerList, v.Name)
                    end
                end
                AllFeature["Local Player"]["Select Players"]:Refresh(PlayerList)
            end},
            {Type="Toggle",Title="Teleport To Players",Description=""},
            {Type="Toggle",Title="Specate Players",Description="",OnChanged=function(v)
                if v then
                    if workspace.Characters:FindFirstChild(getgenv().SelectPlayers) then
                        workspace.Camera.CameraSubject = workspace.Characters[getgenv().SelectPlayers]
                    end
                else
                    workspace.Camera.CameraSubject = plr.Character
                end
            end},
            {Type="Toggle",Title="WalkSpeed",Description="Enable bypass walkspeed"},
            {Type="Slider",Title="Walk Speed",Max=350,Min=50,Callback=function(v)
                getgenv().WalkSpeed = v
            end},
            {Type="Toggle",Title="Infinity Range Observation Haki",Description="",OnChanged=function(v)
                if not v and RangeOld then
                    game:GetService("Players").LocalPlayer.VisionRadius.Value = RangeOld
                end
            end},
        },
    },
    ["PVP-Combat"] = {
        ["Feature"] = {
            {Type="Dropdown",Title="Select Target",Description="",Values=PlayerList,Save=false,Default="",OnChanged=function(v)
                getgenv().TargetSelect = v
            end},
            {Type="Button",Title="Refresh Target",Callback=function()
                table.clear(PlayerList)
                for _,v in next, game.Players:GetPlayers() do
                    if v.Name ~= plr.Name then
                        table.insert(PlayerList, v.Name)
                    end
                end
                AllFeature["PVP-Combat"]["Select Target"]:Refresh(PlayerList)
            end},
            {Type="Toggle",Title="Aimbot Skills"},
        },
    },
    ["Sea Events"] = {
        ["Feature"] = {
            {Type="Button",Title="No Frog", Callback=function()
                if game:GetService("Lighting"):FindFirstChild("LightingLayers") then
                    game:GetService("Lighting"):FindFirstChild("LightingLayers"):Destroy()
                end
            end},
            {Type="Dropdown",Title="Select Boats",Values ={"Guardian","Dinghy","PirateSloop","PirateBrigade","PirateGrandBrigade","MarineSloop","MarineBrigade","MarineGrandBrigade","Beast Hunter"}},
            {Type="Button",Title="Teleport To Your Local Boat",Callback=function()
                if module.GetLocalBoat() then
                    module.Tweento(module.GetLocalBoat().VehicleSeat.CFrame*CFrame.new(0,2,0))
                end
            end},
            {Type="Toggle",Title="Enable Speed Boats",Description=""},
            {Type="Slider",Title="Boat Speed",Max = 400, Min = 180, Description="Set speed for your local boat"},
            {Type="Dropdown",Title="Select Zone",Values ={"Zone 1","Zone 2","Zone 3","Zone 4","Zone 5","Zone 6","Infinity"}},
            {Type="Toggle",Title="Start Auto Sea Events",Description=""},
            {Type="Toggle",Title="Auto Shark and Fish Crew Member",Description=""},
            {Type="Toggle",Title="Auto Terror Shark",Description=""},
            {Type="Toggle",Title="Auto Pirates Ship",Description="",OnChanged=function(bool)
                if bool then
                    Fluent:Notify({
                        Title="Script Warning",
                        Content="Select Skills In Farm Config Tab",
                        Duration = 8
                    })
                end
            end},
            {Type="Toggle",Title="Auto Ghost Ship",Description="",OnChanged=function(bool)
                if bool then
                    Fluent:Notify({
                        Title="Script Warning",
                        Content="Select Skills In Farm Config Tab",
                        Duration = 8
                    })
                end
            end},
            {Type="Toggle",Title="Auto Sea Beast",Description="",OnChanged=function(bool)
                if bool then
                    Fluent:Notify({
                        Title="Script Warning",
                        Content="Select Skills In Farm Config Tab",
                        Duration = 8
                    })
                end
            end},
            {Type="Toggle",Title="Auto Piranha",Description=""},
            {Type="Seperator",Title="Leviathan"},
            {Type="Button",Title="Buy Spy Leviathan",Callback = function()
                module.FireRemotes("InfoLeviathan","2")            
            end},
            {Type="Button",Title="Craft Beast Hunter",Callback = function()
                module.FireRemotes("CraftItem","Check","LeviathanBoat")            
                module.FireRemotes("CraftItem","Craft","LeviathanBoat")            
            end},
            {Type="Toggle",Title="Auto Find Leviathan",Description="Auto finding leviathan boss"},
            {Type="Toggle",Title="Auto Leviathan",Description="Auto killing leviathan boss",OnChanged=function(bool)
                if bool then
                    Fluent:Notify({
                        Title="Script Warning",
                        Content="Select Skills In Farm Config Tab",
                        Duration = 8
                    })
                end
            end},
            {Type="Toggle",Title="Auto Sail Boat To Tiki",Description=""},
            {Type="Seperator",Title="Kitsune Events"},
            {Type="Toggle",Title="Auto Find Kitsune Island",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Collect Azure Member",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Trade Azure Member",Description="Function Only Sea 3"},
        },
    },
    ["Volcano Events"] = {
        ["Feature"] = {
            {Type="Label",Title="Prehistoric Island",Content="Not Spawned"},
            {Type="Toggle",Title="Auto Find Prehistoric Island",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Prehistoric Island",Description="auto start event vocalon and Destroy Rocks in island"},
            {Type="Toggle",Title="Auto Lava Golem",Description="Auto kill lava shit"},
            {Type="Toggle",Title="Auto Collect Dino Bone",Description="Prehistoric"},
            {Type="Toggle",Title="Auto Collect Dragon Egg",Description="Prehistoric"}
        },
    },
    ["Dojo"] = {
        ["Feature"] = {
            {Type="Toggle",Title="Auto Dojo Trainer"},
            {Type="Toggle",Title="Auto Blaze Embers"},
            {Type="Button",Title="Craft Dragon Storm", Callback=function()
                module.FireRemotes("CraftItem","Check","Dragonstorm")
                module.FireRemotes("CraftItem","Craft","Dragonstorm")
            end},
            {Type="Button",Title="Craft Dragon Heart", Callback=function()
                module.FireRemotes("CraftItem","Check","Dragonheart")
                module.FireRemotes("CraftItem","Craft","Dragonheart")
            end}
        },
    },
    ["Upgraded Race"] = {
        ["Feature"] = {
            {Type="Seperator",Title="Mirage Puzzle"},
            {Type="Label",Title="Mirage Puzzle Status",Content="Not completed"},
            {Type="Toggle",Title="Auto Find Mirage Island",Description="Function Only Sea 3"},
            {Type="Button",Title="Teleport To Mirage Island",Description="Function Only Sea 3",Callback=function()
                repeat task.wait()
                    local HighPos = CFrame.new(0,0,0)
                    if module.GetHighPart() then
                        HighPos = module.GetHighPart().CFrame * CFrame.new(0, 12, 0)
                    else
                        HighPos = WS.Map.MysticIsland.WorldPivot * CFrame.new(0, 500, 0)
                    end
                    module.Tweento(HighPos)
                until module.GetDistance(HighPos.Position) <= 50 or plr.Character.Humanoid.Health <= 0
            end},
            {Type="Toggle",Title="Auto Pull Lever",Description="Function Only Sea 3"},
            {Type="Toggle",Title="Auto Look At Moon",Description="Function Only Sea 3"},
            {Type="Button",Title="Teleport to gear",Description="Function Only Sea 3",Callback=function()
                local Gear = module.GetGear()
                if Gear.Transparency == 0 and not Gear.CanCollide then
                    repeat task.wait()
                        module.Tweento(Gear.CFrame)
                    until not Gear
                end
            end},
            {Type="Seperator",Title="Race Upgraded"},
            {Type="Label",Title="Watting for Update",Content=""},
        },
    },
    ["Settings"] = {
        ["Feature"] = {

        },
    },
}
game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().WalkSpeed then
        plr.Character.Humanoid.WalkSpeed = Settings["WalkSpeed"]
    end
end)
spawn(function()
    while task.wait(0.03) do
        if Settings["Fast Attack"] and not MasteryOptions then
            repeat task.wait() until LoadedHub or not MasteryOptions
            for i = 1, 20 do
                FastAttack:SuperFastAttack()
            end
        end
    end
end)
--- All Functions --
ChestCounts = 0
DojoQuestClaimed = false
DojoQuestText = ""
DragonHunterClaimed = false
DragonHunterText = ""
module.AllFuncs = {
    ["Kill Aura"] = {function()
        for r,v in pairs(workspace.Enemies:GetChildren()) do
            if module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position) <= 2500 then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not v or not module.IsAlive(v) or Settings["Kill Aura"] == false
            end
        end
    end,true},
    ["Start Farm"] = {function()
        if module.Stack("Start Farm") then return
        else
            if Settings["Farm Mode"] == "Level" then
                if plr.Data.Level.Value >= 50 and plr.Data.Level.Value < 150 then
                    local Mobs = "Shanda"
                    local v = module.VerifyEnemies(Mobs)
                    if v and module.IsAlive(v) then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.BringEnemies(v)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until plr.Data.Level.Value >= 150 or module.Stack("Start Farm") or not module.IsAlive(v) or not plr.PlayerGui.Main.Quest.Visible or not Settings["Start Farm"]
                    elseif not v then
                        module.Tweento(CFrame.new(-7681.5751953125, 5567.17041015625, -498.3719482421875))
                    end
                elseif plr.Data.Level.Value >= 10 and plr.Data.Level.Value < 50 then
                    local Mobs = "Sky Bandit"
                    local v = module.VerifyEnemies(Mobs)
                    if v and module.IsAlive(v) then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.BringEnemies(v)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until plr.Data.Level.Value >= 150 or module.Stack("Start Farm") or not module.IsAlive(v) or not plr.PlayerGui.Main.Quest.Visible or not Settings["Start Farm"]
                    elseif not v then
                        module.Tweento(CFrame.new(-4955.66455078125, 296.11083984375, -2900.101806640625))
                    end
                elseif plr.Data.Level.Value < 10 or plr.Data.Level.Value >= 150 then
                    local Boss = module.GetQuestBoss()["Name"]
                    if module.VerifyEnemies(Boss,true) then
                        if not plr.PlayerGui.Main.Quest.Visible then
                            module.FireRemotes("StartQuest", module.GetQuestBoss()["NameQuest"], module.GetQuestBoss()["ID"])
                        else
                            local v = module.VerifyEnemies(Boss, true)
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until module.Stack("Start Farm") or not module.IsAlive(v) or not plr.PlayerGui.Main.Quest.Visible or not Settings["Start Farm"]
                        end
                    else
                        local QuestPoint = module.GetQuestPoint()
                        local Mob1, Mob2, Mob3 = module.GetDataQuest(), module.GetDoubleQuest()["NameQuest"], module.GetDoubleQuest()["ID"]
                        if not plr.PlayerGui.Main.Quest.Visible then
                            if module.GetDistance(QuestPoint.Position) > 10 then
                                module.Tweento(QuestPoint)
                            else
                                module.FireRemotes("StartQuest", Mob2, Mob3)
                            end
                        else
                            local v = module.VerifyEnemies(Mob1)
                            if not v then
                                for _,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                                    if v.Name == Mob1 and not module.VerifyEnemies(Mob1) and Settings["Start Farm"] and Settings["Farm Mode"] == "Level" then
                                        repeat task.wait(1)
                                            module.Tweento(v.CFrame)
                                        until module.Stack("Start Farm") or module.VerifyEnemies(Mob1) or not Settings["Start Farm"] or Settings["Farm Mode"] ~= "Level" or module.GetDistance(v.Position) <= 10
                                    end
                                end
                            else
                                repeat task.wait()
                                    module.EnableBuso()
                                    module.EquipWeapon()
                                    module.BringEnemies(v)
                                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                until module.Stack("Start Farm") or not module.IsAlive(v) or not plr.PlayerGui.Main.Quest.Visible or not Settings["Start Farm"]
                            end
                        end
                    end
                end
            elseif Settings["Farm Mode"] == "Cake" and module.CheckSea(3) then
                if module.VerifyEnemies("Cake Prince", true) then
                    local v = module.VerifyEnemies("Cake Prince", true)
                    if module.GetDistance(v.HumanoidRootPart.Position) <= 1500 then
                        if module.IsAlive(v) then
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until module.Stack("Start Farm") or Settings["Farm Mode"] ~= "Cake" or not module.IsAlive(v) or Settings["Start Farm"] == false
                        end
                    else
                        if workspace.Map.CakeLoaf.BigMirror:FindFirstChild("Main") then
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Map.CakeLoaf.BigMirror.Main, 0)
                            task.wait(0.1)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Map.CakeLoaf.BigMirror.Main, 1)
                        else
                            module.Tweento(CFrame.new(-2124, 69, -12401))
                        end
                    end
                else
                    if module.VerifyEnemies(module.Mobs.CakeMobs, true) then
                        local v = module.VerifyEnemies(module.Mobs.CakeMobs, true)
                        if module.IsAlive(v) then
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.BringEnemies(v)
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until module.VerifyEnemies("Cake Prince", true) or module.Stack("Start Farm") or Settings["Farm Mode"] ~= "Cake" or not module.IsAlive(v) or Settings["Start Farm"] == false
                        end
                    else
                        module.Tweento(CFrame.new(-2137.133544921875, 69.97932434082031, -12324.974609375))
                    end
                end
            elseif Settings["Farm Mode"] == "Bone" and module.CheckSea(3) then
                if module.VerifyEnemies(module.Mobs.BoneMobs, true) then
                    local v = module.VerifyEnemies(module.Mobs.BoneMobs, true)
                    if module.IsAlive(v) then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.BringEnemies(v)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until module.Stack("Start Farm") or Settings["Farm Mode"] ~= "Bone" or not module.IsAlive(v) or Settings["Start Farm"] == false
                    end
                else
                    module.Tweento(CFrame.new(-9496.6650390625, 172.14002990722656, 6102.12939453125))
                end
            end
        end
    end,true},
    ["Auto Travel Dressrosa"] = {function()
        if CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
            if plr.Data.Level.Value >= 700 and module.CheckSea(1) then
                if workspace.Map.Ice.Door.CanCollide then
                    if not module.VerifyTool("Key") then
                        NPCKey = CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359)
                        if module.GetDistance(NPCKey.Position) > 10 then
                            module.Tweento(NPCKey)
                        else
                            module.FireRemotes("DressrosaQuestProgress", "Detective")
                        end
                    else
                        module.EquipToolName("Key")
                        module.Tweento(
                            CFrame.new(
                                1347.44092,
                                37.3843765,
                                -1322.61816,
                                0.810376644,
                                -1.14628271e-08,
                                0.585909247,
                                -4.94534582e-08,
                                1,
                                8.79637199e-08,
                                -0.585909247,
                                -1.00258987e-07,
                                0.810376644
                            )
                        )
                    end
                else
                    if module.VerifyEnemies("Ice Admiral", true) then
                        local v = module.VerifyEnemies("Ice Admiral", true)
                        repeat
                            task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until not Settings["Auto Travel Dressrosa"] or not module.IsAlive(v)
                        module.FireRemotes("TravelDressrosa")
                    else
                        module.Tweento(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                    end
                end
            end
        else
            module.FireRemotes("TravelDressrosa")
        end
    end, Sea1},
    ["Auto Travel Zou"] = {function()
        task.spawn(function()
            CommF_:InvokeServer("TravelZou")
        end)
        if plr.Data.Level.Value >= 1500 and module.CheckSea(2) then
            if CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                if CommF_:InvokeServer("TalkTrevor", "1") ~= 0 then
                    if #module.GetFruitInBackpack() >= 1 then
                        if module.GetDistance(CFrame.new(-339.79840087891, 331.86065673828, 643.83178710938).Position) > 10 then
                            module.Tweento(CFrame.new(-339.79840087891, 331.86065673828, 643.83178710938))
                        else
                            for r, v in pairs(module.GetFruitInBackpack()) do
                                module.EquipToolName(tostring(v))
                            end
                            wait(0.1)
                            CommF_:InvokeServer("TalkTrevor", "1")
                            CommF_:InvokeServer("TalkTrevor", "2")
                            CommF_:InvokeServer("TalkTrevor", "3")
                        end
                    elseif not module.DetectFruitBackpack() and module.GetFruitInventory(true) then
                        module.FireRemotes("LoadFruit", module.GetFruitInventory(true))
                    end
                elseif not module.FireRemotes("ZQuestProgress", "Check") then
                    local v = module.VerifyEnemies("Don Swan", true)
                    if v and module.IsAlive(v) then
                        repeat
                            task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until not v or not module.IsAlive(v) or Settings["Auto Travel Zou"] == false
                    elseif not module.VerifyEnemies("Don Swan", true) then
                        module.HopServers()
                    end
                elseif
                CommF_:InvokeServer("TalkTrevor", "1") == 0 and CommF_:InvokeServer("ZQuestProgress", "Check") == 1 and
                    CommF_:InvokeServer("ZQuestProgress", "Zou") == 0 or CommF_:InvokeServer("ZQuestProgress").KilledIndraBoss == true
                 then
                    CommF_:InvokeServer("TravelZou")
                elseif CommF_:InvokeServer("ZQuestProgress", "Check") == 0 then
                    if module.GetDistance(workspace.Map.IndraIsland.Part.Position) > 1000 then
                        if module.GetDistance(CFrame.new(-1926.78772, 12.1678171, 1739.80884).Position) > 10 then
                            module.Tweento(CFrame.new(-1926.78772, 12.1678171, 1739.80884))
                        else
                            module.FireRemotes("ZQuestProgress", "Begin")
                        end
                    else
                        local v = module.VerifyEnemies("rip_indra")
                        if v and module.IsAlive(v) then
                            repeat
                                task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not v or not module.IsAlive(v) or Settings["Auto Travel Zou"] == false
                            CommF_:InvokeServer("TravelZou")
                        end
                    end
                end
            end
        end
    end, Sea2},
    ["Farm Mastery"] = {function()
        if module.VerifyEnemies(module.Mobs.BoneMobs, true) then
            local v = module.VerifyEnemies(module.Mobs.BoneMobs, true)
            if module.IsAlive(v) then
                local low = v.Humanoid.MaxHealth * Settings["Low Health(%)"] / 100
                repeat task.wait()
                    if v.Humanoid.Health <= low then
                        MasteryOptions = true
                        module.EnableBuso()
                        module.BringEnemies(v, true)
                        if Settings["Select Mastery Type"] == "Gun Mastery" then
                            module.EquipToolName(module.GetWeaponType("Gun"))
                            if module.GetDFSkills() then
                                module.SetAimTarget(true, v.HumanoidRootPart.CFrame)
                                module.SendKey(module.GetDFSkills())
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 5))
                            else
                                module.SetAimTarget(true, v.HumanoidRootPart.CFrame)
                                module.ScriptClick()
                                module.SetCameratoFirst()
                                workspace.CurrentCamera.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, v.Head.Position)
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 5))
                            end
                        else
                            module.EquipToolName(module.GetWeaponType("Blox Fruit"))
                            module.BringEnemies(v, true)
                            module.SetAimTarget(true, v.HumanoidRootPart.CFrame)
                            if module.GetDFSkills() then
                                module.SendKey(module.GetDFSkills())
                            end
                            workspace.CurrentCamera.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, v.Head.Position)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                        end
                    else
                        MasteryOptions = false
                        module.SetAimTarget(true, v.HumanoidRootPart.CFrame)
                        module.BringEnemies(v, true)
                        module.EquipWeapon()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    end
                until not module.IsAlive(v) or Settings["Farm Mastery"] == false
                MasteryOptions = false
                module.SetAimTarget(false, nil)
            end
        else
            module.Tweento(CFrame.new(-9496.6650390625, 172.14002990722656, 6102.12939453125))
        end
    end, true},
    ["Auto Chest"] = {function()
        local v = module.GetChest()
        if v then
            module.Tweento(v:GetPivot())
            if module.GetDistance(v.Position) <= 10 then
                firetouchinterest(v, plr.Character.HumanoidRootPart, 0)
                firetouchinterest(v, plr.Character.HumanoidRootPart, 1)
            end
            if Settings["Auto Chest Hop"] then
                if ChestCounts >= tonumber(Settings["Chest Counts"]) then
                    module.HopServers()
                end
            end
            if not v or v:GetAttribute("IsDisabled") then
                ChestCounts = ChestCounts + 1
            end
        end
    end, true},
    ["Auto Material"] = {function()
        if Settings["Select Materials"] ~= nil and Settings["Select Materials"] ~= "" then
            local Mob = module.SelectMaterial()["Mob"]
            if module.VerifyEnemies(Mob) then
                local v = module.VerifyEnemies(Mob)
                if module.IsAlive(v) then
                    repeat task.wait()
                        module.EnableBuso()
                        module.EquipWeapon()
                        module.BringEnemies(v, true)
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until not module.IsAlive(v) or not Settings["Auto Material"]
                end
            else
                for r,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                    if ((typeof(Mob) == "table" and table.find(Mob, v.Name)) or (typeof(Mob) == "string" and v.Name == Mob)) then
                        repeat task.wait()
                            module.Tweento(v.CFrame * CFrame.new(0, 20, 0))
                        until module.VerifyEnemies(module.SelectMaterial()["Mob"]) or Settings["Auto Material"] ~= true or module.GetDistance(v.Position) <= 30
                    end
                end
            end
        end
    end, true},
    ["Auto Elite Hunter"] = {function()
        if module.VerifyElites() then
            local v = module.VerifyElites()
            if plr.PlayerGui.Main.Quest.Visible == false or not string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
                if module.VerifyEntrance() then
                    local Pos = module.GetNPCs("Elite Hunter")
                    if module.GetDistance(Pos.Position) > 10 then
                        module.Tweento(Pos)
                    else
                        module.FireRemotes("EliteHunter")
                    end
                else
                    module.FireRemotes("EliteHunter")
                end
            elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
                if module.IsAlive(v) then
                    repeat task.wait()
                        module.EnableBuso()
                        module.EquipWeapon()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until not module.IsAlive(v) or not Settings["Auto Elites"]
                end
            end
        end 
    end, Sea3},
    ["Auto Dough King"] = {function()
        if module.VerifyEnemies("Dough King", true) then
            local v = module.VerifyEnemies("Dough King", true)
            repeat task.wait()
                module.EnableBuso()
                module.EquipWeapon()
                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
            until not module.VerifyEnemies("Dough King", true) or Settings["Auto Dough King"] == false
        else
            if module.VerifyTool("Sweet Chalice") then
                if module.VerifyEnemies(module.Mobs.CakeMobs, true) then
                    local v = module.VerifyEnemies(module.Mobs.CakeMobs, true)
                    if module.IsAlive(v) then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.BringEnemies(v)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until not v or not module.IsAlive(v) or Settings["Auto Dough King"] == false or module.VerifyEnemies("Dough King", true)
                    end
                else
                    module.Tweento(CFrame.new(-2137.133544921875, 69.97932434082031, -12324.974609375))
                end
            else
                if module.VerifyTool("God's Chalice") then
                    if module.CheckMaterial("Conjured Cocoa") >= 10 then
                        module.FireRemotes("SweetChaliceNpc")
                    elseif module.CheckMaterial("Conjured Cocoa") < 10 then
                        if module.VerifyEnemies(module.Mobs.CocoaMobs, true) then
                            local v = module.VerifyEnemies(module.Mobs.CocoaMobs, true)
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.BringEnemies(v, true)
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not module.IsAlive(v) or not module.VerifyEnemies(module.Mobs.CocoaMobs, true) or Settings["Auto Dough King"] == false or module.CheckMaterial("Conjured Cocoa") >= 10
                        else
                            for _,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                                if table.find(module.Mobs.CocoaMobs, v.Name) and not module.VerifyEnemies(module.Mobs.CocoaMobs) then
                                    repeat task.wait()
                                        module.Tweento(v.CFrame * CFrame.new(0, 0, 0))
                                    until module.VerifyEnemies(module.Mobs.CocoaMobs) or not Settings["Auto Dough King"] or module.GetDistance(v.Position) <= 10 or module.CheckMaterial("Conjured Cocoa") >= 10
                                end
                            end
                        end
                    end
                end
            end
        end
    end, Sea3},
    ["Auto Admin"] = {function()
        if module.VerifyEnemies(module.Mobs.ripindra, true) then
            local v = module.VerifyEnemies(module.Mobs.ripindra, true)
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(v) or not Settings["Auto Admin"]
            end
        end
    end, Sea3},
    ["Auto Darkbeard"] = {function()
        if module.CheckSea(2) then
            if module.VerifyEnemies("Darkbeard", true) then
                local v = module.VerifyEnemies("Darkbeard", true)
                if module.IsAlive(v) then
                    repeat task.wait()
                        module.EnableBuso()
                        module.EquipWeapon()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until not module.IsAlive(v) or not Settings["Auto Darkbeard"]
                end
            else
                if module.VerifyTool("Fist of Darkness") then
                    module.EquipToolName("Fist of Darkness")
                    module.Tweento(WS.Map.DarkbeardArena.Summoner.Detection.CFrame)
                end
            end
        end
    end,Sea2},
    ["Auto Collect Berries"] = {function()
        if module.CheckBerries()[1] then
            nerd = module.CheckBerries()[1]
            if nerd:FindFirstChildOfClass("Model") then
                if module.GetDistance(nerd:FindFirstChildOfClass("Model"):GetPivot().Position) <= 15 then
                    fireproximityprompt(nerd:FindFirstChildOfClass("Model").ProximityPrompt)
                end
                module.Tweento(nerd:FindFirstChildOfClass("Model"):GetPivot())
            else
                module.Tweento(nerd.Parent:GetPivot())
            end
        else
            if Settings["Auto Collect Berries [Hop]"] then
                module.HopServers()
            end
        end
    end, true},
    ["Start Auto Sea Events"] = {function()
        if Settings["Auto Sea Beast"] and module.CheckSeaBeast() or (Settings["Auto Ghost Ship"] or Settings["Auto Pirates Ship"]) and module.GetShipEnemies() or Settings["Auto Shark and Fish Crew Member"] and module.VerifyEnemies({"Shark","Fish Crew Member"},nil,2000) or Settings["Auto Terror Shark"] and module.VerifyEnemies("Terrorshark",nil,2000) or Settings["Auto Piranha"] and module.VerifyEnemies("Piranha",nil,2000) then
            plr.Character.Humanoid.Sit = false
        else
            if not module.GetLocalBoat() then
                if module.GetDistance(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625).Position) > 50 then
                    module.Tweento(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625))
                else
                    wait(.3)
                    module.FireRemotes("BuyBoat", (Settings["Select Boats"] or "Guardian"))
                end
            else
                Boats = module.GetLocalBoat()
                if plr.Character.Humanoid.Sit == false then
                    module.Tweento(Boats.VehicleSeat.CFrame*CFrame.new(0,2,0))
                    module.NoClipBoat(false)
                else
                    repeat wait()
                        module.NoClipBoat(true)
                        if not plr.Character.PrimaryPart:FindFirstChild("GAY") then
                            local GAY = Instance.new("BodyVelocity", plr.Character.PrimaryPart)
                            GAY.Name = "GAY"
                            GAY.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            GAY.Velocity = module.ZoneSelected().Unit * 260
                        end
                        Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 24, Boats.VehicleSeat.CFrame.Z)
                    until not Settings["Start Auto Sea Events"] or plr.Character.Humanoid.Sit ~= true or Settings["Auto Sea Beast"] and module.CheckSeaBeast() or (Settings["Auto Ghost Ship"] or Settings["Auto Pirates Ship"]) and module.GetShipEnemies() or Settings["Auto Shark and Fish Crew Member"] and module.VerifyEnemies({"Shark","Fish Crew Member"},nil,2000) or Settings["Auto Terror Shark"] and module.VerifyEnemies("Terrorshark",nil,2000) or Settings["Auto Piranha"] and module.VerifyEnemies("Piranha",nil,2000)
                    plr.Character.HumanoidRootPart:FindFirstChild("GAY"):Destroy()
                end
            end
        end
    end, Sea3},
    ["Auto Shark and Fish Crew Member"] = {function()
        if module.VerifyEnemies({"Shark","Fish Crew Member"},nil,2000) then
            local v = module.VerifyEnemies({"Shark","Fish Crew Member"},nil,2000)
            if v and module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    plr.Character.Humanoid.Sit = false
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                until Settings["Auto Shark and Fish Crew Member"] ~= true or not module.IsAlive(v)
            end
        end
    end, Sea3},
    ["Auto Terror Shark"] = {function()
        if module.VerifyEnemies("Terrorshark",nil,2000) then
            local v = module.VerifyEnemies("Terrorshark",nil,2000)
            if v and module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position) <= 2000 then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    plr.Character.Humanoid.Sit = false
                    if not module.CheckTerrorSharkSkills(v) then
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 50, 5))
                    else
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 280, 5))
                    end
                until Settings["Auto Terror Shark"] ~= true or not module.IsAlive(v)
            end
        end
    end, Sea3},
    ["Auto Pirates Ship"] = {function()
        if Settings["Auto Piranha"] and module.VerifyEnemies("Piranha",nil,2000) then return end -- kho chiu vai lon
        if not module.GetShipEnemies() then SpamSkill = false return end
        if module.GetShipEnemies() then
            local v = module.GetShipEnemies()
            repeat task.wait()  
                if module.GetDistance(v.Engine.Position) <= 100 then
                    SpamSkill = true
                    aim = true
                    targetaim = CFrame.new(v.Engine.Position.X, -30, v.Engine.Position.Z)
                else
                    SpamSkill = false
                    
                    aim = false
                end
                plr.Character.Humanoid.Sit = false
                module.Tweento(v.Engine.CFrame*CFrame.new(0,-20,0))
            until not v or not Settings["Auto Pirates Ship"] or v.Health.Value <= 0 or not v.Parent
            aim = false
            
            SpamSkill = false
        end
    end, Sea3},
    ["Auto Ghost Ship"] = {function()
        if Settings["Auto Piranha"] and module.VerifyEnemies("Piranha",nil,2000) then return end
        if not module.GetShipEnemies() then SpamSkill = false return end
        if module.GetShipEnemies() then
            local v = module.GetShipEnemies()
            repeat task.wait()  
                if module.GetDistance(v.Engine.Position) <= 100 then
                    SpamSkill = true
                    aim = true
                    targetaim = CFrame.new(v.Engine.Position.X, -30, v.Engine.Position.Z)
                else
                    aim = false
                    
                    SpamSkill = false
                end
                plr.Character.Humanoid.Sit = false
                module.Tweento(v.Engine.CFrame*CFrame.new(0,-20,0))
            until not v or not Settings["Auto Ghost Ship"] or v.Health.Value <= 0 or not v.Parent
            aim = false
            
            SpamSkill = false
        end
    end, Sea3},
    ["Auto Sea Beast"] = {function()
        if Settings["Auto Piranha"] and module.VerifyEnemies("Piranha",nil,2000) then return end
        if not module.CheckSeaBeast() then SpamSkill = false return end
        if module.CheckSeaBeast() then
            local v = module.CheckSeaBeast()
            if v and v.Health.Value > 0 then
                repeat task.wait()
                    if module.GetDistance(v.HumanoidRootPart.Position) <= 300 then
                        SpamSkill = true
                    else
                        SpamSkill = false
                        
                        aim = false
                    end
                    plr.Character.Humanoid.Sit = false
                    targetaim = v.HumanoidRootPart.CFrame
                    aim = true
                    module.TweenSeaBoss(v)
                until not v or v.Health.Value <= 0 or not Settings["Auto Sea Beast"] or not v.Parent
                SpamSkill = false
                
                aim = false
            end
        end
    end, Sea3},
    ["Auto Piranha"] = {function()
        if module.VerifyEnemies("Piranha",nil,2000) then
            local v = module.VerifyEnemies("Piranha",nil,2000)
            if v and module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position) <= 2000 then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    plr.Character.Humanoid.Sit = false
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                until Settings["Auto Piranha"] ~= true or not module.IsAlive(v)
            end
        end
    end, Sea3},
    ["Auto Find Leviathan"] = {function()
        if WS["Map"]:FindFirstChild("LeviathanGate") then
            Notify("Frozen Dimension Spawn",nil,nil)
            task.wait(6)
        else
            if plr.Character.Humanoid.Sit == true then
                for _,v in next, workspace.Boats:GetChildren() do
                    if v and module.GetDistance(v.VehicleSeat.Position) <= 50 then
                        local Boats = v
                        repeat task.wait()
                        module.NoClipBoat(true)
                        if not plr.Character.PrimaryPart:FindFirstChild("GAY") then
                            local GAY = Instance.new("BodyVelocity", plr.Character.PrimaryPart)
                            GAY.Name = "GAY"
                            GAY.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            GAY.Velocity = LeviathanHuntPos * 230
                        end
                        if plr:GetAttribute("ExactLocation") == "" or not plr:GetAttribute("ExactLocation") then
                            Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 70, Boats.VehicleSeat.CFrame.Z)
                        else
                            Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 750, Boats.VehicleSeat.CFrame.Z)
                        end
                        until not Settings["Auto Find Leviathan"] or plr.Character.Humanoid.Sit ~= true or WS["Map"]:FindFirstChild("LeviathanGate")
                        plr.Character.HumanoidRootPart:FindFirstChild("GAY"):Destroy()
                        Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 27, Boats.VehicleSeat.CFrame.Z)
                    end
                end
            end
        end
    end, Sea3},
    ["Auto Leviathan"] = {function()
        if not Settings["Auto Leviathan"] or not WS.SeaBeasts:FindFirstChild("Leviathan") then
            SpamSkill = false
            return
        end
        if WS.SeaBeasts:FindFirstChild("Leviathan") then
            if WS.SeaBeasts:FindFirstChild("Leviathan Segment") and WS.SeaBeasts:FindFirstChild("Leviathan Segment"):FindFirstChild("Health") and WS.SeaBeasts:FindFirstChild("Leviathan Segment").Health.Value > 0 then
                local v = WS.SeaBeasts:FindFirstChild("Leviathan Segment")
                if v and v:FindFirstChild("Health") and v.Health.Value > 0 then
                    repeat task.wait()
                        if module.GetDistance(v.HumanoidRootPart.Position) <= 100 then
                            SpamSkill = true
                            targetaim = v.HumanoidRootPart.CFrame
                            aim = true
                        else
                            
                            aim = false
                            SpamSkill = false
                        end
                        module.EnableBuso()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 80, 0))
                    until not v or not v.Parent or v.Health.Value <= 0 or Settings["Auto Leviathan"] == false
                    
                    aim = false
                    SpamSkill = false
                end
            else
                local v = WS.SeaBeasts:FindFirstChild("Leviathan")
                if v and v:FindFirstChild("Health") and v.Health.Value > 0 then
                    repeat task.wait()
                        if module.GetDistance(v.HumanoidRootPart.Position) <= 100 then
                            SpamSkill = true
                            targetaim = v.HumanoidRootPart.CFrame
                            aim = true
                        else
                            SpamSkill = false
                            
                            aim = false
                        end
                        module.EnableBuso()
                        module.TweenLeviathan(v)
                    until not v or v.Health.Value <= 0 or Settings["Auto Leviathan"] == false or not v.Parent or WS.SeaBeasts:FindFirstChild("Leviathan Segment") and WS.SeaBeasts:FindFirstChild("Leviathan Segment"):FindFirstChild("Health") and WS.SeaBeasts:FindFirstChild("Leviathan Segment").Health.Value > 0
                    SpamSkill = false
                    
                    aim = false
                end
            end
        end
    end, Sea3},
    ["Auto Sail Boat To Tiki"] = {function()
        if plr.Character.Humanoid.Sit == true then
            for _,v in next, workspace.Boats:GetChildren() do
                if v and module.GetDistance(v.VehicleSeat.Position) <= 50 then
                    local Boats = v
                    repeat task.wait()
                        module.NoClipBoat(true)
                        module.TweenObject(v.VehicleSeat, CFrame.new(-16145.2559, 27.28406239, 439.2854), 140)
                    until not Settings["Auto Sail Boat To Tiki"] or plr.Character.Humanoid.Sit ~= true
                    plr.Character.HumanoidRootPart:FindFirstChild("GAY"):Destroy()
                end
            end
        end
    end, Sea3},
    ["Auto Find Kitsune Island"] = {function()
        if workspace.Map:FindFirstChild("KitsuneIsland") then
            plr.Character.Humanoid.Sit = false
            module.Tweento(workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame)
        else
            if plr.Character.Humanoid.Sit == true then
                for _,v in next, workspace.Boats:GetChildren() do
                    if v and module.GetDistance(v.VehicleSeat.Position) <= 50 then
                        local Boats = v
                        repeat task.wait()
                        module.NoClipBoat(true)
                        if not plr.Character.PrimaryPart:FindFirstChild("GAY") then
                            local GAY = Instance.new("BodyVelocity", plr.Character.PrimaryPart)
                            GAY.Name = "GAY"
                            GAY.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            GAY.Velocity = LeviathanHuntPos * 260
                        end
                        if plr:GetAttribute("ExactLocation") == "" or not plr:GetAttribute("ExactLocation") then
                            Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 70, Boats.VehicleSeat.CFrame.Z)
                        else
                            Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 750, Boats.VehicleSeat.CFrame.Z)
                        end
                        until not Settings["Auto Find Kitsune Island"] or plr.Character.Humanoid.Sit ~= true or workspace.Map:FindFirstChild("KitsuneIsland")
                        Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 27, Boats.VehicleSeat.CFrame.Z)
                        NoClip = false
                    end
                end
            else
                if not module.GetLocalBoat() then
                    if module.GetDistance(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625).Position) > 50 then
                        module.Tweento(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625))
                    else
                        wait(.3)
                        module.FireRemotes("BuyBoat", (Settings["Select Boats"] or "Guardian"))
                    end
                else
                    module.Tweento(module.GetLocalBoat().VehicleSeat.CFrame*CFrame.new(0,2,0))
                end
            end
        end
    end, Sea3},
    ["Auto Collect Azure Member"] = {function()
        if WS:FindFirstChild("AttachedAzureEmber") then
            plr.Character.HumanoidRootPart.CFrame = WS:WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame
        end
    end, Sea3},
    ["Auto Trade Azure Member"] = {function()
        ReplicatedStorage.Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
    end, Sea3},
    ["Auto Awaken"] = {function()
        module.FireRemotes("Awakener","Check")
        module.FireRemotes("Awakener", "Awaken")
    end, true},
    ["Next Islands"] = {function()
        if Settings["Kill Raid"] and module.GetMobRaiding() then
        else
            if module.GetRaidIslands("5") then
                module.Tweento(module.GetRaidIslands("5").CFrame * CFrame.new(0, 50, 0))
            elseif module.GetRaidIslands("4") then
                module.Tweento(module.GetRaidIslands("4").CFrame * CFrame.new(0, 80, 0))
            elseif module.GetRaidIslands("3") then
                module.Tweento(module.GetRaidIslands("3").CFrame * CFrame.new(0, 50, 0))
            elseif module.GetRaidIslands("2") then
                module.Tweento(module.GetRaidIslands("2").CFrame * CFrame.new(0, 50, 0))
            elseif module.GetRaidIslands("1") then
                module.Tweento(module.GetRaidIslands("1").CFrame * CFrame.new(0, 50, 0))
            end
        end
    end, (Sea2 or Sea3)},
    ["Start Raid"] = {function()
        if module.VerifyTool("Special Microchip") then
            if module.CheckSea(2) then
                fireclickdetector(WS.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
            elseif module.CheckSea(3) then
                if not workspace.Map["Boat Castle"].RaidSummon2:FindFirstChild("Button") or not workspace.Map["Boat Castle"].RaidSummon2.Button:FindFirstChild("Main") then
                    module.Tweento(CFrame.new(-5048.35986, 314.874817, -2905.125, 0.709312141, -3.71912066e-08, 0.704894483, 3.08777999e-08, 1, 2.16900649e-08, -0.704894483, 6.38056319e-09, 0.709312141))
                else
                    fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end
    end, (Sea2 or Sea3)},
    ["Kill Raid"] = {function()
        if module.Stack("Start Farm") then return
        else
            if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
                for _,v in next, WS.Enemies:GetChildren() do
                    if module.IsAlive(v) and module.GetDistance(v.HumanoidRootPart.Position) <= 1500 then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.BringEnemies(v, true)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false or module.Stack("Start Farm") or not module.IsAlive(v) or not Settings["Kill Raid"]
                    end
                end
            end
        end
    end, (Sea2 or Sea3)},
    ["Auto Roll Fruits"] = {function()
        module.FireRemotes("Cousin", "Buy")
    end, true},
    ["Tween to Fruit Spawn"] = {function()
        if module.CheckFruitSpawn() then
            local Fruits = module.CheckFruitSpawn()
            module.Tweento(Fruits.Handle.CFrame)
        end
    end, true},
    ["Store Fruits"] = {function()
        if StopStoreFruit then return end
        module.StoreFruits()
    end, true},
    ["Auto Pole (1st form)"] = {function()
        if not module.GetInventoryItems("Pole (1st From)") and not module.CheckSea(1) then module.TeleportWorld(1) return end
        if not module.GetInventoryItems("Pole (1st From)") and module.CheckSea(1) and plr.Data.Level.Value >= 150 then
            local v = module.VerifyEnemies("Thunder God", true)
            if v and module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(v) or not Settings["Auto Pole (1st form)"]
            else
                if Settings["Hop Options"] then
                    task.wait(.1)
                    module.HopServers()
                end
            end
        end
    end, Sea1},
    ["Auto Saber"] = {function()
        if not module.GetInventoryItems("Saber") and not module.CheckSea(1) then module.TeleportWorld(1) return end
        if not module.GetInventoryItems("Saber") and plr.Data.Level.Value >= 200 then
            if module.SaberDoorOpened() then
                if module.CheckDoorPlates() then
                    pcall(function()
                        module.Tweento(module.GetPlates())
                    end)
                else
                    if module.CheckDesertdDoor() then
                        if not module.VerifyTool("Torch") then
                            local Torch = WS.Map.Jungle.Torch
                            module.Tweento(Torch.CFrame)
                        else
                            module.EquipToolName("Torch")
                            module.Tweento(CFrame.new(1115.25354, 4.95647621, 4349.24463, -0.624247193, 5.46374288e-08, 0.781226873, -1.33858959e-08, 1, -8.06341163e-08, -0.781226873, -6.07930417e-08, -0.624247193))
                        end
                    else
                        local RichsonProgess = CommF_:InvokeServer("ProQuestProgress", "RichSon")
                        if RichsonProgess ~= 0 and RichsonProgess ~= 1 then
                            if not module.VerifyTool("Cup")  then
                                if module.GetDistance(WS.Map.Desert.Cup.CFrame.Position) > 100 then
                                    module.Tweento(WS.Map.Desert.Cup.CFrame)
                                else
                                    module.GetHRP().CFrame = WS.Map.Desert.Cup.CFrame
                                end
                            else
                                module.EquipToolName("Cup")
                                wait(0.4)
                                module.FireRemotes("ProQuestProgress","FillCup", module.VerifyTool("Cup"))
                                wait(0.2)
                                module.FireRemotes("ProQuestProgress","SickMan")
                            end
                        elseif RichsonProgess == 0 then
                            if module.VerifyEnemies("Mob Leader", true) then
                                local v = module.VerifyEnemies("Mob Leader", true)
                                if module.IsAlive(v) and v.Parent then
                                    repeat task.wait()
                                        module.EnableBuso()
                                        module.EquipWeapon()
                                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    until not v or not module.IsAlive(v) or Settings["Auto Saber"] == false
                                end
                            else
                                module.Tweento(CFrame.new(-2836.19385, 7.92910671, 5484.93408))
                            end
                        elseif RichsonProgess == 1 then
                            if not module.VerifyTool("Relic") then
                                local Rich = CFrame.new(-908.814819, 14.1188612, 4077.24658)
                                if module.GetDistance(Rich.Position) > 10 then
                                    module.Tweento(Rich)
                                else
                                    module.FireRemotes("ProQuestProgress","RichSon")
                                end
                            else
                                module.EquipToolName("Relic")
                                module.Tweento(CFrame.new(-1404.43835, 29.8870087, 4.62949038, 0.883046508, 9.38910727e-09, 0.469285458, -2.02383887e-08, 1, 1.80749922e-08, -0.469285458, -2.54586396e-08, 0.883046508))
                            end
                        end
                    end
                end
            else
                if module.VerifyEnemies("Saber Expert", true) then
                    local v = module.VerifyEnemies("Saber Expert", true)
                    repeat task.wait()
                        module.EnableBuso()
                        module.EquipWeapon()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until not module.IsAlive(v) or not v.Parent or Settings["Auto Saber"] == false
                else
                    if Settings["Hop Options"] then
                        task.wait(.1)
                        module.HopServers()
                    end
                end
            end
        end
    end, Sea1},
    ["Auto Rengoku"] = {function()
        if not module.GetInventoryItems("Rengoku") and not module.CheckSea(2) then module.TeleportWorld(2) return end
        if module.GetInventoryItems("Rengoku") then return end
        if not module.GetInventoryItems("Rengoku") then
            if not module.VerifyTool("Hidden Key") then
                if module.VerifyEnemies("Awakened Ice Admiral", true) then
                    local v = module.VerifyEnemies("Awakened Ice Admiral", true)
                    if module.IsAlive(v) then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until not module.IsAlive(v) or not Settings["Auto Rengoku"] or module.VerifyTool("Hidden Key")
                    end
                elseif not Settings["Hop Options"] then
                    local Mobs = module.Mobs.RengokuMobs
                    if module.VerifyEnemies(Mobs) then
                        local v = module.VerifyEnemies(Mobs)
                        if module.IsAlive(v) then
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.BringEnemies(v, true)
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not module.IsAlive(v) or not Settings["Auto Rengoku"] or module.VerifyTool("Hidden Key")
                        end
                    else
                        for _,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                            if table.find(Mobs, v.Name) then
                                repeat task.wait()
                                    module.Tweento(v.CFrame * CFrame.new(0, 20, 0))
                                until module.GetDistance(v.Position) <= 30 or module.VerifyEnemies(Mobs) or not Settings["Auto Rengoku"] or module.VerifyTool("Hidden Key")
                            end
                        end
                    end
                elseif Settings["Hop Options"] then
                    task.wait(.1)
                    module.HopServers()
                end
            else
                module.EquipToolName("Hidden Key")
                module.Tweento(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
            end
        end
    end, Sea2},
    ["Auto Yama"] = {function()
        if module.GetInventoryItems("Yama") then
        else
            if CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                if not WS.Map.Waterfall:FindFirstChild("SealedKatana") then
                    module.Tweento(CFrame.new(5250.71924, 19.842907, 453.177002))
                else
                    if module.GetDistance(WS.Map.Waterfall.SealedKatana.Hitbox.Position) <= 10 then
                        fireclickdetector(WS.Map.Waterfall.SealedKatana.Hitbox.ClickDetector)
                    else
                        module.Tweento(WS.Map.Waterfall.SealedKatana.Hitbox.CFrame)
                    end
                end
            end
        end
    end, Sea3},
    ["Auto Tushita"] = {function()
        if module.GetInventoryItems("Tushita") then
        else
            local TushitaProgress = CommF_:InvokeServer("TushitaProgress")
            if not TushitaProgress.OpenedDoor then
                if module.VerifyEnemies({"rip_indra", "rip_indra True Form"}, true) then
                    if not module.VerifyTool("Holy Torch") then
                        module.Tweento(
                            CFrame.new(
                                5717.06592,
                                18.8161335,
                                252.124573,
                                0.926925123,
                                -3.25000045e-08,
                                -0.375246346,
                                3.45466091e-08,
                                1,
                                -1.2735254e-09,
                                0.375246346,
                                -1.17830261e-08,
                                0.926925123
                            )
                        )
                    else
                        module.EquipToolName("Holy Torch")
                        for r = 1, 5 do
                            module.FireRemotes("TushitaProgress", "Torch", r)
                        end
                    end
                end
            else
                local v = module.VerifyEnemies("Longma", true)
                if v and module.IsAlive(v) then
                    repeat
                        task.wait()
                        module.EquipWeapon()
                        module.EnableBuso()
                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until not module.IsAlive(v) or not v.Parent
                elseif not v then
                    module.HopServers()
                end
            end
        end
    end, Sea3},
    ["Auto Hallow Scythe"] = {function()
        if not module.CheckSea(3) or module.GetInventoryItems("Hallow Scythe") then return end
        local SR = module.VerifyEnemies("Soul Reaper", true)
        if SR then
            if module.IsAlive(SR) then
                local v = module.IsAlive(SR)
                repeat task.wait()
                    module.EquipWeapon()
                    module.EnableBuso()
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(SR) or not module.VerifyEnemies("Soul Reaper", true) or not Settings["Auto Hallow Scythe"]
            end
        else
            if module.VerifyTool("Hallow Essence") then
            module.EquipToolName('Hallow Essence')
            module.Tweento(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
            else
                module.RollBones()
            end
        end
    end, Sea3},
    ["Auto Dual Cursed Katana"] = {function()
        if module.CheckSwordMastery("Yama") >= 350 and module.CheckSwordMastery("Tushita") >= 350 then
            if workspace.Map.Turtle.Cursed:FindFirstChild("Breakable") then
                if module.GetDistance(CFrame.new(-12130.51171875, 577.8272705078125, -6707.11474609375).Position) <= 10 then
                    module.FireRemotes("CDKQuest", "DoorNpc")
                    module.FireRemotes("CDKQuest", "OpenDoor", true)
                    if WS.Map.Turtle.Cursed:FindFirstChild("Breakable") then
                        WS.Map.Turtle.Cursed.Breakable:Destroy()
                    end
                else
                    module.Tweento(CFrame.new(-12130.51171875, 577.8272705078125, -6707.11474609375))
                end
                return
            end
            if CDKQuest[1] == 4 and CDKQuest[2] == 4 then
                if workspace.Map.Turtle.Cursed.Pedestal1.ProximityPrompt.Enabled then
                    if module.GetDistance(workspace.Map.Turtle.Cursed.Pedestal1.Position) > 10 then
                        module.Tweento(workspace.Map.Turtle.Cursed.Pedestal1.CFrame)
                    else
                        fireproximityprompt(WS.Map.Turtle.Cursed.Pedestal1.ProximityPrompt)
                    end
                else
                    if module.GetDistance(WS.Map.Turtle.Cursed.Pedestal3.Position) > 10 and WS.Map.Turtle.Cursed.PlacedGem.Transparency ~= 0 then
                        module.Tweento(WS.Map.Turtle.Cursed.Pedestal3.CFrame)
                    end
                    if WS.Map.Turtle.Cursed.PlacedGem.Transparency == 0 then 
                        if not module.VerifyEnemies("Cursed Skeleton Boss", true) then
                            module.Tweento(CFrame.new(-12341.66796875, 603.3455810546875, -6550.6064453125))
                        else
                            local v = module.VerifyEnemies("Cursed Skeleton Boss", true)
                            if v and module.IsAlive(v) then
                                repeat task.wait()
                                    module.EnableBuso()
                                    module.EquipWeapon()
                                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                until not module.IsAlive(v) or not Settings["Auto Dual Cursed Katana"]
                            end
                        end
                    else 
                        if module.GetDistance(WS.Map.Turtle.Cursed.Pedestal3.Position) < 10 then 
                            fireproximityprompt(WS.Map.Turtle.Cursed.Pedestal3.ProximityPrompt) 
                            wait(2)
                        end
                    end 
                end
            end
            if module.PedestalCheck() ~= nil then
                local Pedestal = module.PedestalCheck()
                if module.GetDistance(WS.Map.Turtle.Cursed[Pedestal].Position) <= 10 then
                    fireproximityprompt(WS.Map.Turtle.Cursed[Pedestal].ProximityPrompt)
                else
                    module.Tweento(WS.Map.Turtle.Cursed[Pedestal].CFrame)
                end
            end
            if CDKQuest[1] ~= -2 and CDKQuest[1] ~= 4 then
                if CDKQuest[1] == 0 or CDKQuest[1] == -3 then
                    module.DieQuest()
                elseif CDKQuest[1] == 1 or CDKQuest[1] == -4 then
                    module.KillHazeMobs()
                elseif CDKQuest[1] == 2 or CDKQuest[1] == -5 then
                    module.QuestHellDimension()
                end
            else
                if CDKQuest[2] == 0 or CDKQuest[2] == -3 then
                    module.MeetNPCBoats()
                elseif CDKQuest[2] == 1 or CDKQuest[2] == -4 then
                    module.PiratesRaid()
                elseif CDKQuest[2] == 2 or CDKQuest[2] == -5 then
                    module.HeavenlyDimensionQuest()
                end
            end
        else
            local items = (module.CheckSwordMastery("Yama") < 350 and "Yama" or module.CheckSwordMastery("Tushita") < 350 and "Tushita" or "none")
            Fluent:Notify({
                Title = "Auto CDK",
                Content = items .. " < 350 Mastery",
                Duration = 4
            })
            module.FireRemotes("LoadItem", items)
            wait(5)
        end 
    end, Sea3},
    ["Auto Superhuman"] = {function()
        if CommF_:InvokeServer("BuySuperhuman",true) ~= 1 then
            if not Settings["Black Legs"] then
                if module.VerifyTool("Black Leg") then
                    if module.VerifyMeleeMastery() >= 300 then
                        Settings["Black Legs"] = true
                        module.Save()
                    end
                else
                    module.FireRemotes("BuyBlackLeg")
                end
            elseif not Settings["Electro"] then
                if module.VerifyTool("Electro") then
                    if module.VerifyMeleeMastery() >= 300 then
                        Settings["Electro"] = true
                        module.Save()
                    end
                else
                    module.FireRemotes("BuyElectro")
                end
            elseif not Settings["Fishman Karate"] then
                if module.VerifyTool("Fishman Karate") then
                    if module.VerifyMeleeMastery() >= 300 then
                        Settings["Fishman Karate"] = true
                        module.Save()
                    end
                else
                    module.FireRemotes("BuyFishmanKarate")
                end
            elseif not Settings["Dragon Claw"] then
                if module.VerifyTool("Black Leg") then
                    if module.VerifyMeleeMastery() >= 300 then
                        Settings["Dragon Claw"] = true
                        module.Save()
                    end
                else
                    module.FireRemotes("BlackbeardReward", "DragonClaw", "1")
                    module.FireRemotes("BlackbeardReward", "DragonClaw", "2")
                end
            else
                module.FireRemotes("BuySuperhuman",true)
                module.FireRemotes("BuySuperhuman")
            end
        else
            module.FireRemotes("BuySuperhuman",true)
            module.FireRemotes("BuySuperhuman")
        end
    end, true},
    ["Auto Death Step"] = {function()
        if CommF_:InvokeServer("BuyDeathStep", true) ~= 1 then
            if module.VerifyTool("Black Leg") then
                if module.VerifyMeleeMastery() >= 400 then
                    if module.GetDeathStepDoor() then
                        if not module.VerifyTool("Library Key") then
                            local v = module.VerifyEnemies("Awakened Ice Admiral", true)
                            if v and module.IsAlive(v) then
                                repeat task.wait()
                                    module.EnableBuso()
                                    module.EquipWeapon()
                                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                until not module.IsAlive(v) or not Settings["Auto Death Step"] or module.VerifyTool("Library Key")
                            elseif not v then
                                if Settings["Hop Options"] then
                                    module.HopServers()
                                end
                            end
                        else
                            module.EquipToolName("Library Key")
                            module.Tweento(CFrame.new(6375.9126, 296.634583, -6843.14062, -0.849467814, 1.5493983e-08, -0.527640462, 3.70608895e-08, 1, -3.0301031e-08, 0.527640462, -4.5294577e-08, -0.849467814))
                        end
                    else
                        module.FireRemotes("BuyDeathStep")
                    end
                end
            else
                module.FireRemotes("BuyBlackLeg")
            end
        else
            module.FireRemotes("BuyDeathStep")
        end
    end, true},
    ["Auto Sharkman Karate"] = {function()
        if not module.CheckSea(2) and CommF_:InvokeServer("BuySharkmanKarate",true) ~= 1 then return module.TeleportWorld(2) end
        if CommF_:InvokeServer("BuySharkmanKarate",true) ~= 1 then
            if module.VerifyTool("Fishman Karate") then
                if module.VerifyMeleeMastery() >= 400 then
                    if CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." then
                        if not module.VerifyTool("Water Key") then
                            if module.VerifyEnemies("Tide Keeper",true) then
                                local v = module.VerifyEnemies("Tide Keeper",true)
                                if module.IsAlive(v) then
                                    repeat task.wait()
                                        module.EnableBuso()
                                        module.EquipWeapon()
                                        module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    until not module.IsAlive(v) or not Settings["Auto Sharkman Karate"] or module.VerifyTool("Water Key")
                                end
                            else
                                if Settings["Hop Options"] then
                                    module.HopServers()
                                end
                            end
                        else
                            module.FireRemotes("BuySharkmanKarate",true)
                        end
                    else
                        module.FireRemotes("BuySharkmanKarate")
                    end
                end
            else
                module.FireRemotes("BuyFishmanKarate")
            end
        else
            module.FireRemotes("BuySharkmanKarate")
        end
    end, true},
    ["Auto Electric Claw"] = {function()
        if CommF_:InvokeServer("BuyElectricClaw",true) ~= 1 then
            if module.VerifyTool("Electro") then
                if module.VerifyMeleeMastery() >= 400 then
                    if not CommF_:InvokeServer("BuyElectricClaw", "Start") then
                        if module.GetDistance(CFrame.new(-10369.0390625, 331.6894836425781, -10133.06640625)) > 10 then
                            module.Tweento(CFrame.new(-10369.0390625, 331.6894836425781, -10133.06640625))
                        else
                            module.FireRemotes("BuyElectricClaw", "Start")
                            wait(.5)
                        end
                    elseif CommF_:InvokeServer("BuyElectricClaw", "Start") == 4 then
                        module.Tweento(CFrame.new(-12549.7236, 337.511505, -7470.36328))
                    else
                        module.FireRemotes("BuyElectricClaw")
                    end
                end
            else
                module.FireRemotes("BuyElectro")
            end
        else
            module.FireRemotes("BuyElectricClaw")
        end
    end, Sea3},
    ["Auto Dragon Talon"] = {function()
        if CommF_:InvokeServer("BuyDragonTalon",true) ~= 1 then
            if CommF_:InvokeServer("BuyDragonTalon",true) == "Set your heart ablaze." then
                if module.VerifyTool("Dragon Claw") then
                    if module.VerifyMeleeMastery() >= 400 then
                        if not module.VerifyTool("Fire Essence") then
                            module.RollBones()
                        else
                            module.FireRemotes("BuyDragonTalon",true)
                        end
                    end
                else
                    module.FireRemotes("BlackbeardReward", "DragonClaw", "1")
                    module.FireRemotes("BlackbeardReward", "DragonClaw", "2")
                end
            else
                module.FireRemotes("BuyDragonTalon")
            end
        else
            module.FireRemotes("BuyDragonTalon")
        end
    end, Sea3},
    ["Auto Godhuman"] = {function()
        if CommF_:InvokeServer("BuyGodhuman",true) ~= 1 then
            Materials = {
                ["Fish Tail"] = 20,
                ["Magma Ore"] = 20,
                ["Dragon Scale"] = 10,
                ["Mystic Droplet"] = 10
            }
            if not Settings["SuperhumanOkay"] then
                if module.VerifyTool("Superhuman") and module.VerifyMeleeMastery() >= 400 then
                    Settings["SuperhumanOkay"] = true
                    module.Save()
                elseif not module.VerifyTool("Superhuman") then
                    module.FireRemotes("BuySuperhuman")
                end
            elseif not Settings["DeathStepOkay"] then
                if module.VerifyTool("Death Step") and module.VerifyMeleeMastery() >= 400 then
                    Settings["DeathStepOkay"] = true
                    module.Save()
                elseif not module.VerifyTool("Death Step") then
                    module.FireRemotes("BuyDeathStep")
                end
            elseif not Settings["ElectricClawOkay"] then
                if module.VerifyTool("Electric Claw") and module.VerifyMeleeMastery() >= 400 then
                    Settings["ElectricClawOkay"] = true
                    module.Save()
                elseif not module.VerifyTool("Electric Claw") then
                    module.FireRemotes("BuyElectricClaw")
                end
            elseif not Settings["SharkmanOkay"] then
                if module.VerifyTool("Sharkman Karate") and module.VerifyMeleeMastery() >= 400 then
                    Settings["SharkmanOkay"] = true
                    module.Save()
                elseif not module.VerifyTool("Sharkman Karate") then
                    module.FireRemotes("BuySharkmanKarate")
                end
            elseif not Settings["DragonTalonOkay"] then
                if module.VerifyTool("Dragon Talon") and module.VerifyMeleeMastery() >= 400 then
                    Settings["DragonTalonOkay"] = true
                    module.Save()
                elseif not module.VerifyTool("Dragon Talon") then
                    module.FireRemotes("BuyDragonTalon")
                end
            else
                for name,counts in next, Materials do
                    if module.CheckMaterial(name) < counts then
                        if not EnoughMaterials then
                            if name == "Dragon Scale" then
                                if not module.CheckSea(3) then module.TeleportWorld(3) end
                                local Mobs = {
                                    "Dragon Crew Archer",
                                    "Dragon Crew Warrior"
                                }
                                module.AutoMaterial(name, counts, Mobs)
                            elseif name == "Fish Tail" then
                                if not module.CheckSea(3) then module.TeleportWorld(3) end
                                local Mobs = {
                                    "Fishman Raider",
                                    "Fishman Captain"
                                }
                                module.AutoMaterial(name, counts, Mobs)
                            elseif name == "Mystic Droplet" then
                                if not module.CheckSea(2) then module.TeleportWorld(2) end
                                local Mobs = {
                                    "Sea Soldier",
                                    "Water Fighter"
                                }
                                module.AutoMaterial(name, counts, Mobs)
                            elseif name == "Magma Ore" then
                                if not module.CheckSea(1) then module.TeleportWorld(1) end
                                local Mobs = {
                                    "Military Soldier",
                                    "Military Spy"
                                }
                                module.AutoMaterial(name, counts, Mobs)
                            else
                                print("Enough")
                                EnoughMaterials = true
                            end
                        end
                    else
                        EnoughMaterials = true
                        module.FireRemotes("BuyGodhuman",true)
                        module.FireRemotes("BuyGodhuman")
                    end
                end
            end
        else
            CommF_:InvokeServer("BuyGodhuman",true)
            module.FireRemotes("BuyGodhuman")
        end
    end, true},
    ["Auto Soul Guitar"] = {function()
        
    end, Sea3},
    ["Random Suprises"] = {function()
        module.RollBones()
    end,Sea3},
    ["Infinity Range Observation Haki"] = {
        function()
            RangeOld = game:GetService("Players").LocalPlayer.VisionRadius.Value
            game:GetService("Players").LocalPlayer.VisionRadius.Value = math.huge
        end,
        true
    },
    ["Auto Find Prehistoric Island"] = {function()
        if module.GetPrehistoricIsland() then
            if plr.Character.Humanoid.Sit == true then
                plr.Character.Humanoid.Sit = false
            end
            module.ToPrehistoricIsland()
        else
            if plr.Character.Humanoid.Sit == true then
                for _,v in next, workspace.Boats:GetChildren() do
                    if v and module.GetDistance(v.VehicleSeat.Position) <= 50 then
                        local Boats = v
                        repeat task.wait()
                        module.NoClipBoat(true)
                        if not plr.Character.PrimaryPart:FindFirstChild("GAY") then
                            local GAY = Instance.new("BodyVelocity", plr.Character.PrimaryPart)
                            GAY.Name = "GAY"
                            GAY.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            GAY.Velocity = LeviathanHuntPos * 260
                        end
                        if plr:GetAttribute("ExactLocation") == "" or not plr:GetAttribute("ExactLocation") then
                            Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 70, Boats.VehicleSeat.CFrame.Z)
                        else
                            Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 750, Boats.VehicleSeat.CFrame.Z)
                        end
                        until not Settings["Auto Find Prehistoric Island"] or plr.Character.Humanoid.Sit ~= true or module.GetPrehistoricIsland()
                        plr.Character.HumanoidRootPart:FindFirstChild("GAY"):Destroy()
                        Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 27, Boats.VehicleSeat.CFrame.Z)
                    end
                end
            else
                if not module.GetLocalBoat() then
                    if module.GetDistance(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625).Position) > 50 then
                        module.Tweento(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625))
                    else
                        wait(.3)
                        module.FireRemotes("BuyBoat", (Settings["Select Boats"] or "Guardian"))
                    end
                else
                    module.Tweento(module.GetLocalBoat().VehicleSeat.CFrame*CFrame.new(0,2,0))
                end
            end
        end
    end, Sea3},
    ["Auto Prehistoric Island"] = {function()
        if not module.GetPrehistoricIsland() then SpamSkill = false return end
        if module.VerifyEnemies("Lava Golem") and Settings["Auto Lava Golem"] then return end
        if module.GetPrehistoricIsland() then
            if plr.Character.Humanoid.Sit == true then
                plr.Character.Humanoid.Sit = false
            end
            local Island = WS.Map:FindFirstChild("PrehistoricIsland")
            if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible and Island.Core:FindFirstChild("VolcanoRocks") then
                task.spawn(module.KillAura)
                module.DeleteLava()
                local Island = WS.Map:FindFirstChild("PrehistoricIsland")
                if Island:FindFirstChild("InteriorLava") then
                    Island:FindFirstChild("InteriorLava"):Destroy()
                end
                if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible and Island.Core:FindFirstChild("VolcanoRocks") then
                    for r,v in next, Island.Core.VolcanoRocks:GetChildren() do
                        if v:IsA("Model") and v.Name == "Rock" then
                            if v:FindFirstChild("volcanorock") then
                                if v:FindFirstChild("VFXLayer") and v.VFXLayer.At1Beam.Enabled then
                                    repeat task.wait()
                                        if module.GetDistance(v.volcanorock.Position) <= 100 then
                                            SpamSkill = true
                                        else
                                            SpamSkill = false
                                            
                                            aim = false
                                        end
                                        module.Tweento(v.volcanorock.CFrame)
                                    until not v.VFXLayer.At1Beam.Enabled or not Island or Settings["Auto Prehistoric Island"] == false
                                    SpamSkill = false
                                elseif v:FindFirstChild("VFXLayer") and not v.VFXLayer.At1Beam.Enabled then
                                    if Core and Core:FindFirstChild("PrehistoricRelic") and Core.PrehistoricRelic:FindFirstChild("Skull") then
                                        module.Tweento(Core.PrehistoricRelic.Skull.CFrame + Vector3.yAxis * 25)
                                    end
                                end
                            end
                        end
                    end
                end
            else
                local Core = Island:FindFirstChild("Core")
                local ActivationPrompt = Core and Core:FindFirstChild("ActivationPrompt")
                if ActivationPrompt then
                    if module.GetDistance(ActivationPrompt.Position) > 10 then
                        module.Tweento(ActivationPrompt.CFrame)
                    else
                        fireproximityprompt(ActivationPrompt.ProximityPrompt)
                    end
                elseif Core and Core:FindFirstChild("PrehistoricRelic") and Core.PrehistoricRelic:FindFirstChild("Skull") then
                    module.Tweento(Core.PrehistoricRelic.Skull.CFrame + Vector3.yAxis * 25)
                end
            end
        end
    end, Sea3},
    ["Auto Lava Golem"] = {function()
        if module.VerifyEnemies("Lava Golem") then
            local v = module.VerifyEnemies("Lava Golem")
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(v) or not Settings["Auto Lava Golem"]
            end
        end
    end, Sea3},
    ["Auto Collect Dragon Egg"] = {function()
        if module.GetPrehistoricIsland() then
            if workspace.Map.PrehistoricIsland.Core:FindFirstChild("SpawnedDragonEggs") and workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg") then
                local egg = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg")
                if module.GetDistance(egg:GetPivot().Position) <= 10 then
                    fireproximityprompt(egg.Molten.ProximityPrompt)
                else
                    module.Tweento(egg:GetPivot())
                end
            end
        end
    end, Sea3},
    ["Aimbot Skills"] = {function()
        for r,v in next, WS.Characters:GetChildren() do
            if v.Name == (getgenv().TargetSelect or "") then
                if v and v.Parent and v.Humanoid.Health > 0 then
                    repeat task.wait()
                        module.SetAimTarget(true, v.HumanoidRootPart.CFrame)
                    until not v or not v.Parent or v.Humanoid.Health <= 0 or not Settings["Aimbot Skills"]
                    module.SetAimTarget(false, nil)
                end
            end
        end
    end, true},
    ["Auto Buy Haki Spawn"] = {function()
        module.FireRemotes("ColorsDealer","2")
    end, Sea3},
    ["Auto Buy Legendary Sword"] = {function()
        module.FireRemotes("LegendarySwordDealer", "2")
    end, Sea3},
    ["Auto Tyrant of the skies"] = {function()
        if not module.CheckSea(3) then return end
        if Settings["Start Farm"] and not module.VerifyEnemies("Tyrant of the Skies", true) then return end
        local v = module.VerifyEnemies("Tyrant of the Skies", true)
        if v then
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Settings["Auto Tyrant of the skies"] ~= true or not module.IsAlive(v) or not v.Parent
            end
        elseif #module.CheckEyes() >= 4 then
            spawn(function()
                module.Tweento(CFrame.new(-16217.470703125, 155.212158203125, 1389.8223876953125))
            end)
            Fluent:Notify({
                Title = "Script Notification",
                Content = "Please Destroy All Pottery",
                Duration = 10
            })
            wait(11)
        else
            local v = module.VerifyEnemies(module.Mobs.TikiMobs)
            if v then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Settings["Auto Tyrant of the skies"] ~= true or not module.IsAlive(v) or #module.CheckEyes() >= 4
            else
                for _,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                    if table.find(module.Mobs.TikiMobs, v.Name) and not module.VerifyEnemies(module.Mobs.TikiMobs) then
                        repeat task.wait()
                            module.Tweento(v.CFrame * CFrame.new(0, 0, 0))
                        until module.VerifyEnemies(module.Mobs.TikiMobs) or not Settings["Auto Tyrant of the skies"] or module.GetDistance(v.Position) <= 10
                    end
                end
            end
        end
    end, Sea3},
    ["Auto Collect Dino Bone"] = {function()
        for r,v in next, workspace:GetChildren() do
            if v:IsA("MeshPart") and v.Name == "DinoBone" then
                repeat task.wait()
                    module.Tweento(v.CFrame)
                until not Settings["Auto Collect Dino Bone"] or not v or not v.Parent
            end
        end
    end, Sea3},
    ["Teleport To Players"] = {function()
        if getgenv().SelectPlayers ~= "" and getgenv().SelectPlayers ~= nil then
            local Player = getgenv().SelectPlayers
            if workspace.Characters[Player] then
                module.Tweento(workspace.Characters[Player].HumanoidRootPart.CFrame)
            end
        end
    end,true},
    ["Auto Farmming 600 Mastery All Swords"] = {function()
        local nowtool = module.GetWeaponType("Sword")
        if module.VerifyTool(nowtool) then
            local Mastery = module.VerifyTool(nowtool).Level.Value
            if Mastery >= 600 then
                for r, v in next, CommF_:InvokeServer("getInventory") do
                    if v.Type == "Sword" then
                        if v.Mastery < 600 then
                            module.FireRemotes("LoadItem", v.Name)
                        end
                    end
                end
            else
                --- not
            end
        end
    end,true},
    ["Auto Pull Lever"] = {function()
        local Progress = module.CheckMiragePuzzle()
        if Progress == "Completed" then
            Notify("Pull Lever Completed",nil,7)
            task.wait(8)
            return
        end
        if Progress == "Claim Quest Npc in castle" then
            if module.GetDistance(CFrame.new(-5356.1416015625, 313.75048828125, -2491.4521484375)) <= 10 then
                module.FireRemotes("RaceV4Progress", "Begin")
            else
                module.Tweento(CFrame.new(-5356.1416015625, 313.75048828125, -2491.4521484375))
            end
        elseif Progress == "Tween to temple" then
            if module.GetDistance(CFrame.new(3029.850830078125, 2281.01025390625, -7325.95556640625)) <= 10 then
                module.FireRemotes("RaceV4Progress", "Teleport")
            else
                module.Tweento(CFrame.new(3029.850830078125, 2281.01025390625, -7325.95556640625))
            end
        elseif Progress == "Continue Quests" then
            module.FireRemotes("RaceV4Progress", "Continue")
        else
            if Progress ~= "Completed" and module.CheckMirage() then
                local HighPos = CFrame.new(0,0,0)
                if module.GetHighPart() then
                    HighPos = module.GetHighPart().CFrame * CFrame.new(0, 12, 0)
                else
                    HighPos = WS.Map.MysticIsland.WorldPivot * CFrame.new(0, 500, 0)
                end
                if module.GetGear() then
                    local Gear = module.GetGear()
                    if Gear.Transparency == 0 and not Gear.CanCollide then
                        repeat task.wait()
                            module.Tweento(Gear.CFrame)
                        until not Gear or Settings["Auto Pull Lever"] == false
                    elseif Gear and Gear.Transparency ~= 0 then
                        if module.GetDistance(HighPos.Position) <= 10 then
                            if module.GetTime() == "Night" then
                                repeat task.wait()
                                    module.SetCameratoFirst()
                                    WS.CurrentCamera.CFrame = CFrame.lookAt(WS.CurrentCamera.CFrame.Position, game:GetService("Lighting"):GetMoonDirection() + WS.CurrentCamera.CFrame.Position)
                                    module.SendKey("T")
                                until Gear and Gear.Transparency == 0 and Gear.CanCollide == false or not Settings["Auto Pull Lever"]
                            else
                                module.Tweento(HighPos)
                            end
                        else
                            module.Tweento(HighPos)
                        end
                    end
                else
                    module.Tweento(HighPos)
                end
            end
        end
    end, Sea3},
    ["Auto Soul Reaper"] = {function()
        local SR = module.VerifyEnemies("Soul Reaper", true)
        if SR then
            if module.IsAlive(SR) then
                local v = SR
                repeat task.wait()
                    module.EquipWeapon()
                    module.EnableBuso()
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(SR) or not module.VerifyEnemies("Soul Reaper", true) or not Settings["Auto Soul Reaper"]
            end
        else
            if module.VerifyTool("Hallow Essence") then
            module.EquipToolName('Hallow Essence')
            module.Tweento(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
            else
                module.RollBones()
            end
        end
    end, Sea3},
    ["Auto Blaze Embers"] = {function()
        if not module.CheckNotify("task completed") then SpamSkill = false module.SetAimTarget(false) end
        if not WS:FindFirstChild("EmberTemplate") then
            if not DragonHunterClaimed then
                local Pos = CFrame.new(5863.29150390625, 1209.4527587890625, 809.9525756835938)
                if module.GetDistance(Pos) <= 10 then
                    local Progress = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer({Context = "Check"})
                    if typeof(Progress) ~= "boolean" then
                        if not Progress["Text"] then
                            Net:WaitForChild("RF/DragonHunter"):InvokeServer({Context = "RequestQuest"})
                        else
                            DragonHunterClaimed = true
                            DragonHunterText = Progress["Text"]
                        end
                    end
                else
                    module.Tweento(Pos)
                end
            else
                if DragonHunterText ~= "" then
                    if DragonHunterText == "Destroy 10 trees on Hydra Island." then
                        if module.GetTreeHydra() then
                            local Trees = module.GetTreeHydra()
                            repeat task.wait()
                                if module.GetDistance(Trees.Position) <= 100 then
                                    SpamSkill = true
                                    module.SetAimTarget(true, Trees.CFrame)
                                else
                                    SpamSkill = false
                                    module.SetAimTarget(false)
                                end
                                module.Tweento(Trees.CFrame)
                            until not DragonHunterClaimed or not Trees or not Trees.Parent or module.CheckNotify("task completed")
                            SpamSkill = false
                            module.SetAimTarget(false)
                        end
                    elseif DragonHunterText == "Defeat 3 Venomous Assailants on Hydra Island." then
                        local Mobs = "Venomous Assailant"
                        if module.VerifyEnemies(Mobs, true) then
                            local v = module.VerifyEnemies(Mobs, true)
                            if module.IsAlive(v) then
                                repeat task.wait()
                                    module.EnableBuso()
                                    module.EquipWeapon()
                                    module.BringEnemies(v, true)
                                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                until not DragonHunterClaimed or not module.IsAlive(v) or not Settings["Auto Blaze Embers"] or module.CheckNotify("task completed")
                            end
                        else
                            for r,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                                if v.Name == Mobs then
                                    repeat task.wait()
                                        module.Tweento(v.CFrame * CFrame.new(0, 20, 0))
                                    until module.VerifyEnemies(Mobs, true) or not Settings["Auto Blaze Embers"] or module.GetDistance(v.Position) <= 30 or module.CheckNotify("task completed") or not DragonHunterClaimed
                                end
                            end
                        end
                    elseif DragonHunterText == "Defeat 3 Hydra Enforcers on Hydra Island." then
                        local Mobs = "Hydra Enforcer"
                        if module.VerifyEnemies(Mobs, true) then
                            local v = module.VerifyEnemies(Mobs, true)
                            if module.IsAlive(v) then
                                repeat task.wait()
                                    module.EnableBuso()
                                    module.EquipWeapon()
                                    module.BringEnemies(v, true)
                                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                until not DragonHunterClaimed or not module.IsAlive(v) or not Settings["Auto Blaze Embers"] or module.CheckNotify("task completed")
                            end
                        else
                            for r,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                                if v.Name == Mobs then
                                    repeat task.wait()
                                        module.Tweento(v.CFrame * CFrame.new(0, 20, 0))
                                    until module.VerifyEnemies(Mobs, true) or not Settings["Auto Blaze Embers"] or module.GetDistance(v.Position) <= 30 or module.CheckNotify("task completed") or not DragonHunterClaimed
                                end
                            end
                        end
                    end
                end
            end
        elseif WS:FindFirstChild("EmberTemplate") and WS.EmberTemplate:FindFirstChild("Part") then
            plr.Character.PrimaryPart.CFrame = WS.EmberTemplate.Part.CFrame
        end
    end, Sea3},
    ["Auto Boss"] = {
        function()
            local Boss, Info = module.Getboss(Settings["Select Boss"])
            if module.VerifyEnemies(Boss, true) then
                if Info["IsBoss"] and Settings["Take Quest"] and not plr.PlayerGui.Main.Quest.Visible then
                    if module.GetDistance(Info.Quest[2]) <= 10 then
                        module.FireRemotes("StartQuest", Info.Quest[1], 3)
                    else
                        module.Tweento(Info.Quest[2])
                    end
                elseif not Info["IsBoss"] or not Settings["Take Quest"] or plr.PlayerGui.Main.Quest.Visible then
                    local v = module.VerifyEnemies(Boss, true)
                    if module.IsAlive(v) then
                        repeat task.wait()
                            module.EnableBuso()
                            module.EquipWeapon()
                            module.BringEnemies(v, true)
                            module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until not module.IsAlive(v) or not Settings["Auto Boss"]
                    end
                end
            end
        end,true
    },
    ["Auto All Boss"] = {
        function()
            local v = module.VerifyEnemies(module.Bosses, true)
            if module.IsAlive(v) then
                repeat task.wait()
                    module.EnableBuso()
                    module.EquipWeapon()
                    module.BringEnemies(v, true)
                    module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not module.IsAlive(v) or not Settings["Auto Boss"]
            end
        end,true
    },
    ["Auto Dojo Trainer"] = {function()
        if not DojoQuestClaimed then
            local Pos = module.GetNPCs("Dojo Trainer")
            if module.GetDistance(Pos) <= 10 then
                local Progress = Net:WaitForChild("RF/InteractDragonQuest"):InvokeServer({NPC = "Dojo Trainer",Command = "RequestQuest"})
                if typeof(Progress) == "table" then
                    if Progress["Quest"] then
                        for r,v in next, Progress["Quest"] do
                            DojoQuestText = Progress["Quest"]["QuestName"]
                            DojoQuestClaimed = true
                        end
                    else
                        print("[hoang beo] not claimed quest")
                    end
                end
            else
                module.Tweento(Pos)
            end
        else
            if DojoQuestText ~= "" then
                Net:WaitForChild("RF/InteractDragonQuest"):InvokeServer({NPC = "Dojo Trainer",Command = "ClaimQuest"})                
                if DojoQuestText == "Admittance" then
                    local QuestPoint = module.GetQuestPoint()
                    local Mob1, Mob2, Mob3 = module.GetDataQuest(), module.GetDoubleQuest()["NameQuest"], module.GetDoubleQuest()["ID"]
                    if not plr.PlayerGui.Main.Quest.Visible then
                        if module.GetDistance(QuestPoint.Position) > 10 then
                            module.Tweento(QuestPoint)
                        else
                            module.FireRemotes("StartQuest", Mob2, Mob3)
                        end
                    else
                        local v = module.VerifyEnemies(Mob1)
                        if not v then
                            for _,v in next, WS.ZinnerStorage.MobSpawning:GetChildren() do
                                if v.Name == Mob1 and not module.VerifyEnemies(Mob1) and Settings["Auto Dojo Trainer"] then
                                    repeat task.wait()
                                        module.Tweento(v.CFrame)
                                        task.wait(1)
                                    until module.VerifyEnemies(Mob1) or not Settings["Auto Dojo Trainer"] or module.GetDistance(v.Position) <= 10
                                end
                            end
                        else
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.BringEnemies(v)
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not module.IsAlive(v) or not plr.PlayerGui.Main.Quest.Visible or not Settings["Auto Dojo Trainer"]
                        end
                    end
                elseif DojoQuestText == "Water Warrior" then
                    if module.VerifyEnemies({"Shark","Piranha","Terrorshark","Fish Crew Member"}, nil, 2000) then
                        plr.Character.Humanoid.Sit = false
                        local v = module.VerifyEnemies({"Shark","Piranha","Terrorshark","Fish Crew Member"}, nil, 2000)
                        if module.IsAlive(v) then
                            repeat task.wait()
                                module.EnableBuso()
                                module.EquipWeapon()
                                module.BringEnemies(v)
                                module.Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not module.IsAlive(v) or not Settings["Auto Dojo Trainer"] or not DojoQuestClaimed
                        end
                    else
                        if not module.GetLocalBoat() then
                            if module.GetDistance(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625).Position) > 50 then
                                module.Tweento(CFrame.new(-16214.6767578125, 9.09604263305664, 406.43853759765625))
                            else
                                wait(.3)
                                module.FireRemotes("BuyBoat", "Guardian")
                            end
                        else
                            Boats = module.GetLocalBoat()
                            if plr.Character.Humanoid.Sit == false then
                                module.Tweento(Boats.VehicleSeat.CFrame*CFrame.new(0,2,0))
                                module.NoClipBoat(false)
                            else
                                repeat wait()
                                    module.NoClipBoat(true)
                                    if not plr.Character.PrimaryPart:FindFirstChild("GAY") then
                                        local GAY = Instance.new("BodyVelocity", plr.Character.PrimaryPart)
                                        GAY.Name = "GAY"
                                        GAY.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                        GAY.Velocity = LeviathanHuntPos * 260
                                    end
                                    Boats.VehicleSeat.CFrame = CFrame.new(Boats.VehicleSeat.CFrame.X, 24, Boats.VehicleSeat.CFrame.Z)
                                until not Settings["Auto Dojo Trainer"] or plr.Character.Humanoid.Sit ~= true or module.VerifyEnemies({"Shark","Piranha","Terrorshark","Fish Crew Member"}, nil, 2000)
                                plr.Character.HumanoidRootPart:FindFirstChild("GAY"):Destroy()
                            end
                        end
                    end
                end
            end
        end
    end, Sea3}
}
spawn(function()
    while wait() do
        if module.CheckNotify("task completed") then
            DojoQuestClaimed = false
            DragonHunterClaimed = false
        end
    end
end)
spawn(function()
    while wait() do
        repeat task.wait() until LoadedHub
        AllFeature["Upgraded Race"]["Mirage Puzzle Status"]:SetDesc((Sea3 and module.CheckMiragePuzzle() or "Not Completed"))
        AllFeature["Status Servers"]["Elite Status"]:SetDesc(module.VerifyElites() and "Spawned" or "Not spawned")
        AllFeature["Status Servers"]["Leviathan Status"]:SetDesc(module.CheckSpyStatus())
        AllFeature["Status Servers"]["Mirage Status"]:SetDesc(module.CheckMirage() and "Spawned" or "Not spawned")
        AllFeature["Status Servers"]["Cake Prince Status"]:SetDesc(module.CheckSea(3) and (module.VerifyEnemies("Cake Prince",true) and "Spawned!" or "Killed : " .. string.gsub(CommF_:InvokeServer("CakePrinceSpawner",true), "%D","") .. " Mobs") or "Only Third Sea")
        AllFeature["Status Servers"]["Berries Check"]:SetDesc((module.CheckBerries()[2] and table.concat(module.CheckBerries()[2], ", ") or "not Spawned"))
    end
end)
spawn(function()
    while wait() do
        if Settings["Auto Look At Moon"] then
            WS.CurrentCamera.CFrame = CFrame.lookAt(WS.CurrentCamera.CFrame.Position, game:GetService("Lighting"):GetMoonDirection() + WS.CurrentCamera.CFrame.Position)
        end
    end
end)
local AllTab = {{"Shop Tab", "rbxassetid://134556077676632"}, {"Status Servers", "rbxassetid://122223674767625"},{"Config Farm", "rbxassetid://127147149367603"},{"Farmming Tab", "rbxassetid://127561653320876"},{"Stack Farmming", "rbxassetid://72448332143088"}, {"Items Farmming", "rbxassetid://97087268377873"}, {"Fruits and Raid","rbxassetid://119340207028601"}, {"Local Player", "rbxassetid://98870151777863"}, {"PVP-Combat", "rbxassetid://125736686613291"}, {"Volcano Events", "rbxassetid://71385541823712"}, {"Sea Events","rbxassetid://96788654458681"}, {"Dojo", "rbxassetid://91920478152016"}, {"Upgraded Race", "rbxassetid://115164375298022"}, {"Settings", ""}}
local QuanCac = {}
module.newInterface = function(Tab, Type, Config)
    if Type == "Toggle" then
        return Tab:NewToggle(Config.Title, Config)
    elseif Type == "Button" then
        return Tab:NewButton(Config)
    elseif Type == "Dropdown" then
        return Tab:NewDropdown(Config.Title, Config)
    elseif Type == "Slider" then
        return Tab:NewSlider(Config.Title,Config)
    elseif Type == "Seperator" then
        return Tab:NewSeperator(Config)
    elseif Type == "Label" then
        return Tab:NewParagraph(Config)
    elseif Type == "Input" then
        return Tab:NewInput(Config)
    end
end
module.BuildUI = function()
    for r,v in pairs(AllTab) do
        QuanCac[v[1]] = Window:MakeTab({Title = v[1], Icon = v[2]})
        local Tab = QuanCac[v[1]]
        AllFeature[v[1]] = AllFeature[v[1]] or {}
        for gi, ga in pairs(BuildInterface[v[1]]["Feature"]) do
            if ga ~= nil then
                realinterface = module.newInterface(Tab, ga.Type, ga)
                AllFeature[v[1]][ga.Title] = realinterface
            end
        end
    end
end
spawn(function()
    while wait() do
        if SpamSkill then
            pcall(function()
                if Settings["Use Melee"] and module.GetSkill("Melee",Settings["Melee Skills"]) then
                    local Skills = module.GetSkill("Melee",Settings["Melee Skills"])
                    module.EquipToolName(Skills[1])
                    module.SendKey(Skills[2])
                elseif Settings["Use Sword"] and module.GetSkill("Sword",Settings["Sword Skills"]) then
                    local Skills = module.GetSkill("Sword",Settings["Sword Skills"])
                    module.EquipToolName(Skills[1])
                    module.SendKey(Skills[2])
                elseif Settings["Use Gun"] and module.GetSkill("Gun",Settings["Gun Skills"]) then
                    local Skills = module.GetSkill("Gun",Settings["Gun Skills"])
                    module.EquipToolName(Skills[1])
                    module.SendKey(Skills[2])
                elseif Settings["Use Blox Fruit"] and module.GetSkill("Blox Fruit",Settings["Blox Fruit Skills"]) then
                    local Skills = module.GetSkill("Blox Fruit",Settings["Blox Fruit Skills"])
                    module.EquipToolName(Skills[1])
                    module.SendKey(Skills[2])
                else
                    module.RandomEquipWeapon()
                end
            end)
        end
    end
end)
if module.DetectOldServer() then
    Fluent:Notify({
        Title = "Detect Old Server",
        Content = "Enable Super Fast Attack!",
        Duration = 7
    })
else
    Fluent:Notify({
        Title = "Detect New Server",
        Content = "Enable Normal Fast Attack!",
        Duration = 7
    })
end
module.LoadScript = function()
    task.spawn(function()
        repeat task.wait() until LoadedHub
        while task.wait() do
            NoClip = false
            x, xx = pcall(function()
                for namefunc, func in pairs(module.AllFuncs) do
                    if Settings[namefunc] and func[2] then
                        NoClip = true
                        func[1]()
                    end
                end
            end)
            if not x then print(xx) end
        end
    end)
    WS.Map["WaterBase-Plane"].Size = Vector3.new(1000, 113, 1000)
    if module.CheckSea(2) and workspace.Map.CircleIsland.Detail:FindFirstChild("LavaParts") then
        workspace.Map.CircleIsland:WaitForChild("Detail"):FindFirstChild("LavaParts"):Destroy()
    end
end
LoadedHub = true
module.BuildUI()
module.LoadScript()
module.LogPlayers()
print("Loaded " .. start_script_time)
