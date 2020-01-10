data:extend(
{
	  {
    type = "assembling-machine",
    name = "warp-gate-prototype",
    icon = "__StarFactory__/graphics/icons/warp-gate-prototype.png",
    icon_size = 40,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "warp-gate-prototype"},
    max_health = 300,
    order="a[assembling-machine-1]",
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    energy_usage = "2MW",
    collision_box = {{-3, -3}, {3, 3}},
    selection_box = {{-3, -3}, {3, 3}},
    --next_upgrade = "warp-gate-1",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
 
          filename = "__StarFactory__/graphics/entity/warp-gate-prototype/warp-gate-prototype.png",
          priority="high",
          width = 195,
          height = 195,
          frame_count = 1,  
    },
    crafting_categories = {"primitive-summoning"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__StarFactory__/graphics/entity/warp-gate-prototype/warp-gate-prototype-working/warp-gate-prototype-working-1.png",
          width = 195,
          height = 195,
          frame_count = 1, 
        },
      }
    },
  }
 }
)