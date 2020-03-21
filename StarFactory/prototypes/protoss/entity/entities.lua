require "util"
local forge_inputs =
{
  "sf-protoss-automation-science-pack",
  "sf-protoss-logistic-science-pack",
  "sf-protoss-military-science-pack",
  "sf-protoss-chemical-science-pack",
  "sf-protoss-production-science-pack",
  "sf-protoss-utility-science-pack"
}

local scarab_animation =
    {
          priority = "low",
          width = 72,
          height = 72,
          frame_count = 1,
          direction_count = 32,
          scale=0.5,
          animation_speed = 5,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__StarFactory__/graphics/entity/sf-scarabey/sf-scarabey.png",
             width_in_frames = 7,
             height_in_frames = 5
            },
          }
      } 

data:extend(
{
{
    type = "electric-pole",
    name = "restored-pylon",
    icon = "__StarFactory__/graphics/icons/restored-pylon.png",
    icon_size = 90,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "restored-pylon"},
    max_health = 200,
    corpse = "substation-remnants",
    track_coverage_during_build_by_moving = true,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1, -1}, {1, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1}, {1, 1}},
    maximum_wire_distance = 50,
    supply_area_distance = 35,
    pictures =
    {
      layers =
      {

        {
          filename = "__StarFactory__/graphics/entity/restored-pylon/restored-pylon.png",
          priority = "high",
          width = 105,
          height = 120,
          direction_count = 1,
          shift = util.by_pixel(0, 1-32),
        },
		{
          filename = "__StarFactory__/graphics/entity/restored-pylon/restored-pylon-shadow.png",
          priority = "high",
          width = 56,
          height = 30,
          direction_count = 1,
          shift = util.by_pixel(62, 42-32),
          draw_as_shadow = true,
        
        }
      }  
   },
   vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__StarFactory__/sound/protoss/pylon.ogg" },
      apparent_volume = 0.4,
      audible_distance_modifier = 0.5,
      probability = 1 / (180 * 60)
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-21, -82),
          red = util.by_pixel(22, -81)
        },
        wire =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-21, -82),
          red = util.by_pixel(22, -81)
        }
      },
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    }
  },
{
    type = "electric-pole",
    name = "protoss-energy-distributor",
    icon = "__StarFactory__/graphics/icons/energy-distributor.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "protoss-energy-distributor"},
    max_health = 200,
    corpse = "substation-remnants",
    track_coverage_during_build_by_moving = true,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1, -1}, {1, 0.7}},
    selection_box = {{-1.5 , -3.5}, {1.5, 1}},
    maximum_wire_distance = 10,
    supply_area_distance = 4,
    pictures =
    {
      layers =
      {
        {
          filename = "__StarFactory__/graphics/entity/energy-distributor.png",
          priority = "high",
          width = 95,
          height = 144,
          direction_count = 1,
          shift=util.by_pixel(0, -35)
        }
    }
    },
   vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__StarFactory__/sound/protoss/pylon.ogg" },
      apparent_volume = 0.4,
      audible_distance_modifier = 0.5,
      probability = 1 / (180 * 60)
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-21, -82),
          red = util.by_pixel(22, -81)
        },
        wire =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-21, -82),
          red = util.by_pixel(22, -81)
        }
      },
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    }
  },
{
    type = "car",
    name = "sf-reaver",
    icon = "__StarFactory__/graphics/icons/sf-reaver.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 0.5, result = "sf-reaver"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    immune_to_tree_impacts = true,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.1,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 60
      },
      {
        type = "physical",
        decrease = 15,
        percent = 60
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 70
      },
      {
        type = "acid",
        decrease = 10,
        percent = 70
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.35,
    braking_power = "400kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 3,
    },
    consumption = "600kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
          priority = "medium",
          width = 84,
          height = 84,
          frame_count = 9,
          direction_count = 8,
          scale=1.5,
          animation_speed = 3,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__StarFactory__/graphics/entity/sf-reaver/sf-reaver.png",
             width_in_frames = 3,
             height_in_frames = 24
            },
          }
         
    },
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      }
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 20000,
    inventory_size = 80,
    guns = { "sf-reaver-gun" }
  },
  {
    type = "lab",
    name = "sf-protoss-forge",
    icon = "__StarFactory__/graphics/icons/sf-forge.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "lab"},
    max_health = 150,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2.25, -2.25}, {2.25, 2.25}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    on_animation =
    {
      filename = "__StarFactory__/graphics/entity/sf-forge.png",
      width = 95,
      height = 77,
      scale = 1.5,
      frame_count = 1,
      line_length = 1, 
    },
    off_animation =
    {
      scale = 1.5,
      filename = "__StarFactory__/graphics/entity/sf-forge.png",
      width = 95,
      height = 77,
      frame_count = 1,
      line_length = 1, 
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "60kW",
    researching_speed = 1,
    inputs = forge_inputs,
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.9}
    }
  },


{
    type = "unit",
    name = "sf-scarabey",
    icon = "__StarFactory__/graphics/icons/sf-scarabey.png",
    icon_size = 32,
    flags = {"placeable-player", "placeable-off-grid", "not-repairable"},
    max_health = 8,
    order = "b-b-a",
    resistances = {},
    collision_box = {{0, 0}, {0, 0}},
    collision_mask = {"layer-11"},
    selection_box = {{-0.2, -0.35}, {0.35, 0.2}},
    attack_parameters =
    {
      animation=scarab_animation,
      type = "projectile",
      range = 0.7,
      cooldown = 35,
      ammo_type =
      {
        category = "grenade",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",

            projectile= "sf-scarabey-explosion",
            starting_speed = 20,
            source_offset = {0, -1.31439 }
          },
          }
        },
    },
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.125,
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    pollution_to_join_attack=0,
    run_animation = scarab_animation,
    ai_settings = {}

  },


}

)
