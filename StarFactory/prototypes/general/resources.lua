local noise = require("noise");
local tne = noise.to_noise_expression;
local resource_autoplace = require("resource-autoplace");

data:extend(
{
  {
    type = "resource-category",
    name = "sf-gas"
  },
  {
    type = "resource-category",
    name = "sf-crystal-ore"
  },
  {
    type = "resource",
    name = "vespen-geyser",
    category = "sf-gas",
    icon = "__StarFactory__/graphics/icons/vespen-geyser.png",
    icon_size = 40,
    flags = {"placeable-neutral"},
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 20000,
    normal = 100000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "item",
          name = "vespen-gase",
          amount_min = 5,
          amount_max = 10,
          probability = 1
        }
      }
    },
    collision_box = {{-1.8, -1.4}, {1.8, 1.4}},
    selection_box = {{-1.8, -1}, {1.8, 1}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "vespen-gase",
      order = "c",
      base_density = 8.2,
      base_spots_per_km2 = 1.4,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, 
      additional_richness = 220000, 
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        priority = "medium",
        filename = "__StarFactory__/graphics/entity/vespen-geyser/vespen-geyser.png",
        priority = "high",
        width = 112,
        height = 52,
        frame_count = 1 ,
        variation_count = 1
      }
    },
    map_color = {51, 153, 0},
    map_grid = false
  },
    {
    type = "resource",
    name = "sf-crystal-ore",
    icon = "__StarFactory__/graphics/icons/sf-crystal-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="a-b-e",
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "sf-crystal",
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "sf-crystal-ore",
      order = "c",
      base_density = 0.9,
      base_spots_per_km2 = 1.25,
      has_starting_area_placement = false,
      random_spot_size_minimum = 2,
      random_spot_size_maximum = 4,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {1},
    stages =
    {
      sheet =
      {
        filename = "__StarFactory__/graphics/entity/sf-crystal-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 1,
        variation_count = 1,
      }
    },
    
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    map_color = {0, 72, 186}
  }
})