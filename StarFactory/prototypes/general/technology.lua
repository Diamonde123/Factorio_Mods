data:extend(
{
  {
    type = "technology",
    name = "sf-resources",
    icon_size = 66,
    icon = "__StarFactory__/graphics/tecnology/sf-resources.png",
    prerequisites = {"oil-processing"},
    effects =
    {
    },
    unit =
    {
      count = 120,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 25
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
    },
    unit =
    {
      count = 120,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 25
    },
    order = "d-a-a"
  },
})