
local sc_pack_names={
{"sf-protoss-automation-science-pack","automation-science-pack"},
{"sf-protoss-logistic-science-pack","logistic-science-pack"},
{"sf-protoss-military-science-pack","military-science-pack"},
{"sf-protoss-chemical-science-pack","chemical-science-pack"},
{"sf-protoss-production-science-pack","production-science-pack"},
{"sf-protoss-utility-science-pack","utility-science-pack"},
}

local function sc_pack_parser(n)
  return {
    type = "recipe",
    name = sc_pack_names[n][1],
    energy_required = 200,
    category = "advanced-crafting",
    enabled = false,
    ingredients = {
        {sc_pack_names[n][2], 2},
        {"sf-crystal", 100},
        {"vespen-gase", 50}
      },
    result=sc_pack_names[n][1] 
      }
end



data:extend(
{


--basic crafting
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
    name = "assimilator",
    energy_required = 50,
    enabled = false,
    ingredients={
      {"pumpjack",2},
      {"iron-plate", 20},
      {"steel-plate", 35},
      {"basic-protoss-building-parts", 8},
      {"advanced-circuit", 35}
    },
    result= "assimilator"
  },
  {
    type = "recipe",
    name = "gateway",
    energy_required = 250,
    enabled = false,
    ingredients =
    {
      {"warp-gate-prototype", 1},
      {"assembling-machine-3", 1},
      {"iron-plate", 20},
      {"steel-plate", 40},
      {"basic-protoss-building-parts", 8},
      {"productivity-module", 1},
    },
    result= "gateway"
  },
    {
    type = "recipe",
    name = "protoss-energy-distributor",
    energy_required = 50,
    enabled = false,
    ingredients={
      {"restored-pylon",1},
      {"steel-plate", 5},
      {"basic-protoss-building-parts", 2},
    },
    result= "protoss-energy-distributor"
  },
      {
    type = "recipe",
    name = "sf-reaver-construction",
    energy_required = 150,
    enabled = false,
    ingredients={
      {"tank",1},
      {"roboport", 2},
      {"basic-protoss-machine-parts", 8},
      {"processing-unit", 15}

    },
    result= "sf-reaver"
  },
        {
    type = "recipe",
    name = "sf-protoss-forge",
    energy_required = 150,
    enabled = false,
    ingredients={
      {"lab",3},
      {"basic-protoss-building-parts", 4},
      {"basic-protoss-machine-parts", 8},
      {"processing-unit", 15}

    },
    result= "sf-protoss-forge"
  },
  {
    type = "recipe",
    name = "sf-photon-ammo",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"battery", 3},
      {"vespen-gase", 50},
      {"sf-crystal", 50},

    },
    result= "sf-photon-ammo"
  },
--advanced crafting
  sc_pack_parser(1),
  sc_pack_parser(2),
  sc_pack_parser(3),
  sc_pack_parser(4),
  sc_pack_parser(5),
  sc_pack_parser(6),

--summonning recipes
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
    category = "basic-summoning",
    enabled = false,
    ingredients = {
      {"sf-crystal", 200},
      {"vespen-gase", 200}
  },
    result= "photon-cannon-parts"
  },
    {
    type = "recipe",
    name = "basic-protoss-machine-parts",
    energy_required = 350,
    category = "basic-summoning",
    enabled = false,
    ingredients = {
      {"sf-crystal", 300},
      {"vespen-gase", 200}
  },
    result= "basic-protoss-machine-parts"
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


}
)
