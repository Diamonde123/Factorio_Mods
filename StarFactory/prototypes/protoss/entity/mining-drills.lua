data:extend(
{
  {
    type = "mining-drill",
    name = "assimilator",
    icon = "__StarFactory__/graphics/icons/assimilator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "assimilator"},
    resource_categories = {"sf-gas"},
    max_health = 200,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    vector_to_place_result = {-3, 2},
    collision_box = {{ -2.5, -1.2}, {2.5, 1.2}},
    selection_box = {{ -2.5, -1.8}, {2.5, 1.8}},
    drawing_box = {{-2.6, -2.5}, {2.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 1,
      usage_priority = "secondary-input"
    },
    energy_usage = "90kW",
    mining_speed = 0.02,
    resource_searching_radius = 0.5,
    module_specification =
    {
      module_slots = 2
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },

    animations =
    {
      north =
      {
          filename = "__StarFactory__/graphics/entity/assimilator.png",
          priority = "extra-high",
          size={244,190},
          frame_count = 1, 
        }
      },    

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
} 

)

