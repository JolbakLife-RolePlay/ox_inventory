function server.hasGroup(inv, group)
	if type(group) == 'table' then
		for name, rank in pairs(group) do
			local groupRank = inv.player.groups[name]
			if groupRank and groupRank >= (rank or 0) then
				return name, groupRank
			end
		end
	else
		local groupRank = inv.player.groups[group]
		if groupRank then
			return group, groupRank
		end
	end
end

function server.setPlayerData(player)
	if not player.groups then
		shared.warning(("server.setPlayerData did not receive any groups for '%s'"):format(player?.name or GetPlayerName(player)))
	end

	return {
		source = player.source,
		name = player.name,
		groups = player.groups or {},
		sex = player.sex,
		dateofbirth = player.dateofbirth,
	}
end

if shared.framework == 'esx' then

	local ESX
  
	SetTimeout(1500, function()
		ESX = exports['JLRP-Framework']:GetFrameworkObjects()

		if ESX.CreatePickup then
			error('this version of ox_inventory requires JLRP-Framework')
		end

		server.UseItem = ESX.UseItem
		server.GetPlayerFromId = ESX.GetPlayerFromId
		server.UsableItemsCallbacks = ESX.GetUsableItems()

		for i, xPlayer, #ESX.GetPlayers() do
			exports.ox_inventory:setPlayerInventory(xPlayer, xPlayer?.getInventory())
		end
	end)

	-- Accounts that need to be synced with physical items
	server.accounts = {
		money = 0,
		black_money = 0,
	}

	function server.setPlayerData(player)
    local job = player.getJob()
		local groups = {
			[job.name] = job.grade
		}

		return {
			source = player.source,
			name = player.getName(),
			groups = groups,
			sex = player.get('sex'),
			dateofbirth = player.get('dateofbirth'),
		}
	end
end
