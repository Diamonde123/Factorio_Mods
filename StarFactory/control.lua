script.on_event(defines.events.on_built_entity, function(event)
	local ent = event.created_entity
	local pos = ent.position
	local surface = event.created_entity.surface
	local item= event.item or nil

	local player  = game.players[event.player_index]
	if ent.name == "restored-photon-cannon"then
		local en_dist=false
		for _,entity in ipairs(surface.find_entities({{pos.x-3,pos.y-3.5}, {pos.x+3,pos.y+3}})) do
			if entity.name == "protoss-energy-distributor" then
				en_dist = true
			end
		end
		if	en_dist==false then
			ent.destroy()
			player.print("You need an energy distributor nearby to place it")
			if item ~= nil then
			player.insert({name=item.name,count=1})
			end

			for _,entity in ipairs(surface.find_entities({{pos.x-0.5,pos.y-0.5}, {pos.x+0.5,pos.y+0.5}})) do
				if entity.name == "laser-turret-remnants" then
					entity.destroy()
			end
		end
		end
	end
end)