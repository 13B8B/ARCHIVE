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

function module:StartQuest()  
	if QuestSelected == "1 [Level 0]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",1}})
	elseif QuestSelected == "2 [Level 10]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",2}})
	elseif QuestSelected == "3 [Level 20]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",3}})
	elseif QuestSelected == "4 [Level 35]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",4}})
	elseif QuestSelected == "5 [Level 50]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",5}})
	elseif QuestSelected == "6 [Level 60]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",6}})
	elseif QuestSelected == "7 [Level 75]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",7}})
	elseif QuestSelected == "8 [Level 90]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",8}})
	elseif QuestSelected == "9 [Level 100]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",9}})
	elseif QuestSelected == "10 [Level 120]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",10}})
	elseif QuestSelected == "11 [Level 135]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",11}})
	elseif QuestSelected == "12 [Level 150]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",12}})
	elseif QuestSelected == "13 [Level 170]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",13}})
	elseif QuestSelected == "14 [Level 185]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",14}})
	elseif QuestSelected == "15 [Level 200]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",15}})
	elseif QuestSelected == "16 [Level 215]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",16}})
	elseif QuestSelected == "17 [Level 230]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",17}})
	elseif QuestSelected == "18 [Level 250]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",18}})
	elseif QuestSelected == "19 [Level 275]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",19}})
	elseif QuestSelected == "20 [Level 305]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",20}})
	elseif QuestSelected == "21 [Level 330]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",21}})
	elseif QuestSelected == "22 [Level 350]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",22}})
	elseif QuestSelected == "23 [Level 380]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",23}})
	elseif QuestSelected == "24 [Level 400]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",24}})
	elseif QuestSelected == "25 [Level 425]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",25}})
	elseif QuestSelected == "26 [Level 460]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",26}})
	elseif QuestSelected == "27 [Level 490]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",27}})
	elseif QuestSelected == "28 [Level 530]" then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer({{utf8.char(3),"GetQuest",28}})
	end
end

function module:TeleportQuest()
	if c.Text == "30/960" or c.Text == "1/1" or c.Text == "2/2" or c.Text == "3/3" or c.Text == "4/4" or c.Text == "5/5" or c.Text == "6/6" or c.Text == "7/7" or c.Text == "8/8" then
		if QuestSelected == "1 [Level 0]" then
			TP(Vector3.new(3475.2, 144.373, 1881.89), .1)
		elseif QuestSelected == "2 [Level 10]" then
			TP(Vector3.new(3544, 149.472, 2199.56), .1)
		elseif QuestSelected == "3 [Level 20]" then
			TP(Vector3.new(3426.65, 146.461, 2366.03), .1)
		elseif QuestSelected == "4 [Level 35]" then
			TP(Vector3.new(1815.31, 140.601, 549.418), .1)
		elseif QuestSelected == "5 [Level 50]" then
			TP(Vector3.new(1687.64, 139.597, 685.782), .1)
		elseif QuestSelected == "6 [Level 60]" then
			TP(Vector3.new(1620.26, 141.467, 884.986), .1)
		elseif QuestSelected == "7 [Level 75]" then
			TP(Vector3.new(2962.04, 146.118, -644.435), .1)
		elseif QuestSelected == "8 [Level 90]" then
			TP(Vector3.new(2960.18, 166.821, -667.359), .1)
		elseif QuestSelected == "9 [Level 100]" then
			TP(Vector3.new(3052.77, 146.057, -632.053), .1)
		elseif QuestSelected == "10 [Level 120]" then
			TP(Vector3.new(4944.9, 141.959, 168.555), .1)
		elseif QuestSelected == "11 [Level 135]" then
			TP(Vector3.new(5316.66, 142.756, 142.096), .1)
		elseif QuestSelected == "12 [Level 150]" then
			TP(Vector3.new(5438.38, 323.853, -47.9558), .1)
		elseif QuestSelected == "13 [Level 170]" then
			TP(Vector3.new(5734.63, 191.985, 2193.21), .1)
		elseif QuestSelected == "14 [Level 185]" then
			TP(Vector3.new(5644.32, 182.105, 2381.23), .1)
		elseif QuestSelected == "15 [Level 200]" then
			TP(Vector3.new(5814.58, 184.56, 2463.27), .1)
		elseif QuestSelected == "16 [Level 215]" then
			TP(Vector3.new(1363.51, 127.042, 2699.96), .1)
		elseif QuestSelected == "17 [Level 230]" then
			TP(Vector3.new(1336.55, 127.167, 2673.5), .1)
		elseif QuestSelected == "18 [Level 250]" then
			TP(Vector3.new(1388.33, 127.181, 2671.42), .1)
		elseif QuestSelected == "19 [Level 275]" then
			TP(Vector3.new(-580.926, 147.454, 580.688), .1)
		elseif QuestSelected == "20 [Level 305]" then
			TP(Vector3.new(-1221.38, 158.521, 244.48), .1)
		elseif QuestSelected == "21 [Level 330]" then
			TP(Vector3.new(-1008.66, 155.487, 21.2051), .1)
		elseif QuestSelected == "22 [Level 350]" then
			TP(Vector3.new(-870.525, 148.311, 208.997), .1)
		elseif QuestSelected == "23 [Level 380]" then
			TP(Vector3.new(-839.468, 148.393, 464.856), .1)
		elseif QuestSelected == "24 [Level 400]" then
			TP(Vector3.new(5683.86, 142.104, -3402.67), .1)
		elseif QuestSelected == "25 [Level 425]" then
			TP(Vector3.new(5796.1, 143.321, -3685.17), .1)
		elseif QuestSelected == "26 [Level 460]" then
			TP(Vector3.new(5908.58, 143.785, -3291.94), .1)
		elseif QuestSelected == "27 [Level 490]" then
			TP(Vector3.new(6192.84, 143.73, -3421.64), .1)
		elseif QuestSelected == "28 [Level 530]" then
			TP(Vector3.new(5796.09, 143.271, -3685.17), .1)
		end
	end
end

return module
