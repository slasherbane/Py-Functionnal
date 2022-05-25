function ReplaceBOF(name, speed, consuption, onoffsetname)
    return ENTITY {
        type = "assembling-machine",
        name = name, --"bof-mk01"
        icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "bof-mk01",
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = 1
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"bof"},
        crafting_speed = speed,
         --0.5,
        energy_source = {
            emissions_per_minute = 0.06,
            smoke = {
                {
                    name = "smoke",
                    north_position = {2.95, -5.0},
                    east_position = {2.95, -5.0},
                    west_position = {2.95, -5.0},
                    south_position = {2.95, -5.0},
                    frequency = 90,
                    starting_vertical_speed = 0.05,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                }
            },
            type = "heat",
            max_temperature = 3000,
            default_temperature = 15,
            min_working_temperature = 980,
            specific_heat = "1MJ",
            max_transfer = "1GW",
            connections = {
                {
                    position = {-3.4, 0},
                    direction = defines.direction.west
                },
                {
                    position = {3.4, 0},
                    direction = defines.direction.east
                }
            },
            pipe_covers = make_4way_animation_from_spritesheet(
                {
                    filename = "__base__/graphics/entity/" .. "heat-exchanger/heatex-endings.png",
                    line_length = 4,
                    width = 32,
                    height = 32,
                    direction_count = 4,
                    hr_version = {
                        filename = "__base__/graphics/entity/" .. "heat-exchanger/hr-heatex-endings.png",
                        line_length = 4,
                        width = 64,
                        height = 64,
                        direction_count = 4,
                        scale = 0.5
                    }
                }
            )
        },
        energy_usage = consuption, --"500kW",
        ingredient_count = 10,
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/bof-mk01/off" .. onoffsetname .. ".png",
                    --priority = "high",
                    width = 256,
                    height = 288,
                    --line_length = 1,
                    frame_count = 1,
                    --animation_speed = 2,
                    shift = util.by_pixel(17, -32)
                }
            }
        },
        working_visualisations = {
            {
                north_position = util.by_pixel(-15.5, -64),
                west_position = util.by_pixel(-15.5, -64),
                south_position = util.by_pixel(-15.5, -64),
                east_position = util.by_pixel(-15.5, -64),
                animation = {
                    filename = "__pyraworesgraphics__/graphics/entity/bof-mk01/on" .. onoffsetname .. ".png",
                    priority = "high",
                    frame_count = 24,
                    line_length = 6,
                    width = 128,
                    height = 160,
                    animation_speed = 1.0
                }
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
                pipe_connections = {{type = "input", position = {1.0, -4.0}}}
            },
            {
                production_type = "input",
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = DATA.Pipes.covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {-1.0, -4.0}}}
            },
            {
                production_type = "output",
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = DATA.Pipes.covers(false, true, true, true),
                base_level = 1,
                pipe_connections = {{type = "output", position = {1.0, 4.0}}}
            },
            {
                production_type = "output",
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = DATA.Pipes.covers(false, true, true, true),
                base_level = 1,
                pipe_connections = {{type = "output", position = {-1.0, 4.0}}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pyraworesgraphics__/sounds/bof.ogg", volume = 0.9},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/bof.ogg", volume = 0.65},
            apparent_volume = 2.5
        },
        neighbour_collision_increase = 0
    }
end

function ReplacePowerHouse(name, icon, speed, consuption, animefile)
    return ENTITY {
        type = "assembling-machine",
        name = name,
        icon = "__pycoalprocessinggraphics__/graphics/icons/" .. icon,
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = name},
        fast_replaceable_group = "power-house",
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = 2
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"combustion"},
        crafting_speed = speed,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 0.06,
            smoke = {
                {
                    name = "smoke",
                    north_position = {2.1, -1.9},
                    east_position = {2.1, -1.9},
                    west_position = {2.1, -1.9},
                    south_position = {2.1, -1.9},
                    frequency = 90,
                    starting_vertical_speed = 0.03,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                },
                {
                    name = "turbine-smoke",
                    north_position = {1.9, -3.0},
                    east_position = {1.9, -3.0},
                    west_position = {1.9, -3.0},
                    south_position = {1.9, -3.0},
                    frequency = 90,
                    starting_vertical_speed = 0.02,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                }
            }
        },
        energy_usage = consuption,
        ingredient_count = 20,
        animation = {
            filename = "__pycoalprocessinggraphics__/graphics/entity/power-house/" .. animefile,
            width = 233,
            height = 234,
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.7,
            shift = {0.156, -0.165}
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_left),
                pipe_covers = DATA.Pipes.covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {-1.0, -3.9}}}
            },
            {
                production_type = "input",
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_mid),
                pipe_covers = DATA.Pipes.covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {0.0, -3.9}}}
            },
            {
                production_type = "input",
                pipe_covers = DATA.Pipes.covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-0, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_right),
                pipe_connections = {{type = "input", position = {1.0, -3.9}}}
            },
            {
                production_type = "output",
                pipe_covers = DATA.Pipes.covers(true, true, true, true),
                base_level = 1,
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_left),
                pipe_connections = {{type = "output", position = {-1.0, 3.9}}}
            },
            {
                production_type = "output",
                pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_mid),
                pipe_covers = DATA.Pipes.covers(true, true, true, true),
                base_level = 1,
                pipe_connections = {{type = "output", position = {1.0, 3.9}}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/power-house.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/power-house.ogg", volume = 0.65},
            apparent_volume = 2.5
        }
    }
end

if settings.startup["powerhouse-is-electric"].value then
    ReplacePowerHouse("power-house", "power-house.png", 1, "200kW", "powerhouse-anim.png")
    ReplacePowerHouse("power-house-mk02", "power-house-mk02.png", 2, "300kW", "powerhouse-anim-mk02.png")
    ReplacePowerHouse("power-house-mk03", "power-house-mk03.png", 3, "400kW", "powerhouse-anim-mk03.png")
    ReplacePowerHouse("power-house-mk04", "power-house-mk04.png", 4, "500kW", "powerhouse-anim-mk04.png")
end

if settings.startup["BOF-is-heat-powered"].value then
    ReplaceBOF("bof-mk01", 0.5, "500kW", "")
    ReplaceBOF("bof-mk02", 1.0, "600kW", "-mk02")
    ReplaceBOF("bof-mk03", 2.0, "700kW", "-mk03")
    ReplaceBOF("bof-mk04", 3.5, "900kW", "-mk04")
end
