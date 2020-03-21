data:extend(
{
--components
    --parts
    {
        type = "item",
        name = "pylon-parts",
        icon = "__StarFactory__/graphics/icons/pylon-parts.png",
        icon_size = 50,
        subgroup = "raw-resource",
        order = "a[rocket-part]-a[pylon-parts]",
        stack_size = 200,
    },
    {
        type = "item",
        name = "photon-cannon-parts",
        icon = "__StarFactory__/graphics/icons/photon-cannon-parts.png",
        icon_size = 64,
        subgroup = "raw-resource",
        order = "a[rocket-part]-a[photon-cannon-parts]",
        stack_size = 200,
    },
    {
        type = "item",
        name = "basic-protoss-building-parts",
        icon = "__StarFactory__/graphics/icons/basic-protoss-building-parts.png",
        icon_size = 64,
        subgroup = "raw-resource",
        order = "a[rocket-part]-a[photon-cannon-parts]",
        stack_size = 200,
    },
    {
        type = "item",
        name = "basic-protoss-machine-parts",
        icon = "__StarFactory__/graphics/icons/basic-protoss-machine-parts.png",
        icon_size = 32,
        subgroup = "raw-resource",
        order = "a[rocket-part]-a[photon-cannon-parts]",
        stack_size = 200,
    },

    --science-packs
    {
        type = "tool",
        name = "sf-protoss-automation-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__StarFactory__/graphics/icons/sf-protoss-automation-pack.png",
        icon_size = 32,
        subgroup = "science-pack",
        order = "i[automation-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "sf-protoss-logistic-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__StarFactory__/graphics/icons/sf-protoss-logistic-pack.png",
        icon_size = 32,
        subgroup = "science-pack",
        order = "i[logistic-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "sf-protoss-military-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__StarFactory__/graphics/icons/sf-protoss-military-pack.png",
        icon_size = 32,
        subgroup = "science-pack",
        order = "i[military-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "sf-protoss-chemical-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__StarFactory__/graphics/icons/sf-protoss-chemical-pack.png",
        icon_size = 32,
        subgroup = "science-pack",
        order = "i[chemical-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "sf-protoss-production-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__StarFactory__/graphics/icons/sf-protoss-production-pack.png",
        icon_size = 32,
        subgroup = "science-pack",
        order = "i[production-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        type = "tool",
        name = "sf-protoss-utility-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__StarFactory__/graphics/icons/sf-protoss-utility-pack.png",
        icon_size = 32,
        subgroup = "science-pack",
        order = "i[util-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
--placeable
    --energy
    {
        type = "item",
        name = "restored-pylon",
        icon = "__StarFactory__/graphics/icons/restored-pylon.png",
        icon_size = 90,
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-a[restored-pylon]",
        place_result = "restored-pylon",
        stack_size = 50
    },
    {
        type = "item",
        name = "protoss-energy-distributor",
        icon = "__StarFactory__/graphics/icons/energy-distributor.png",
        icon_size = 64,
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-a[restored-pylon]",
        place_result = "protoss-energy-distributor",
        stack_size = 50
    },
    --assembling-machines
    {
        type = "item",
        name = "warp-gate-prototype",
        icon = "__StarFactory__/graphics/icons/warp-gate-prototype.png",
        icon_size = 40,
        subgroup = "production-machine",
        order="f[assembling-machine-3]",
        place_result = "warp-gate-prototype",
        stack_size = 50
    },
    {
        type = "item",
        name = "gateway",
        icon = "__StarFactory__/graphics/icons/gateway.png",
        icon_size = 40,
        subgroup = "production-machine",
        order="f[assembling-machine-3]",
        place_result = "gateway",
        stack_size = 50
    },
    --mining-drills
    {
        type = "item",
        name = "assimilator",
        icon = "__StarFactory__/graphics/icons/assimilator.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "a[energy]-a[restored-pylon]",
        place_result = "assimilator",
        stack_size = 50
    },
    --defensive-structures
    {
        type = "item",
        name = "restored-photon-cannon",
        icon = "__StarFactory__/graphics/icons/photon-cannon.png",
        icon_size = 32,
        subgroup = "defensive-structure",
        order = "a[energy]-a[restored-pylon]",
        place_result = "restored-photon-cannon",
        stack_size = 50
    },
    --labs
    {
        type = "item",
        name = "sf-protoss-forge",
        icon = "__StarFactory__/graphics/icons/sf-forge.png",
        icon_size = 32,
        subgroup = "production-machine",
        order = "g[lab]",
        place_result = "sf-protoss-forge",
        stack_size = 10
    },
    --vehicles
    {
        type = "item-with-entity-data",
        name = "sf-reaver",
        icon = "__StarFactory__/graphics/icons/sf-reaver.png",
        icon_size = 32,
        subgroup = "transport",
        order = "b[personal-transport]-b[tank]",
        place_result = "sf-reaver",
        stack_size = 1
    },
 }
)