task.spawn(function()
    while getgenv().FastAttack do
        pcall(function()
            local char = player.Character
            if not char then return end

            local tool = char:FindFirstChildOfClass("Tool")
            if not tool then return end

            local cam = workspace.CurrentCamera
            local pos = cam.ViewportSize

            -- giả lập click chuột trái liên tục
            vIM:SendMouseButtonEvent(pos.X/2, pos.Y/2, 0, true, game, 0)
            vIM:SendMouseButtonEvent(pos.X/2, pos.Y/2, 0, false, game, 0)
        end)

        task.wait(0.05) -- tốc độ (càng thấp càng nhanh)
    end
end)
