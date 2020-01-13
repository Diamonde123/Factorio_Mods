data:extend(
{
  {
    type = "technology",
    name = "pylon-restoration",
    icon_size = 64,
    icon = "__StarFactory__/graphics/tecnology/pylon-restoration.png",
    prerequisites = {"electric-energy-distribution-2","primitive-summoning"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "restored-pylon"
      },
      {
        type = "unlock-recipe",
        recipe = "pylon-parts"
      },
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 45
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "photon-cannon-restoration",
    icon_size = 64,
    icon = "__StarFactory__/graphics/tecnology/photon-cannon-restoration.png",
    prerequisites = {"advanced-electronics-2","laser-turrets","primitive-summoning"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "restored-photon-cannon"
      },
      {
        type = "unlock-recipe",
        recipe = "photon-cannon-parts"
      },
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "primitive-summoning",
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/primitive-summoning.png",
    prerequisites = {"laser","advanced-electronics"},
    effects =
    {

      {
        type = "unlock-recipe",
        recipe = "warp-gate-prototype"
      },

    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 45
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "basic-summoning",
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/basic-summoning.png",
    prerequisites = {"primitive-summoning"},
    effects =
    {

      {
        type = "unlock-recipe",
        recipe = "gateway"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-protoss-building-parts"
      },

    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 45
    },
    order = "d-a-a"
  },
}
)