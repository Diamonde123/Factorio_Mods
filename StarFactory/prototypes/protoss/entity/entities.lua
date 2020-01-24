require "util"
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
    supply_area_distance = 50,
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
}

)
