local npc = script.Parent
local attackRange = 8
local attackDamage = 10
local attackCooldown = 1.2
local canAttack = true

local function getNearestTarget()
	local nearestTarget = nil
	local shortestDistance = math.huge

	for _, obj in pairs(workspace:GetChildren()) do
		if obj:FindFirstChild("Humanoid") and obj ~= npc then
			local root = obj:FindFirstChild("HumanoidRootPart")
			local npcRoot = npc:FindFirstChild("HumanoidRootPart")

			if root and npcRoot and obj.Humanoid.Health > 0 then
				local distance = (root.Position - npcRoot.Position).Magnitude
				if distance < shortestDistance then
					shortestDistance = distance
					nearestTarget = obj
				end
			end
		end
	end

	return nearestTarget, shortestDistance
end

local function attackTarget(target)
	if not canAttack then return end
	local humanoid = target:FindFirstChild("Humanoid")
	if humanoid then
		canAttack = false
		humanoid:TakeDamage(attackDamage)
		print("NPC attacked:", target.Name)
		task.wait(attackCooldown)
		canAttack = true
	end
end

while task.wait(0.2) do
	local target, distance = getNearestTarget()
	if target and distance <= attackRange then
		attackTarget(target)
	end
end
