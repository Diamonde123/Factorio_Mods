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
    prerequisites = {"advanced-electronics-2","laser-turrets","protoss-energy-distribution","basic-summoning"},
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
    name = "photon-cannon-restoration",
    icon_size = 64,
    icon = "__StarFactory__/graphics/tecnology/photon-cannon-restoration.png",
    prerequisites = {"advanced-electronics-2","laser-turrets","protoss-energy-distribution","protoss-vespen-usage"},
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
    prerequisites = {"optics","battery","advanced-electronics"},
    effects =
    {

      {
        type = "unlock-recipe",
        recipe = "warp-gate-prototype"
      },

    },
    unit =
    {
      count = 150,
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
      count = 200,
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
    name = "assimilator",
    icon_size = 90,
    icon = "__StarFactory__/graphics/tecnology/assimilator.png",
    prerequisites = {"basic-summoning","sf-resources"},
    effects =
    {

      {
        type = "unlock-recipe",
        recipe = "assimilator"
      },
    },
    unit =
    {
      count = 175,
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
    name = "protoss-energy-distribution",
    icon_size = 64,
    icon = "__StarFactory__/graphics/tecnology/protoss-energy-distribution.png",
    prerequisites = {"pylon-restoration","basic-summoning"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "protoss-energy-distributor"
      },
    },
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "protoss-vespen-usage",
    icon_size = 66,
    icon = "__StarFactory__/graphics/tecnology/protoss-vespen-usage.png",
    prerequisites = {"basic-summoning","sf-resources"},
    effects =
    {
      {
        type="unlock-recipe",
        recipe="sf-photon-ammo",
      }
    },
    unit =
    {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 25
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "sf-protoss-sciencce-pack-transformation",
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/sf-protoss-sciencce-pack-transformation.png",
    prerequisites = {"protoss-vespen-usage"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-automation-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-logistic-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-military-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-chemical-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-production-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-utility-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sf-protoss-forge"
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
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "protoss-machine-construction",
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/protoss-machine-construction.png",
    prerequisites = {"protoss-vespen-usage"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-protoss-machine-parts"
      },

    },
    unit =
    {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "sf-reaver-construction",
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/sf-reaver-construction.png",
    prerequisites = {"protoss-machine-construction"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sf-reaver-construction"
      },
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack",1},
        {"military-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
   {
    type = "technology",
    name = "protoss-reaver-max-scarabs-1",
    localised_name = {"technology-name.protoss-reaver-max-scarabs",1},
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/sf-reaver-max-scarab.png",
    prerequisites ={"sf-reaver-construction","sf-protoss-sciencce-pack-transformation"},
    effects =
    {
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"sf-protoss-automation-science-pack", 1},
        {"sf-protoss-logistic-science-pack", 1},
        {"sf-protoss-chemical-science-pack", 1},
        {"sf-protoss-military-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "protoss-reaver-max-scarabs-2",
    localised_name = {"technology-name.protoss-reaver-max-scarabs",2},
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/sf-reaver-max-scarab.png",
    prerequisites ={"protoss-reaver-max-scarabs-1"},
    effects =
    {
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"sf-protoss-automation-science-pack", 1},
        {"sf-protoss-logistic-science-pack", 1},
        {"sf-protoss-chemical-science-pack", 1},
        {"sf-protoss-military-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "protoss-reaver-max-scarabs-3",
    icon_size = 128,
    localised_name = {"technology-name.protoss-reaver-max-scarabs",3},
    icon = "__StarFactory__/graphics/tecnology/sf-reaver-max-scarab.png",
    prerequisites ={"protoss-reaver-max-scarabs-2"},
    effects =
    {
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"sf-protoss-automation-science-pack", 1},
        {"sf-protoss-logistic-science-pack", 1},
        {"sf-protoss-chemical-science-pack", 1},
        {"sf-protoss-production-science-pack", 1},
        {"sf-protoss-military-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "protoss-reaver-max-scarabs-4",
    localised_name = {"technology-name.protoss-reaver-max-scarabs",4},
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/sf-reaver-max-scarab.png",
    prerequisites ={"protoss-reaver-max-scarabs-3"},
    effects =
    {
    },
    unit =
    {
      count = 600,
      ingredients = {
        {"sf-protoss-automation-science-pack", 1},
        {"sf-protoss-logistic-science-pack", 1},
        {"sf-protoss-chemical-science-pack", 1},
        {"sf-protoss-production-science-pack", 1},
        {"sf-protoss-military-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "protoss-reaver-max-scarabs-5",
    localised_name = {"technology-name.protoss-reaver-max-scarabs",5},
    icon_size = 128,
    icon = "__StarFactory__/graphics/tecnology/sf-reaver-max-scarab.png",
    prerequisites ={"protoss-reaver-max-scarabs-4"},
    effects =
    {
    },
    unit =
    {
      count = 800,
      ingredients = {
        {"sf-protoss-automation-science-pack", 1},
        {"sf-protoss-logistic-science-pack", 1},
        {"sf-protoss-chemical-science-pack", 1},
        {"sf-protoss-production-science-pack", 1},
        {"sf-protoss-utility-science-pack", 1},
        {"sf-protoss-military-science-pack",1}
      },
      time = 60
    },
    order = "d-a-a"
  },
}
)
