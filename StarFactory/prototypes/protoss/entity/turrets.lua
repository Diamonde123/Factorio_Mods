require ("util")

function make_photon_cannon_sound()
    return
    {
      {
        filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
        volume = 0.45
      },
    }
end

function photon_cannon(inputs)
return
{
  filename = "__StarFactory__/graphics/entity/photon-cannon/photon-cannon.png",
  priority = "medium",
  width = 64,
  height = 64,
  frame_count = inputs.frame_count and inputs.frame_count or 4,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 1,
  shift = util.by_pixel(0, -32),
}
end
function photon_cannon_ready(inputs)
return

{
  filename = "__StarFactory__/graphics/entity/photon-cannon/photon-cannon-ready.png",
  priority = "medium",
  width = 64,
  height = 64,
  frame_count = inputs.frame_count and inputs.frame_count or 4,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 1,
  shift = util.by_pixel(0, -32),
}
end
function photon_cannon_closed(inputs)
return
{
  filename = "__StarFactory__/graphics/entity/photon-cannon/photon-cannon.png",
  priority = "medium",
  width = 64,
  height = 64,
  frame_count = inputs.frame_count and inputs.frame_count or 4,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 1,
  shift = util.by_pixel(0, -32),
}
end


data:extend(
{
  {
    type = "electric-turret",
    call_for_help_radius = 40,
    name = "restored-photon-cannon",
    icon = "__StarFactory__/graphics/icons/photon-cannon.png",
    icon_size = 32,
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "restored-photon-cannon" },
    max_health = 1000,
    collision_box = {{ -1, -1.5}, {1, 0}},
    selection_box = {{ -1, -1.5}, {1, 0}},
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    corpse = "laser-turret-remnants",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "15MJ",
      input_flow_limit = "4MW",
      drain = "24kW",
      usage_priority = "primary-input"
    },
    folded_animation = photon_cannon{frame_count=1, line_length = 1},
    prepared_animation = photon_cannon_ready{run_mode = "backward",frame_count=1, line_length = 1},
    folding_animation = photon_cannon{run_mode = "backward",frame_count=4, line_length = 1},
    preparing_animation = photon_cannon{frame_count=4, line_length = 1},
    
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      sound = make_photon_cannon_sound(),
      type = "beam",
      cooldown = 40,
      range = 24,
      source_direction_count = 64,
      source_offset = {0, -3.423489 / 4},
      damage_modifier = 2,
      ammo_type =
      {
        category = "laser-turret",
        energy_consumption = "1MJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile= "photon-projectile",
            starting_speed = 2,
            duration = 40,
            source_offset = {0, -1.31439 }
          },
          }
        }
      },
    }
  }
)
