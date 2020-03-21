data:extend(
{
  {
    type = "gun",
    name = "sf-reaver-gun",
    icon = "__StarFactory__/graphics/icons/photon-projectile.png",
    icon_size = 32,
    subgroup = "gun",
    order = "a[basic-clips]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "photon-shot",
      cooldown = 2,
      movement_slow_down_factor = 0.8,
      projectile_center = {-0.15625, -0.07812},
      projectile_creation_distance = 1,
      range = 20,
      damage_modifier = 1.5,
      cooldown = 30,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 0.6,
      range = 20,
      damage_modifier = 3,--7.5
      --sound = sounds.heavy_gunshot,
    },
  },
      {
    type = "ammo-category",
    name = "photon-shot",
    icon = "__StarFactory__/graphics/icons/photon-projectile.png",
    icon_size = 32,
  },
    {
    type = "ammo",
    name = "sf-photon-ammo",
    icon = "__StarFactory__/graphics/icons/sf-photon-ammo.png",
    icon_size = 32,

    ammo_type =
    {
      category = "photon-shot",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type="projectile",
            projectile = "photon-projectile",
            starting_speed = 3.5,

            }
          }
        }
      
    },
    pictures={
      {
        filename="__StarFactory__/graphics/icons/photon-projectile.png",
        width=32,
        height=32,
      },
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-a[firearm-magazine]",
    stack_size = 200
  },
}
)