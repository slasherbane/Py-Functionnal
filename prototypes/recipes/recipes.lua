RECIPE {
    type = "recipe",
    name = "aromatics-to-oil",
    category = "methanol",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "fluid", name = "aromatics", amount = 60},
        {type = "fluid", name = "syngas", amount = 40}
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 70}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/aromatics-rubber.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "w"
}:add_unlock("methanol-processing-1")

RECIPE {
    type = "recipe",
    name = "propene-from-methanol",
    category = "cracker",
    enabled = false,
    energy_required = 6.0,
    ingredients = {
        {type = "fluid", name = "methanol", amount = 100},
        {type = "fluid", name = "steam", amount = 100},
        {type = "item", name = "iron-oxide", amount = 2}
    },
    results = {
        {type = "fluid", name = "propene", amount = 50},
        {type = "fluid", name = "flue-gas", amount = 50},
        {type = "fluid", name = "water", amount = 100}
    },
    main_product = "propene",
    subgroup = "Func-fluid",
    icon = "__pyhightechgraphics__/graphics/icons/propene.png",
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "oxygen-exploitation",
    category = "omega",
    enabled = false,
    energy_required = 16,
    ingredients = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5},
        {type = "fluid", name = "steam", amount = 70},
        {type = "fluid", name = "purified-air", amount = 350},
        {type = "item", name = "active-carbon", amount = 1}
    },
    results = {
        {type = "fluid", name = "oxygen", amount = 350},
        {type = "fluid", name = "flue-gas", amount = 5},
        {type = "fluid", name = "nitrogen", amount = 50},
        {type = "fluid", name = "water", amount = 70}
    },
    main_product = "oxygen",
    subgroup = "Func-fluid",
    order = "a"
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "cartridge-exploitation",
    category = "omega",
    enabled = false,
    energy_required = 120.0,
    ingredients = {
        {type = "item", name = "saturated-nexelit-cartridge", amount = 10},
        {type = "fluid", name = "pressured-water", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 300}
    },
    results = {
        {type = "fluid", name = "liquid-omega", amount = 400},
        {type = "item", name = "nexelit-cartridge", amount = 10}
    },
    main_product = "nexelit-cartridge",
    subgroup = "Func-Item",
    icon = "__pycoalprocessinggraphics__/graphics/icons/nexelit-cartridge.png",
    icon_size = 32
}:add_unlock("simplicity-3")

RECIPE {
    type = "recipe",
    name = "cartridge-recycling",
    category = "omega",
    enabled = false,
    energy_required = 100.0,
    ingredients = {
        {type = "item", name = "saturated-nexelit-cartridge", amount = 10},
        {type = "fluid", name = "pressured-air", amount = 500},
        {type = "fluid", name = "hot-air", amount = 500}
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "fluid", name = "flue-gas", amount = 400},
        {type = "item", name = "nexelit-cartridge", amount = 10}
    },
    main_product = "nexelit-cartridge",
    subgroup = "Func-Item",
    icon = "__pycoalprocessinggraphics__/graphics/icons/nexelit-cartridge.png",
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "omega-to-antraquinone",
    category = "omega",
    enabled = false,
    energy_required = 36.0,
    ingredients = {
        {type = "fluid", name = "liquid-omega", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 100}
    },
    results = {
        {type = "fluid", name = "anthraquinone", amount = 80}
    },
    main_product = "anthraquinone",
    subgroup = "Func-fluid",
    icon = "__pycoalprocessinggraphics__/graphics/icons/anthraquinone.png",
    icon_size = 32
}:add_unlock("simplicity-2")

RECIPE {
    type = "recipe",
    name = "liquid-omega",
    category = "omega",
    enabled = false,
    energy_required = 5.0,
    ingredients = {
        {type = "item", name = "coal", amount = 8},
        {type = "item", name = "iron-ore", amount = 40},
        {type = "item", name = "copper-ore", amount = 40},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "crude-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "liquid-omega", amount = 120},
        {type = "fluid", name = "steam", amount = 100}
    },
    main_product = "liquid-omega",
    subgroup = "Func-fluid",
    icon = "__pyfunctionnal__/prototypes/fluids/graphics/omega.png", -- need omega icon
    icon_size = 32
}:add_unlock("simplicity-2")

--terminer les rectte pour l'omega et faire la migration
RECIPE {
    type = "recipe",
    name = "Liquifing-coal-dust",
    category = "agitator",
    enabled = false,
    energy_required = 14.0,
    ingredients = {
        {type = "item", name = "coal-dust", amount = 200},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "fluid", name = "coal-slurry", amount = 200}
    },
    main_product = "coal-slurry",
    subgroup = "Func-fluid",
    icon = "__pycoalprocessinggraphics__/graphics/icons/coal-slurry.png",
    icon_size = 32
}:add_unlock("simplicity")

RECIPE {
    type = "recipe",
    name = "Liquifing-tailings",
    category = "agitator",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item", name = "tailings-dust", amount = 600},
        {type = "fluid", name = "water", amount = 400}
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 400}
    },
    main_product = "dirty-water",
    subgroup = "Func-fluid",
    icon = "__pycoalprocessinggraphics__/graphics/icons/dirty-water.png",
    icon_size = 32
}:add_unlock("simplicity")

RECIPE {
    type = "recipe",
    name = "iron-oxide",
    enabled = true,
    category = "smelting",
    energy_required = 3.5,
    ingredients = {{"iron-oxide", 10}},
    results = {
        {"iron-plate", 1}
    }
}

RECIPE {
    type = "recipe",
    name = "Methane-from-waste-water",
    category = "moon",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 120}
    },
    results = {
        {type = "fluid", name = "methane", amount = 55}
    },
    main_product = "methane",
    subgroup = "Func-fluid"
}:add_unlock("simplicity")

RECIPE {
    type = "recipe",
    name = "Methane-from-dirty-water",
    category = "moon",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    results = {
        {type = "fluid", name = "methane", amount = 70}
    },
    main_product = "methane",
    subgroup = "Func-fluid"
}:add_unlock("simplicity")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol (mordenite)",
    category = "methanol",
    enabled = false,
    energy_required = 42,
    ingredients = {
        {type = "item", name = "copper-doper-mordenite", amount = 1},
        {type = "fluid", name = "methane", amount = 120}
    },
    results = {
        {type = "item", name = "copper-doper-mordenite", amount = 1, probability = 0.63},
        {type = "fluid", name = "methanol", amount = 95}
    },
    main_product = "methanol",
    subgroup = "Func-fluid",
    order = "a"
}:add_unlock("simplicity-3")

RECIPE {
    type = "recipe",
    name = "coke-bar",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "coke", amount = 27}
    },
    results = {
        {type = "item", name = "coke-bar", amount = 1}
    },
    main_product = "coke-bar",
    subgroup = "Func-Item",
    order = "a"
}:add_unlock("simplicity")

RECIPE {
    type = "recipe",
    name = "hydrazine-from-ammonia",
    category = "agitator",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "ammonia", amount = 300},
        {type = "item", name = "javel", amount = 2}
    },
    results = {
        {type = "fluid", name = "hydrazine", amount = 100}
    },
    main_product = "hydrazine",
    subgroup = "Func-fluid",
    order = "a"
}:add_unlock("simplicity-3")

RECIPE {
    type = "recipe",
    name = "Rocket-hydrazine",
    category = "Func-Cryst",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "hydrazine", amount = 100}
    },
    results = {
        {type = "item", name = "rocket-fuel", amount = 1}
    },
    main_product = "rocket-fuel",
    subgroup = "Func-Item",
    order = "a"
}:add_unlock("simplicity-3")
