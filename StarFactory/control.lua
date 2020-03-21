require("mod-gui")

DISTRACTOR_NEEDED=1
VESPEN_NEEDED=50
CRYSTAL_NEEDED=75
LANDMINE_NEEDED=4

TICKS_PER_SCARAB=1400


local PACK_NAMES={
			{"sf-protoss-logistic-science-pack","logistic-science-pack"},
			{"sf-protoss-chemical-science-pack","chemical-science-pack"},
			{"sf-protoss-military-science-pack","military-science-pack"},
			{"sf-protoss-production-science-pack","production-science-pack"},
			{"sf-protoss-utility-science-pack","utility-science-pack"},
		}

local function add_scarabey(number)
  if sf_on_tick_events[number]["tempticks"] < 1 then

  	local event = sf_on_tick_events[number]
  	local unit_number = event["unit_number"]
  	local vehicle=global.sf_reavers[unit_number]
  	if vehicle then
	  	local driver = global.sf_reavers[unit_number]["entity"].get_driver()
	  	global.sf_reavers[unit_number]["scarabey_count"] = global.sf_reavers[unit_number]["scarabey_count"]+1
	  	global.sf_reavers[unit_number]["producting"]=global.sf_reavers[unit_number]["producting"]-1
	  	if driver then
	  		local gui = mod_gui.get_frame_flow(driver)
			gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"].caption="Curret: ".. global.sf_reavers[unit_number]["scarabey_count"].."/".. global.max_scarabey
	 		driver.print({"control-messages.scarabey-ready"}) 	
	  	else 
	  		global.sf_reavers[unit_number]["last_orderer"].print({"control-messages.scarabey-ready"})
	  	end
		if vehicle["producting"]==0 then
	  		sf_on_tick_events[number]=nil
	  	else
	  		sf_on_tick_events[number]["tempticks"]=sf_on_tick_events[number]["ticks_per_one"]
	  	end
  	else 
  		sf_on_tick_events[number]=nil
  	end


  else
    sf_on_tick_events[number]["tempticks"]=sf_on_tick_events[number]["tempticks"] - 1 -- 60 ticks pro second
  end
end

local function release_scarabey(vehicle,count)
	for n = 1, count,1 do
		local gui = mod_gui.get_frame_flow(vehicle["last_driver"])
		local entity = vehicle["entity"]
		local surface = entity.surface
		surface.create_entity{name="sf-scarabey",position=entity.position,force=entity.get_driver().force}
		global.sf_reavers[entity.unit_number]["scarabey_count"]=global.sf_reavers[entity.unit_number]["scarabey_count"]-1
		local counter = gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"]
		counter.caption="Curret: ".. vehicle["scarabey_count"].."/"..global.max_scarabey
	end
end

script.on_init(function ( ... )
	if not global.sf_reavers then
	  	global.sf_reavers = {}
	end
	if not global.max_scarabey then
	  	global.max_scarabey = 5
	end
end)

script.on_event(defines.events.on_built_entity, function(event)
	local ent = event.created_entity
	local player  = game.players[event.player_index]

	if ent.name == "restored-photon-cannon"then
			local pos = ent.position
		local surface = event.created_entity.surface
		local item= event.item
		local en_dist=false
		for _,entity in ipairs(surface.find_entities({{pos.x-3,pos.y-3.5}, {pos.x+3,pos.y+3}})) do
			if entity.name == "protoss-energy-distributor" then
				en_dist = true
			end
		end
		if	en_dist==false then
			ent.destroy()
			player.print({"control-messages.photon-cannon-built"})
			if item ~= nil then
			player.insert({name=item.name,count=1})
			end

			for _,entity in ipairs(surface.find_entities({{pos.x-0.5,pos.y-0.5}, {pos.x+0.5,pos.y+0.5}})) do
				if entity.name == "laser-turret-remnants" then
					entity.destroy()
			end
		end
		end
	elseif ent.name == "sf-reaver" then
		global.sf_reavers[ent.unit_number] = {
			entity=ent,
			last_driver=0,
			scarabey_count=0,
			max_scarabey=max_scarabey,
			producting=0
		}
	end
end)

script.on_event(defines.events.on_player_driving_changed_state, function (event)
	if event.entity then
		local entity = event.entity
		local driver = entity.get_driver()
		if entity.name=="sf-reaver" then
			if driver then
				global.sf_reavers[entity.unit_number]["last_driver"]=entity.get_driver()
				global.sf_reavers[entity.unit_number]["last_orderer"]=entity.get_driver()
				local player  = game.players[event.player_index]
				local frame_flow=mod_gui.get_frame_flow(player)
				local frame = frame_flow.add{
		        name = "sf-reaver-gui-frame",
		        type = "frame",
		        direction = "vertical",
			    }
			    frame.style.minimal_width = 100
			    frame.style.maximal_height= 155
			    frame.style.minimal_height = 100
			    frame.style.maximal_width = 275
			  	frame.add
			  {
			    type = "frame",
			    name = "sf-reaver-scarbey-text",
			    caption = "Scarabey counter",
			    style = mod_gui.frame_style 
			  } 
			    local counter=frame.add
			  {
			    type = "frame",
			    name = "sf-reaver-scarbey-counter",
			    caption = "Curret: ".. global.sf_reavers[entity.unit_number]["scarabey_count"].."/"..global.max_scarabey,
			    style = mod_gui.frame_style 
			  } 
			  	counter.add
			  {
			    type = "sprite-button",
			    name = "sf-scarbey-add-one",
			    sprite = "item/pylon-parts",
			    style = mod_gui.button_style,
			    tooltip={"gui-tooltip.sf-reaver-mk-1"}
			  }
			  	counter.add
			  {
			    type = "sprite-button",
			    name = "sf-scarbey-fill",
			    sprite = "item/pylon-parts",
			    style = mod_gui.button_style,
			    tooltip={"gui-tooltip.sf-reaver-fill"}
			  }
			  	counter.add
			  {
			    type = "sprite-button",
			    name = "sf-scarbey-release-one",
			    sprite = "item/pylon-parts",
			    style = mod_gui.button_style,
			    tooltip={"gui-tooltip.sf-reaver-r-1"}
			  }
			  	counter.add
			  {
			    type = "sprite-button",
			    name = "sf-scarbey-release-all",
			    sprite = "item/pylon-parts",
			    style = mod_gui.button_style,
			    tooltip={"gui-tooltip.sf-reaver-r-all"}
			  }
			  	local ent_number = counter.add
			  {
			    type = "frame",
			    name = "sf-hidden-reaver-number",
			    style = mod_gui.frame_style,
			    caption = entity.unit_number,
			  }
			  ent_number.visible=false
			else
				local vehicle = global.sf_reavers[entity.unit_number]
				local gui=mod_gui.get_frame_flow(vehicle["last_driver"])
				if gui["sf-reaver-gui-frame"] then
					gui["sf-reaver-gui-frame"].destroy()	
				end

				global.sf_reavers[entity.unit_number]["last_driver"]=0

		end
	end 
	else 
		local player  = game.players[event.player_index]
		local gui=mod_gui.get_frame_flow(player)
		if gui then
			gui["sf-reaver-gui-frame"].destroy()
		end
end
end)


script.on_event(defines.events.on_gui_click, function (event)
	if not sf_on_tick_events then
		sf_on_tick_events={}
	end
	local player = game.players[event.player_index]
	local button = event.element
	local gui = mod_gui.get_frame_flow(player)
	if button.name == "sf-scarbey-add-one"then
		local unit_number = tonumber(gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"]["sf-hidden-reaver-number"].caption)
		--player.print(unit_number) math.floor(-0.5)
		local vehicle = global.sf_reavers[unit_number]



		if vehicle["scarabey_count"]+vehicle["producting"]<global.max_scarabey then

			local inventory=vehicle["entity"].get_inventory(defines.inventory.car_trunk)
			local distractor = inventory.get_item_count("distractor-capsule")
			local crystal = inventory.get_item_count("sf-crystal")
			local gase = inventory.get_item_count("vespen-gase")
			local landmine = inventory.get_item_count("land-mine")
			local possibility=true
			if distractor < DISTRACTOR_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-make-one-scarab-distractor",distractor,DISTRACTOR_NEEDED})
			end
			if crystal < CRYSTAL_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-make-one-scarab-crystals",crystal,CRYSTAL_NEEDED})
			end
			if gase < VESPEN_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-make-one-scarab-vespen",gase,VESPEN_NEEDED})
			end
			if landmine < LANDMINE_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-make-one-scarab-landmine",landmine,LANDMINE_NEEDED})
			end
			
			if possibility==true then
			
				inventory.remove({name="vespen-gase", count=VESPEN_NEEDED})
				inventory.remove({name="sf-crystal", count=CRYSTAL_NEEDED})
				inventory.remove({name="distractor-capsule", count=DISTRACTOR_NEEDED})
				inventory.remove({name="land-mine", count=LANDMINE_NEEDED})
				
				player.print({"control-messages.reaver-one-scarab-ordered"})
				if vehicle["producting"]==0 then
					sf_on_tick_events[#sf_on_tick_events+1]={
						func=add_scarabey,
						unit_number=unit_number,
						ticks_per_one=TICKS_PER_SCARAB,
						tempticks=TICKS_PER_SCARAB
					}
				end
				vehicle["producting"]=1+vehicle["producting"]
			end
		else
			player.print({"control-messages.reaver-scarabeus-maxed-out",vehicle["scarabey_count"],vehicle["producting"]})
		end

	elseif button.name == "sf-scarbey-fill"then
		local unit_number = tonumber(gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"]["sf-hidden-reaver-number"].caption)
		--player.print(unit_number)
		local vehicle = global.sf_reavers[unit_number]

		if vehicle["scarabey_count"]+vehicle["producting"]<global.max_scarabey then

			local inventory=vehicle["entity"].get_inventory(defines.inventory.car_trunk)
			local distractor = inventory.get_item_count("distractor-capsule")
			local crystal = inventory.get_item_count("sf-crystal")
			local gase = inventory.get_item_count("vespen-gase")
			local landmine = inventory.get_item_count("land-mine")

			local possibility=true
			if distractor < DISTRACTOR_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-fill-scarab-distractor",distractor,DISTRACTOR_NEEDED})
			end
			if crystal < CRYSTAL_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-fill-scarab-crystals",crystal,CRYSTAL_NEEDED})
			end
			if gase < VESPEN_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-fill-scarab-vespen",gase,VESPEN_NEEDED})
			end
			if landmine < LANDMINE_NEEDED then
				possibility=false
				player.print({"control-messages.reaver-fill-scarab-landmine",landmine,LANDMINE_NEEDED})
			end
			if possibility==true then
				local max_scarab_to_produce=math.min(
					math.floor(distractor/DISTRACTOR_NEEDED),
					math.floor(crystal/CRYSTAL_NEEDED),
					math.floor(gase/VESPEN_NEEDED),
					math.floor(landmine/LANDMINE_NEEDED)
				)
				local scarabey_to_order
				if max_scarab_to_produce>global.max_scarabey then
					scarabey_to_order=global.max_scarabey-vehicle["scarabey_count"]-vehicle["producting"]
				else
					scarabey_to_order=max_scarab_to_produce
				end
		
				inventory.remove({name="vespen-gase", count=VESPEN_NEEDED*scarabey_to_order})
				inventory.remove({name="sf-crystal", count=CRYSTAL_NEEDED*scarabey_to_order})
				inventory.remove({name="distractor-capsule", count=DISTRACTOR_NEEDED*scarabey_to_order})
				inventory.remove({name="land-mine", count=LANDMINE_NEEDED*scarabey_to_order})
				
				player.print({"control-messages.reaver-n-scarab-ordered",scarabey_to_order})
				if vehicle["producting"]==0 then
					sf_on_tick_events[#sf_on_tick_events+1]={
						func=add_scarabey,
						unit_number=unit_number,
						ticks_per_one=TICKS_PER_SCARAB,
						tempticks=TICKS_PER_SCARAB
					} 
				end
				vehicle["producting"]=scarabey_to_order+vehicle["producting"]
			end
		else
			player.print({"control-messages.reaver-scarabeus-maxed-out",vehicle["scarabey_count"],vehicle["producting"]})
		end

	elseif button.name == "sf-scarbey-release-one"then
		local unit_number = tonumber(gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"]["sf-hidden-reaver-number"].caption)
		local vehicle = global.sf_reavers[unit_number]
		local entity = vehicle["entity"]
		if vehicle["scarabey_count"]>0 then
			--[[sf_on_tick_events[#sf_on_tick_events+1]={
				func=add_scarabey,
				unit_number=unit_number,
				counter=gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"],
				tickswait=120
			}]]--
			release_scarabey(vehicle,1)
		else
			player.print({"control-messages.reaver-no-scarabs"})
		end
	elseif button.name == "sf-scarbey-release-all"then
		local unit_number = tonumber(gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"]["sf-hidden-reaver-number"].caption)
		local vehicle = global.sf_reavers[unit_number]
		local entity = vehicle["entity"]
		if vehicle["scarabey_count"]>0 then
			--[[sf_on_tick_events[#sf_on_tick_events+1]={
				func=add_scarabey,
				unit_number=unit_number,
				counter=gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"],
				tickswait=120
			}]]--
			release_scarabey(vehicle,vehicle["scarabey_count"])
		else
			player.print({"control-messages.reaver-no-scarabs"})
		end
	end
--]]
end)

script.on_event(defines.events.on_tick, function (event)
	if sf_on_tick_events then
		for i,k in pairs(sf_on_tick_events) do
			k["func"](i)
		end
	end
end)

script.on_event(defines.events.on_research_finished, function (event)
	local force = game.forces["player"]
	local technology=event.research
	if force then
		local recipes=force.recipes
		local technologies=force.technologies
		if technology.name=="sf-protoss-sciencce-pack-transformation" and not event.on_script then

			
			for k,name in ipairs(PACK_NAMES) do
				if k > 2 then
					if not technologies[name[2]].researched then
						recipes[name[1]].enabled=false
					end
				end
			end
		else
			pack_names_2={}
			for k,name in ipairs(PACK_NAMES) do
				if k > 2 then
					pack_names_2[name[2]]=name[1]
				end
			end

			local name=technology.name

			if pack_names_2[name] then
				if technologies["sf-protoss-sciencce-pack-transformation"].researched then
					recipes[pack_names_2[name]].enabled=true
				end
			end
			if string.sub(name, 1, 26) == "protoss-reaver-max-scarabs" then
				global.max_scarabey=global.max_scarabey+1
				for i,vehicle in pairs(global.sf_reavers) do
					local driver=vehicle["entity"].get_driver()
					if driver then
						local gui=mod_gui.get_frame_flow(driver)
						gui["sf-reaver-gui-frame"]["sf-reaver-scarbey-counter"].caption="Curret: ".. vehicle["scarabey_count"].."/"..global.max_scarabey
					end
				end
			end
		end
	end

end)

script.on_event(defines.events.on_entity_died, function (event)
	local entity = event.entity
 	if entity.name == "sf-reaver" then
 		local num=entity.unit_number
 		global.sf_reavers[num]=nil
 	elseif entity.name== "sf-scarabey" then
 		entity.surface.create_entity{name="medium-explosion",position=entity.position,force=entity.force}
 		for k,t in pairs(entity.surface.find_enemy_units(entity.position,3,entity.force)) do
 			t.damage(300,entity.force)
 		end
 	end	
end)
script.on_event(defines.events.on_player_mined_entity, function (event)
	local entity = event.entity
 	if entity.name == "sf-reaver" then
 		local num=entity.unit_number
 		global.sf_reavers[num]=nil
 	end	
end)
script.on_event(defines.events.on_robot_mined_entity, function (event)
	local entity = event.entity
 	if entity.name == "sf-reaver" then
 		local num=entity.unit_number
 		global.sf_reavers[num]=nil
 	end	
end)

script.on_event(defines.events.on_trigger_created_entity, function (event)
	local entity = event.entity
	source=event.source
 	if entity.name == "big-explosion" and source then
 		if source.name=="sf-scarabey"then
 			source.destroy()
 		end
 	end
end)
