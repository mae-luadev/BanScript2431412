local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt"))()
_G.closeBind = Enum.KeyCode.C

local win = lib:Window("Mod Panel", "Your Rank: Creator", Color3.fromRGB(255, 110, 48), _G.closeBind)
local tab1 = win:Tab("Esp", "http://www.roblox.com/asset/?id=6023426915")


-- getgenv().espplayers = false -- si borro estos getgenv no afecta en nada
tab1:Toggle("Player Esp", "This option will show you where all the Players are located", false, function(m)
    getgenv().espplayers = m
    local a2 = {textsize = 15}
    local a3 = Instance.new("BillboardGui")
    local a4 = Instance.new("TextLabel", a3)
    a3.Name = "natsuesp"
    a3.ResetOnSpawn = false
    a3.AlwaysOnTop = true
    a3.LightInfluence = 0
    a3.Size = UDim2.new(0, 10, 0, 10)
    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    a4.Text = ""
    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
    a4.BorderSizePixel = 4
    a4.BorderSizePixel = 0
    a4.Font = "GothamMedium"
    a4.TextSize = a2.textsize

    spawn(function()
        while getgenv().espplayers do
            wait()
            pcall(function()
                for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                    if player ~= game:GetService("Players").LocalPlayer and player.Character and player.Character.Head and player.Character.Head:FindFirstChild("natsuesp") == nil then
                        a4.Text = "{" .. player.Name .. "}"
                        a4.TextColor3 = player.Character["UpperTorso"].Color
                        a3:Clone().Parent = player.Character.Head
                    end
                end
            end)
            wait(0.5)
        end
    end)

    if not m then
        pcall(function()
            for _ = 1, 10 do
                for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                    local espText = player.Character and player.Character.Head and player.Character.Head:FindFirstChild("natsuesp")
                    if espText then
                        espText:Destroy()
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

getgenv().crittersesp = false
tab1:Toggle("Critters Esp(Mob)", "This option will show you where all the Critters are located", false, function(m)
    getgenv().crittersesp = m
    if m then
        spawn(function()
            while getgenv().crittersesp do
                wait()
                pcall(function()
                    for _, c in pairs(game.workspace.Critters:GetChildren()) do
                        if not c:FindFirstChildWhichIsA("BillboardGui") then
                            local a3 = Instance.new("BillboardGui", c)
                            local a4 = Instance.new("TextLabel", a3)
                            a3.Name = c.Name
                            a3.ResetOnSpawn = false
                            a3.AlwaysOnTop = true
                            a3.LightInfluence = 0
                            a3.Size = UDim2.new(0, 10, 0, 10)
                            a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            a4.Text = c.Name
                            a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                            a4.BorderSizePixel = 4
                            a4.BorderColor3 = Color3.new(0, 0, 0)
                            a4.BorderSizePixel = 0
                            a4.Font = "GothamMedium"
                            a4.TextSize = 15
                            a4.TextColor3 = Color3.fromRGB(0, 0, 0)
                        end
                    end
                end)
                wait(5)
            end
        end)
    else
        pcall(function()
            for _ = 1, 10 do
                for _, c in pairs(game.workspace.Critters:GetChildren()) do
                    local billboardGui = c:FindFirstChildWhichIsA("BillboardGui")
                    if billboardGui then
                        billboardGui:Destroy()
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

getgenv().ironesp = false
tab1:Toggle("Iron Esp", "This option will show you where all the Iron are located", false, function(m)
    getgenv().ironesp = m
    if m then
        spawn(function()
            while getgenv().ironesp do
                wait()
                pcall(function()
                    for _, c in pairs(game.workspace.Resources:GetChildren()) do
                        if c.Name:find("Iron") then
                            if not c:FindFirstChildWhichIsA("BillboardGui") then
                                local a3 = Instance.new("BillboardGui", c)
                                local a4 = Instance.new("TextLabel", a3)
                                a3.Name = c.Name
                                a3.ResetOnSpawn = false
                                a3.AlwaysOnTop = true
                                a3.LightInfluence = 0
                                a3.Size = UDim2.new(0, 10, 0, 10)
                                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                a4.Text = c.Name
                                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                a4.BorderSizePixel = 4
                                a4.BorderColor3 = Color3.new(92, 64, 51)
                                a4.BorderSizePixel = 0
                                a4.Font = "GothamMedium"
                                a4.TextSize = 15
                                a4.TextColor3 = Color3.fromRGB(92, 64, 51)
                            end
                        end
                    end
                end)
                wait(0.5)
            end
        end)
    else
        pcall(function()
            for _ = 1, 10 do
                for _, c in pairs(game.workspace.Resources:GetChildren()) do
                    if c.Name:find("Iron") then
                        local billboardGui = c:FindFirstChildWhichIsA("BillboardGui")
                        if billboardGui then
                            billboardGui:Destroy()
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

getgenv().goldesp = false
tab1:Toggle("Gold Esp", "This option will show you where all the GoldNodes are located", false, function(m)
    getgenv().goldesp = m
    if m then
        spawn(function()
            while getgenv().goldesp do
                wait()
                pcall(function()
                    for _, c in pairs(game.workspace.Resources:GetChildren()) do
                        if c.Name:find("Gold") then
                            if not c:FindFirstChildWhichIsA("BillboardGui") then
                                local a3 = Instance.new("BillboardGui", c)
                                local a4 = Instance.new("TextLabel", a3)
                                a3.Name = c.Name
                                a3.ResetOnSpawn = false
                                a3.AlwaysOnTop = true
                                a3.LightInfluence = 0
                                a3.Size = UDim2.new(0, 10, 0, 10)
                                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                a4.Text = c.Name
                                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                a4.BorderSizePixel = 4
                                a4.BorderColor3 = Color3.new(249, 214, 46)
                                a4.BorderSizePixel = 0
                                a4.Font = "GothamMedium"
                                a4.TextSize = 15
                                a4.TextColor3 = Color3.fromRGB(249, 214, 46)
                            end
                        end
                    end
                end)
                wait(0.5)
            end
        end)
    else
        pcall(function()
            for _ = 1, 10 do
                for _, c in pairs(game.workspace.Resources:GetChildren()) do
                    if c.Name:find("Gold") then
                        local billboardGui = c:FindFirstChildWhichIsA("BillboardGui")
                        if billboardGui then
                            billboardGui:Destroy()
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

getgenv().crystalesp = false
tab1:Toggle("Crystal Esp", "This option will show you where all the CrystalNodes are located", false, function(m)
    getgenv().crystalesp = m
    if m then
        spawn(function()
            while getgenv().crystalesp do
                wait()
                pcall(function()
                    for _, c in pairs(game.workspace.Resources:GetChildren()) do
                        if c.Name:find("Crystal") then
                            if not c:FindFirstChildWhichIsA("BillboardGui") then
                                local a3 = Instance.new("BillboardGui", c)
                                local a4 = Instance.new("TextLabel", a3)
                                a3.Name = c.Name
                                a3.ResetOnSpawn = false
                                a3.AlwaysOnTop = true
                                a3.LightInfluence = 0
                                a3.Size = UDim2.new(0, 10, 0, 10)
                                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                a4.Text = c.Name
                                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                a4.BorderSizePixel = 4
                                a4.BorderColor3 = Color3.new(70, 206, 235)
                                a4.BorderSizePixel = 0
                                a4.Font = "GothamMedium"
                                a4.TextSize = 15
                                a4.TextColor3 = Color3.fromRGB(70, 206, 235)
                            end
                        end
                    end
                end)
                wait(0.5)
            end
        end)
    else
        pcall(function()
            for _ = 1, 10 do
                for _, c in pairs(game.workspace.Resources:GetChildren()) do
                    if c.Name:find("Crystal") then
                        local billboardGui = c:FindFirstChildWhichIsA("BillboardGui")
                        if billboardGui then
                            billboardGui:Destroy()
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)


getgenv().godenmobesp = false
tab1:Toggle("Golden Mob Esp", "This option will show you where all the GoldeCritters are located", false, function(m)
    getgenv().godenmobesp = m
    if m then
        spawn(function()
            while getgenv().godenmobesp do
                wait()
                pcall(function()
                    for _, c in pairs(game.workspace.Critters:GetChildren()) do
                        if c.Name:find("Gold") then
                            if not c:FindFirstChildWhichIsA("BillboardGui") then
                                local a3 = Instance.new("BillboardGui", c)
                                local a4 = Instance.new("TextLabel", a3)
                                a3.Name = c.Name
                                a3.ResetOnSpawn = false
                                a3.AlwaysOnTop = true
                                a3.LightInfluence = 0
                                a3.Size = UDim2.new(0, 10, 0, 10)
                                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                a4.Text = c.Name
                                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                a4.BorderSizePixel = 4
                                a4.BorderColor3 = Color3.new(249, 214, 46)
                                a4.BorderSizePixel = 0
                                a4.Font = "GothamMedium"
                                a4.TextSize = 15
                                a4.TextColor3 = Color3.fromRGB(249, 214, 46)
                            end
                        end
                    end
                end)
                wait(0.5)
            end
        end)
    else
        pcall(function()
            for _ = 1, 10 do
                for _, c in pairs(game.workspace.Critters:GetChildren()) do
                    if c.Name:find("Gold") then
                        local billboardGui = c:FindFirstChildWhichIsA("BillboardGui")
                        if billboardGui then
                            billboardGui:Destroy()
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

getgenv().aduriteesp = false
tab1:Toggle("Adurite Esp", "This option will show you where all the Adurite are located", false, function(m)
    getgenv().aduriteesp = m
    if m then
        spawn(function()
            while getgenv().aduriteesp do
                wait()
                pcall(function()
                    for _, c in pairs(game.workspace.Resources:GetChildren()) do
                        if c.Name:find("Adurite") then
                            if not c:FindFirstChildWhichIsA("BillboardGui") then
                                local a3 = Instance.new("BillboardGui", c)
                                local a4 = Instance.new("TextLabel", a3)
                                a3.Name = c.Name
                                a3.ResetOnSpawn = false
                                a3.AlwaysOnTop = true
                                a3.LightInfluence = 0
                                a3.Size = UDim2.new(0, 10, 0, 10)
                                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                a4.Text = c.Name
                                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                a4.BorderSizePixel = 4
                                a4.BorderColor3 = Color3.new(255, 10, 30)
                                a4.BorderSizePixel = 0
                                a4.Font = "GothamMedium"
                                a4.TextSize = 15
                                a4.TextColor3 = Color3.fromRGB(255, 10, 30)
                            end
                        end
                    end
                end)
                wait(0.5)
            end
        end)
    else
        pcall(function()
            for _ = 1, 10 do
                for _, c in pairs(game.workspace.Resources:GetChildren()) do
                    if c.Name:find("Adurite") then
                        local billboardGui = c:FindFirstChildWhichIsA("BillboardGui")
                        if billboardGui then
                            billboardGui:Destroy()
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local tab2 = win:Tab("AutoPickup", "http://www.roblox.com/asset/?id=6023426915") 
getgenv().autopickupitems = false
tab2:Toggle("Auto PickUp Items", "Description", false, function(m)
    getgenv().autopickupitems = m
    if m then
        spawn(function()
            while autopickupitems do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if (n.Position - c.Position).Magnitude < 150 then
                                game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if (n.Position - c.Position).Magnitude < 150 then
                                game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupGold = false
tab2:Toggle("Auto PickUp Gold", "Description", false, function(m)
    getgenv().autopickupGold = m
    if m then
        spawn(function()
            while autopickupGold do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Gold" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Gold" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupCrystal = false
tab2:Toggle("Auto PickUp Crystal", "Description", false, function(m)
    getgenv().autopickupCrystal = m
    if m then
        spawn(function()
            while autopickupCrystal do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Crystal Chunk" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Crystal Chunk" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupRawGold = false
tab2:Toggle("Auto PickUp Raw Gold", "Description", false, function(m)
    getgenv().autopickupRawGold = m
    if m then
        spawn(function()
            while autopickupRawGold do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Raw Gold" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Raw Gold" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupEssence = false
tab2:Toggle("Auto PickUp XP(Essence)", "Description", false, function(m)
    getgenv().autopickupEssence = m
    if m then
        spawn(function()
            while autopickupEssence do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") then
                            if c:IsA("BasePart") or c:IsA("UnionOperation") then
                                if c.Name == "Essence" then
                                    if (n.Position - c.Position).Magnitude < 150 then
                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                    end
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") then
                            if c:IsA("BasePart") or c:IsA("UnionOperation") then
                                if c.Name == "Essence" then
                                    if (n.Position - c.Position).Magnitude < 150 then
                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupCoin = false
tab2:Toggle("Auto PickUp Coin", "Description", false, function(m)
    getgenv().autopickupCoin = m
    if m then
        spawn(function()
            while autopickupCoin do
                wait()
                pcall(function()
                    local p = game:GetService("Players")
                    local n = p.LocalPlayer.Character.HumanoidRootPart
                    local q = game:GetService("Workspace")
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(q:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Coin" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").ItemDrops:GetChildren()) do
                        if c.Name:find("Coin") then
                            local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                            if (n.Position - c.Position).Magnitude < 150 then
                                game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Coin" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupBloodfruit = false
tab2:Toggle("Auto PickUp Bloodfruit", "Description", false, function(m)
    getgenv().autopickupBloodfruit = m
    if m then
        spawn(function()
            while autopickupBloodfruit do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Bloodfruit" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Bloodfruit" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickuplog = false
tab2:Toggle("Auto PickUp Log", "Description", false, function(m)
    getgenv().autopickuplog = m
    if m then
        spawn(function()
            while autopickuplog do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Log" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Log" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupwood = false
tab2:Toggle("Auto PickUp Wood", "Description", false, function(m)
    getgenv().autopickupwood = m
    if m then
        spawn(function()
            while autopickupwood do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Wood" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Wood" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupleaves = false
tab2:Toggle("Auto PickUp Leaves", "Description", false, function(m)
    getgenv().autopickupleaves = m
    if m then
        spawn(function()
            while autopickupleaves do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Leaves" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Leaves" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupcoal = false
tab2:Toggle("Auto PickUp Coal", "Description", false, function(m)
    getgenv().autopickupcoal = m
    if m then
        spawn(function()
            while autopickupcoal do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Coal" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Coal" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupStone = false
tab2:Toggle("Auto PickUp Stone", "Description", false, function(m)
    getgenv().autopickupStone = m
    if m then
        spawn(function()
            while autopickupStone do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Stone" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Stone" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupIron = false
tab2:Toggle("Auto PickUp Iron", "Description", false, function(m)
    getgenv().autopickupIron = m
    if m then
        spawn(function()
            while autopickupIron do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Iron" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for _, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Iron" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupSteel = false
tab2:Toggle("Auto PickUp Steel", "Despcripton", false, function(m)
    getgenv().autopickupSteel = m
    if m then
        spawn(function()
            while autopickupSteel do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Steel" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOperation")) then
                            if c.Name == "Steel" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupAdurite = false
tab2:Toggle("Auto PickUp Adurite", "Description", false, function(m)
    getgenv().autopickupAdurite = m
    if m then
        spawn(function()
            while autopickupAdurite do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Adurite" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Adurite" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupEmerald = false
tab2:Toggle("Auto PickUp Emerald", "Description", false, function(m)
    getgenv().autopickupEmerald = m
    if m then
        spawn(function()
            while autopickupEmerald do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Emerald" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Emerald" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupMagnetite = false
tab2:Toggle("Auto PickUp Magnetite", "Automatically picks up magnetite.", false, function(m)
    getgenv().autopickupMagnetite = m
    if m then
        spawn(function()
            while autopickupMagnetite do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Magnetite" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Magnetite" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupPinkDiamond = false
tab2:Toggle("Auto PickUp Pink Diamond", "Automatically picks up pink diamonds.", false, function(m)
    getgenv().autopickupPinkDiamond = m
    if m then
        spawn(function()
            while autopickupPinkDiamond do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Pink Diamond" or c.Name:find("Pink") then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Pink Diamond" or c.Name:find("Pink") then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

getgenv().autopickupSpiritKey = false
tab2:Toggle("Auto PickUp Spirit Key", "Automatically picks up spirit keys.", false, function(m)
    getgenv().autopickupSpiritKey = m
    if m then
        spawn(function()
            while autopickupSpiritKey do
                wait()
                pcall(function()
                    local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local o = game:GetService("ReplicatedStorage")
                    for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Spirit Key" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                    for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                        if c:FindFirstChild("Pickup") and (c:IsA("BasePart") or c:IsA("UnionOpreation")) then
                            if c.Name == "Spirit Key" then
                                if (n.Position - c.Position).Magnitude < 150 then
                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)

local tab3 = win:Tab("Tp-Pos", "http://www.roblox.com/asset/?id=6023426915")

local s
tab3:Button("Select Position 1 (2)", "ClickForSetTpPosition", function() -- Description is the text you'll see when you click on the arrow at the right of the button
    s = nil
    wait()
    s = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 1") -- Example of a notification on the GUI (optional)
end)

local t
tab3:Button("Select Position 2 (2)", "ClickForSetTpPosition", function() -- Description is the text you'll see when you click on the arrow at the right of the button
    t = nil
    wait()
    t = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 2") -- Example of a notification on the GUI (optional)
end)

getgenv().autotpselectedpos1 = false
tab3:Toggle("Auto Teleport Selected Position (2)", "It will teleport through the positions you set", false, function(m)
    getgenv().autotpselectedpos1 = m
    if m then
        spawn(function()
            while autotpselectedpos1 do
                wait()
                pcall(function()
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = s
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    task.wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = t
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    task.wait(w)
                end)
            end
        end)
    end
end)

tab3:Line()

local y
tab3:Button("Select Position 1 (5)", "ClickForSetTpPosition", function()
    y = nil
    wait()
    y = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 1")
end)

local z
tab3:Button("Select Position 2 (5)", "ClickForSetTpPosition", function()
    z = nil
    wait()
    z = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 2")
end)

local A
tab3:Button("Select Position 3 (5)", "ClickForSetTpPosition", function()
    A = nil
    wait()
    A = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 3")
end)

local B
tab3:Button("Select Position 4 (5)", "ClickForSetTpPosition", function()
    B = nil
    wait()
    B = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 4")
end)

local C
tab3:Button("Select Position 5 (5)", "ClickForSetTpPosition", function()
    C = nil
    wait()
    C = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 5")
end)

getgenv().autotpselectedposv2 = false
tab3:Toggle("Auto Teleport Selected Position (5)", "It will teleport through the positions you set", false, function(m)
    getgenv().autotpselectedposv2 = m
    if m then
        spawn(function()
            while autotpselectedposv2 do
                wait()
                pcall(function()
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = y
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = z
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = A
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = B
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = C
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                end)
            end
        end)
    end
end)

tab3:Line()

local D
tab3:Button("Select Position 1 (10)", "ClickForSetTpPosition", function()
    D = nil
    wait()
    D = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 1")
end)

local E
tab3:Button("Select Position 2 (10)", "ClickForSetTpPosition", function()
    E = nil
    wait()
    E = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 2")
end)

local F
tab3:Button("Select Position 3 (10)", "ClickForSetTpPosition", function()
    F = nil
    wait()
    F = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 3")
end)

local G
tab3:Button("Select Position 4 (10)", "ClickForSetTpPosition", function()
    G = nil
    wait()
    G = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 4")
end)

local H
tab3:Button("Select Position 5 (10)", "ClickForSetTpPosition", function()
    H = nil
    wait()
    H = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 5")
end)

local I
tab3:Button("Select Position 6 (10)", "ClickForSetTpPosition", function()
    I = nil
    wait()
    I = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 6")
end)

local J
tab3:Button("Select Position 7 (10)", "ClickForSetTpPosition", function()
    J = nil
    wait()
    J = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 7")
end)

local K
tab3:Button("Select Position 8 (10)", "ClickForSetTpPosition", function()
    K = nil
    wait()
    K = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 8")
end)

local L
tab3:Button("Select Position 9 (10)", "ClickForSetTpPosition", function()
    L = nil
    wait()
    L = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 9")
end)

local M
tab3:Button("Select Position 10 (10)", "ClickForSetTpPosition", function()
    M = nil
    wait()
    M = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    lib:Notification("The Position has been selected", "Position 10")
end)

getgenv().autotpselectedposv3 = false
tab3:Toggle("Auto Teleport Selected Position (10)", "It will teleport through the positions you set", false, function(m)
    getgenv().autotpselectedposv3 = m
    if m then
        spawn(function()
            while autotpselectedposv3 do
                wait()
                pcall(function()
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = D
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = E
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = F
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = G
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = H
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = I
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = J
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = K
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = L
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                    local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local u = M
                    local v = 10
                    local w = math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                    local x = game:GetService("TweenService"):Create(n, TweenInfo.new(tonumber(w),
                        Enum.EasingStyle.Linear), {
                        CFrame = u
                    })
                    x:Play()
                    wait(w)
                end)
            end
        end)
    end
end)

local tab4 = win:Tab("Farming", "http://www.roblox.com/asset/?id=6023426915")

local PlantRange
local PlantDistance = tab4:Slider("Select Distance for AutoPlant", "With this you can establish a distance", 5, 38, 16, function(tra)
    PlantRange = tra
end)

local FruitPlant
local FruitDrop = tab4:Dropdown("Select Fruit", {"Bloodfruit", "Pumpkin", "Strangefruit", "Oddberry", "Lemon", "Apple", "Coconut", "Jelly", "Sunfruit", "Bluefruit", "Berry", "Orange", "Cloudberry", "Banana", "Barley", "Corn", "Prickly Pear", "Strawberry"}, function(tpa)
    FruitPlant = tpa
end)

getgenv().autofarmplant = false
tab4:Toggle("AutoPlant", "This will plant the selected fruit in the plant boxes around the character according to the established distance", false, function(m)
    getgenv().autofarmplant = m
    if m then
        spawn(function()
            while autofarmplant do
                wait()
                pcall(function()
                    spawn(function()
                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                        for b, c in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                            --if not c:FindFirstChild(FruitPlant) then
                                if (n.Position - c:FindFirstChildWhichIsA("BasePart").Position).Magnitude < PlantRange then
                                    local T = {
                                        [1] = c,
                                        [2] = FruitPlant
                                    }                                           
                                    game:GetService("ReplicatedStorage").Events.InteractStructure:FireServer(unpack(T))
                                    wait(0.1)
                                end
                            --end
                        end
                    end)
                end)
            end
        end)
    end
end)

local HarvestFruit
local HarvestDistance = tab4:Slider("Select Distance for AutoHarvest", "With this you can establish a distance", 5, 100, 17, function(tha)
    HarvestFruit = tha
end)

getgenv().autoharvest = false
tab4:Toggle("AutoHarvest", "This will harvest the selected fruit in the plant boxes around the character according to the established distance", false, function(m) 
    getgenv().autoharvest = m
    if m then
        spawn(function()
            while autoharvest do
                wait()
                pcall(function()
                    spawn(function()
                        local player = game.Players.LocalPlayer
                        local character = player and player.Character
                        local n = character and character:FindFirstChild("HumanoidRootPart")

                        if n then
                            for _, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                if c:FindFirstChild("Pickup") and c:IsA("Model") then
                                    local basePart = c:FindFirstChildWhichIsA("BasePart")
                                    if basePart and basePart.Position and n.Position then
                                        local distance = (n.Position - basePart.Position).Magnitude
                                        if distance < HarvestFruit then
                                            game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end)
            end
        end)
    end
end)



local tab5 = win:Tab("Autogold", "http://www.roblox.com/asset/?id=6023426915")
