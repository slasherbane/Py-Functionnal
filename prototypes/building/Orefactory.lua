local Pipes = require("__stdlib__/stdlib/data/modules/pipes")

ITEM {
    type = "item",
    name = "pure-omega",
    icon = "__pyfunctionnal__/prototypes/items/graphics/omega.png",
    flags = {},
    subgroup = "Func-Omega",
    order = "o",
    stack_size = 100,
    fuel_value = "80MJ",
    fuel_category = "chemical",
    icon_size = 250,
    fuel_emissions_multiplier = 10,
    fuel_acceleration_multiplier = 2
}

ITEM {
    type = "item",
    name = "Chemical-factory",
    icon = "__pyfunctionnal__/prototypes/building/graphics/icons/distilator.png",
    icon_size = 32,
    flags = {},
    subgroup = "Func-Item",
    order = "k",
    place_result = "Chemical-factory",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "Chemical-factory",
    icon = "__pyfunctionnal__/prototypes/building/graphics/icons/distilator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    crafting_speed = 4.5,
    minable = {mining_time = 1, result = "Chemical-factory"},
    fast_replaceable_group = "Chemical-factory",
    max_health = 1500,
    crafting_categories = {"chemistry", "omega"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.9, -3.9}, {3.9, 3.9}},
    selection_box = {{-4, -4}, {4, 4}},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.02 / 2,
        buffer_capacity = "2000kW",
        drain = "485kW"
    },
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed", "productivity", "pollution", "consumption"},
    energy_usage = "1200kW",
    animation = {
        north = {
            filename = "__pyfunctionnal__/prototypes/building/graphics/entity/distilator.png",
            width = 283,
            height = 266,
            frame_count = 1,
            shift = {0.45, -0.156}
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, 4.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.5, 0.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.5, -4.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.5, -0.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.5, -0.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.5, -4.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 4.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.5, 0.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    working_sound = {
        sound = {filename = "__pyfunctionnal__/prototypes/building/sound/factory.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.60},
        apparent_volume = 0.8
    }
}
