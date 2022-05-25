FLUID {
    type = "fluid",
    name = "base-liquid-glass",
    icon = "__pyfunctionnal__/prototypes/fluids/graphics/base-liquid-glass.png",
    icon_size = 32,
    default_temperature = 800,
    heat_capacity = "10KJ",
    base_color = {r = 195, g = 194, b = 195},
    flow_color = {r = 195, g = 194, b = 195},
    max_temperature = 1000,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.4
}

FLUID {
    type = "fluid",
    name = "hydrazine",
    icon = "__pyfunctionnal__/prototypes/fluids/graphics/hydrazine.png",
    icon_size = 32,
    default_temperature = 20,
    base_color = {r = 255, g = 69, b = 0},
    flow_color = {r = 255, g = 69, b = 0},
    max_temperature = 25,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.8,
    flow_to_energy_ratio = 0.8,
    fuel_value = "3000kJ",
    emissions_multiplier = 5
}

FLUID {
    type = "fluid",
    name = "liquid-omega",
    icon = "__pyfunctionnal__/prototypes/fluids/graphics/omega.png",
    icon_size = 32,
    default_temperature = 15,
    base_color = {r = 9, g = 9, b = 87},
    flow_color = {r = 9, g = 9, b = 87},
    max_temperature = 15,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 4,
    fuel_value = "4600kJ",
    emissions_multiplier = 10
}
