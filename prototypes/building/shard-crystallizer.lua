ITEM {
    type = "item",
    name = "shard-crystallizer",
    icon = "__pyfunctionnal__/prototypes/building/graphics/icons/icon.png",
    icon_size = 32,
    subgroup = "Func-Building",
    order = "d",
    place_result = "shard-crystallizer",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "shard-crystallizer",
    icon = "__pyfunctionnal__/prototypes/building/graphics/icons/icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "shard-crystallizer"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"Func-Cryst"},
    crafting_speed = 1.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.05 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 6,
    animation = {
        layers = {
            {
                filename = "__pyfunctionnal__/prototypes/building/graphics/entity/shard-crystallizer.png",
                width = 192,
                height = 192,
                frame_count = 1,
                shift = {0.5, -0.5}
            }
            -- {
            -- filename = "__angelsrefining__/graphics/entity/7x7-overlay.png",
            -- tint = {r=1, g=0, b=0},
            -- width = 224,
            -- height = 224,
            -- frame_count = 1,
            -- shift = {0, 0},
            -- },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = crystallizerpipepictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {0, 3}}
            }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = crystallizerpipepictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {1, 3}}
            }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = crystallizerpipepictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {2, 3}}
            }
        },
        off_when_no_fluid_recipe = true
    }
}
