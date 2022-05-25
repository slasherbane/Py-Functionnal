RECIPE {
    type = "recipe",
    name = "omega-enriching",
    category = "mixer",
    enabled = false,
    energy_required = 25.0,
    ingredients = {
        {type = "fluid", name = "liquid-omega", amount = 100},
        {type = "item", name = "ash", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
        {type = "fluid", name = "water", amount = 20},
        {type = "fluid", name = "crude-oil", amount = 20}
    },
    results = {
        {type = "fluid", name = "liquid-omega", amount = 120}
    },
    main_product = "liquid-omega",
    subgroup = "Func-Item",
    icon = "__pyfunctionnal__/prototypes/fluids/graphics/omega.png",
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "omega-liquifing",
    category = "agitator",
    enabled = false,
    energy_required = 20.0,
    ingredients = {
        {type = "item", name = "pure-omega", amount = 1},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "fluid", name = "liquid-omega", amount = 200}
    },
    main_product = "liquid-omega",
    subgroup = "Func-Item",
    icon = "__pyfunctionnal__/prototypes/fluids/graphics/omega.png",
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "omega-from-dirty-water",
    category = "omega",
    enabled = false,
    energy_required = 60.0,
    ingredients = {
        {type = "fluid", name = "dirty-water", amount = 1000},
        {type = "fluid", name = "hot-air", amount = 500}
    },
    results = {
        {type = "item", name = "pure-omega", amount = 1},
        {type = "fluid", name = "flue-gas", amount = 800}
    },
    main_product = "pure-omega",
    subgroup = "Func-Item",
    icon = "__pyfunctionnal__/prototypes/items/graphics/omega.png",
    icon_size = 250
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "omega-refining-chemicals",
    category = "fts-reactor",
    enabled = false,
    energy_required = 15.0,
    ingredients = {
        {type = "item", name = "pure-omega", amount = 1},
        {type = "fluid", name = "water", amount = 2000}
    },
    results = {
        {type = "fluid", name = "oleochemicals", amount = 85}, -- a terminer
        {type = "fluid", name = "steam", amount = 2000},
        {type = "item", name = "ash", amount = 44}
    },
    main_product = "oleochemicals",
    subgroup = "Func-fluid",
    icon = "__pycoalprocessinggraphics__/graphics/icons/oleochemicals.png", -- need omega icon
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "omega-catalizing",
    category = "Func-Cryst",
    enabled = false,
    energy_required = 12.0,
    ingredients = {
        {type = "item", name = "pure-omega", amount = 1},
        {type = "fluid", name = "flue-gas", amount = 1000}
    },
    results = {
        {type = "item", name = "ash", amount = 100},
        {type = "fluid", name = "hydrazine", amount = 35}
    },
    main_product = "ash",
    subgroup = "Func-fluid",
    icon = "__pycoalprocessinggraphics__/graphics/icons/ash.png", -- need omega icon
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "omega-catalizing-2",
    category = "omega",
    enabled = false,
    energy_required = 46.0,
    ingredients = {
        {type = "item", name = "pure-omega", amount = 1},
        {type = "fluid", name = "flue-gas", amount = 800}
    },
    results = {
        {type = "item", name = "ash", amount = 100}
    },
    main_product = "ash",
    subgroup = "Func-fluid",
    icon = "__pycoalprocessinggraphics__/graphics/icons/ash.png", -- need omega icon
    icon_size = 32
}:add_unlock("simplicity-3")

if mods["pyhightech"] and mods["pypetroleumhandling"] then
    -- ajout de recette d'omega vers olefins
    RECIPE {
        type = "recipe",
        name = "omega-refining-liquor",
        category = "distilator",
        enabled = false,
        energy_required = 8.0,
        ingredients = {
            {type = "fluid", name = "liquid-omega", amount = 200},
            {type = "fluid", name = "hot-air", amount = 100}
        },
        results = {
            {type = "item", name = "pure-omega", amount = 1},
            {type = "fluid", name = "black-liquor", amount = 85}
        },
        main_product = "pure-omega",
        subgroup = "Func-fluid",
        icon = "__pyfunctionnal__/prototypes/items/graphics/omega.png", -- need omega icon
        icon_size = 250
    }:add_unlock("simplicity-2")
end
