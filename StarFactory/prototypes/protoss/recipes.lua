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
      {"assembling-machine-2",4},
      {"stone-brick", 20},
    },
    result= "warp-gate-prototype"
  },
  {
    type = "recipe",
    name = "gateway",
    energy_required = 250,
    enabled = false,
    ingredients =
    {
      {"warp-gate-prototype", 1},
      {"iron-plate", 20},
      {"steel-plate", 40},
      {"basic-protoss-building-parts", 8},
      {"productivity-module", 1},
    },
    result= "gateway"
  },
  {
    type = "recipe",
    name = "pylon-parts",
    energy_required = 200,
    category = "primitive-summoning",
    enabled = false,
    ingredients = {{"sf-crystal", 75}},
    result= "pylon-parts"
  },
  {
    type = "recipe",
    name = "photon-cannon-parts",
    energy_required = 250,
    category = "primitive-summoning",
    enabled = false,
    ingredients = {
      {"sf-crystal", 200},
      {"vespen-gase", 200}
  },
    result= "photon-cannon-parts"
  },
  {
    type = "recipe",
    name = "basic-protoss-building-parts",
    category = "primitive-summoning",
    energy_required = 225,
    enabled = false,
    ingredients =
    {
      {"sf-crystal", 125}
    },
    result= "basic-protoss-building-parts"
  },
  {
    type = "recipe",
    name = "assimilator",
    energy_required = 50,
    category = "primitive-summoning",
    enabled = false,
    ingredients={
      {"pumpjack",2},
      {"iron-plate", 20},
      {"steel-plate", 35},
      {"basic-protoss-building-parts", 8},
      {"electronic-circuit", 35}
    },
    result= "assimilator"
  },
  {
    type = "recipe",
    name = "protoss-energy-distributor",
    energy_required = 50,
    category = "primitive-summoning",
    enabled = false,
    ingredients={
      {"restored-pylon",1},
      {"steel-plate", 5},
      {"basic-protoss-building-parts", 2},
    },
    result= "protoss-energy-distributor"
  },
}
)
