data:extend(
{
  {
    type = "recipe",
    name = "restored-pylon",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"pylon-parts", 4},
      {"iron-plate", 40},
      {"steel-plate", 20},
      {"advanced-circuit", 10},
      {"stone-brick", 20},

    },
    result= "restored-pylon"
  },
  {
    type = "recipe",
    name = "restored-photon-cannon",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"photon-cannon-parts", 4},
      {"iron-plate", 10},
      {"steel-plate", 20},
      {"advanced-circuit", 12},
      {"processing-unit", 2},
      {"laser-turret", 2},
      {"productivity-module", 1},


    },
    result= "restored-photon-cannon"
  },
  {
    type = "recipe",
    name = "warp-gate-prototype",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"accumulator", 4},
      {"iron-plate", 10},
      {"steel-plate", 20},
      {"advanced-circuit", 12},
      {"lab",6},
      {"stone-brick", 20},
    },
    result= "warp-gate-prototype"
  },
  {
    type = "recipe",
    name = "pylon-parts",
    energy_required = 200,
    category = "primitive-summoning",
    enabled = false,
    ingredients = {},
    result= "pylon-parts"
  },
  {
    type = "recipe",
    name = "photon-cannon-parts",
    energy_required = 200,
    category = "primitive-summoning",
    enabled = false,
    ingredients = {},
    result= "photon-cannon-parts"
  },
  --[[{
    type = "recipe",
    name = "pylon-parts",
    energy_required = 50,
    category = "primitive-summoning",
    enabled = false,
    ingredients=nil,
    result= "pylon-parts"
  },--]]
}
)
