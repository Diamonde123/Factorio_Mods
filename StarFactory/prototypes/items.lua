data:extend(
{
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
        name = "restored-photon-cannon",
        icon = "__StarFactory__/graphics/icons/photon-cannon.png",
        icon_size = 32,
        subgroup = "defensive-structure",
        order = "a[energy]-a[restored-pylon]",
        place_result = "restored-photon-cannon",
        stack_size = 50
    },
    {
        type = "item",
        name = "warp-gate-prototype",
        icon = "__StarFactory__/graphics/icons/warp-gate-prototype.png",
        icon_size = 40,
        subgroup = "production-machine",
        order="a[assembling-machine-3]",
        place_result = "warp-gate-prototype",
        stack_size = 50
    },
    {
        type = "item",
        name = "gateway",
        icon = "__StarFactory__/graphics/icons/gateway.png",
        icon_size = 40,
        subgroup = "production-machine",
        order="a[assembling-machine-3]",
        place_result = "gateway",
        stack_size = 50
    },
 }
)