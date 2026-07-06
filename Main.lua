local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Tower Script",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by Andria",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("Main", nil)

-- Button 1: Code Door
MainTab:CreateButton({
   Name = "Unlock Code Door",
   Callback = function()
      local board = workspace.Tower.CodeDoor.Board
      local targets = {"1", "2", "3", "4"}

      for _, name in ipairs(targets) do
          local numObj = board.Numbers:FindFirstChild(name)
          if numObj then
              local detector = numObj:FindFirstChildWhichIsA("ClickDetector")
              if detector then fireclickdetector(detector) end
          end
      end

      local enterBtn = board.Other:FindFirstChild("Enter")
      if enterBtn then
          local detector = enterBtn:FindFirstChildWhichIsA("ClickDetector")
          if detector then fireclickdetector(detector) end
      end
   end,
})

-- Button 2: Teleport to Index 52 (Fixed Gap Clip)
MainTab:CreateButton({
   Name = "TP to Target Part (52)",
   Callback = function()
      local target = workspace.Tower:GetChildren()[52]
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local hrp = character:FindFirstChild("HumanoidRootPart")

      if target and hrp then
         -- Pushes you safely out of the wall gap on all axes
         if target:IsA("BasePart") then
            hrp.CFrame = target.CFrame + Vector3.new(5, 5, 5)
         elseif target:IsA("Model") and target.PrimaryPart then
            hrp.CFrame = target.PrimaryPart.CFrame + Vector3.new(5, 5, 5)
         else
            local part = target:FindFirstChildWhichIsA("BasePart", true)
            if part then hrp.CFrame = part.CFrame + Vector3.new(5, 5, 5) end
         end
      end
   end,
})

-- Button 3: Teleport to Finish Area Index 15
MainTab:CreateButton({
   Name = "TP to Finish Area (15)",
   Callback = function()
      local target = workspace.Tower.FinishArea:GetChildren()[15]
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local hrp = character:FindFirstChild("HumanoidRootPart")

      if target and hrp then
         if target:IsA("BasePart") then
            hrp.CFrame = target.CFrame + Vector3.new(0, 3, 0)
         elseif target:IsA("Model") and target.PrimaryPart then
            hrp.CFrame = target.PrimaryPart.CFrame + Vector3.new(0, 3, 0)
         else
            local part = target:FindFirstChildWhichIsA("BasePart", true)
            if part then hrp.CFrame = part.CFrame + Vector3.new(0, 3, 0) end
         end
      end
   end,
})

-- Button 4: Teleport to Boombox
MainTab:CreateButton({
   Name = "TP to Boombox",
   Callback = function()
      local target = workspace.Tower.GearGiver:FindFirstChild("Boombox")
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local hrp = character:FindFirstChild("HumanoidRootPart")

      if target and hrp then
         if target:IsA("BasePart") then
            hrp.CFrame = target.CFrame + Vector3.new(0, 3, 0)
         elseif target:IsA("Model") and target.PrimaryPart then
            hrp.CFrame = target.PrimaryPart.CFrame + Vector3.new(0, 3, 0)
         else
            local part = target:FindFirstChildWhichIsA("BasePart", true)
            if part then hrp.CFrame = part.CFrame + Vector3.new(0, 3, 0) end
         end
      end
   end,
})

