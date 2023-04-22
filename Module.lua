local module = {}

-- Function to find an object in the workspace or player's backpack
local function findObject(name)
	for _, child in ipairs(game.Workspace:GetDescendants()) do
		if child.Name == name then
			return child.Parent, "Workspace"
		end
	end
	for _, player in ipairs(game.Players:GetPlayers()) do
		for _, item in ipairs(player.Backpack:GetChildren()) do
			if item.Name == name then
				return item.Parent.Parent, "Players"
			end
		end
	end
	return nil
end

-- Function to play an emote
function module:emote(emoteName)
	-- Check if the emote name is provided
	if emoteName then
	 	-- Get the Remotes object from ReplicatedStorage
		local remotes = game:GetService("ReplicatedStorage").Remotes
		-- Check if the Remotes object and PlayEmote remote are available
		if remotes and remotes.Misc and remotes.Misc.PlayEmote then
		  -- Fire the PlayEmote remote with the emote name
			remotes.Misc.PlayEmote:Fire(emoteName)
		end
	end
end

-- Function to enable/disable X-ray
function module:xray(enable)
	-- Local function to set the transparency of parts
	local function setTransparency(obj)
		obj.LocalTransparencyModifier = enable and 0.8 or 0
	end
	-- Local function to traverse the descendants of a parent object
	local function traverseDescendants(parent)
		for _, child in ipairs(parent:GetChildren()) do
			if child:IsA("BasePart") then
				setTransparency(child)
			end
			if not child:IsA("Humanoid") then
				traverseDescendants(child)
			end
		end
	end
	-- Traverse the descendants of the workspace to enable/disable X-ray
	traverseDescendants(game.Workspace)
end

return module
