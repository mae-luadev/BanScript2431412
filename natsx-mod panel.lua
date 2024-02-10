local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt"))()
_G.closeBind = Enum.KeyCode.C

local win = lib:Window("Mae-Test", "Rank Creator", Color3.fromRGB(255, 110, 48), _G.closeBind)
local tab1 = win:Tab("Esp", "http://www.roblox.com/asset/?id=6023426915")

getgenv().espplayers = false
tab1:Toggle("Player Esp", "This option will show you where all the players are", false, function(m)
    getgenv().espplayers = m
    local a2 = {textsize = 15}
    local a3 = Instance.new("BillboardGui")
    local a4 = Instance.new("TextLabel", a3)
    a3.Name = "nastu esp"
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
                    if player ~= game:GetService("Players").LocalPlayer and player.Character and player.Character.Head and player.Character.Head:FindFirstChild("nastu esp") == nil then
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
                    local espText = player.Character and player.Character.Head and player.Character.Head:FindFirstChild("nastu esp")
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

local tab2 = win:Tab("Esp", "http://www.roblox.com/asset/?id=6023426915") 
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

local tab4 = win:Tab("Globals", "http://www.roblox.com/asset/?id=6023426915")
local tab5 = win:Tab("Autogold", "http://www.roblox.com/asset/?id=6023426915")
