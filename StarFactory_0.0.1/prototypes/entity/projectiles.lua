require ("util")

function photon_projectile(inputs)
return
{
  filename = "__StarFactory__/graphics/entity/photon-projectile/photon-projectile.png",
  priority = "medium",
  width = 32,
  height = 32,
  frame_count = inputs.frame_count and inputs.frame_count or 1,
  line_length = inputs.line_length and inputs.line_length or 1,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 1,
  shift = util.by_pixel(0, -32),
}
end

function bebeam(inputs)
return
{
  filename = "__StarFactory__/graphics/entity/invisible-beam/beam.png",
  priority = "medium",
  width = 1,
  height = 1,
  frame_count = inputs.frame_count and inputs.frame_count or 1,
  line_length = inputs.line_length and inputs.line_length or 1,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 1,
  shift = util.by_pixel(0, -32),
}
end

data:extend(
{
  {
    type = "projectile",
    name = "photon-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
    acceleration = 0,
    direction_only = true,
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant"
      }
    },
    animation =photon_projectile{}
  },
  {
    name="invisible-beam",
    type = "beam",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action_triggered_automatically = false,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 60, type = "laser"}
          },
            {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
            },
        }
      }
    },
    head =photon_projectile{},
    tail =bebeam{},
    body =bebeam{},
  } 
}
)