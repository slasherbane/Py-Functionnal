if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "liquid-omega-raw",
        category = "omega",
        enabled = false,
        energy_required = 5.0,
        ingredients = {
            {type = "item", name = "ore-lead", amount = 15},
            {type = "item", name = "ore-tin", amount = 30},
            {type = "item", name = "ore-titanium", amount = 12},
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

    RECIPE {
        type = "recipe",
        name = "Nexelit-trace-from-titanium",
        category = "secondary-crusher",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "ore-titanium", amount = 10}
        },
        results = {
            {type = "item", name = "nexelit-ore", amount = 1, probability = 0.5},
            {type = "item", name = "ti-rejects", amount = 2},
            {type = "item", name = "powdered-ti", amount = 2, probability = 0.25}
        },
        icon = "__pycoalprocessinggraphics__/graphics/icons/nexelit-plate.png",
        icon_size = 32,
        subgroup = "Func-Item",
        order = "c"
    }:add_unlock("nexelit-1-titanium")

    RECIPE {
        type = "recipe",
        name = "Alt-iron-oxyde",
        category = "electrolyzer",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "iron-plate", amount = 10},
            {type = "fluid", name = "water", amount = 60}
        },
        results = {
            {type = "item", name = "iron-oxide", amount = 10}
        },
        main_product = "iron-oxide",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "mordenite-crystalisation",
        category = "Func-Cryst",
        enabled = false,
        energy_required = 48,
        ingredients = {
            {type = "item", name = "powdered-aluminium", amount = 2},
            {type = "fluid", name = "water", amount = 70},
            {type = "fluid", name = "oxygen", amount = 24},
            {type = "item", name = "silicon", amount = 10},
            {type = "fluid", name = "vacuum", amount = 100}
        },
        results = {
            {type = "item", name = "mordenite", amount = 1, probability = 0.70},
            {type = "item", name = "mordenite", amount = 2, probability = 0.15}
        },
        main_product = "mordenite",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity-3")

    RECIPE {
        type = "recipe",
        name = "copper-doper-mordenite ",
        category = "nano",
        enabled = false,
        energy_required = 32,
        ingredients = {
            {type = "item", name = "mordenite", amount = 1},
            {type = "item", name = "grade-4-copper", amount = 1}
        },
        results = {
            {type = "item", name = "copper-doper-mordenite", amount = 1}
        },
        main_product = "copper-doper-mordenite",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity-3")
--[[
    RECIPE {
        type = "recipe",
        name = "base-liquid-glass-1",
        category = "bof",
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = "item", name = "sand", amount = 26}
        },
        results = {
            {type = "fluid", name = "base-liquid-glass", amount = 20}
        },
        main_product = "base-liquid-glass",
        subgroup = "Func-fluid",
        order = "a"
    }:add_unlock("simplicity")
    
    ]]--

    RECIPE {
        type = "recipe",
        name = "base-liquid-glass-1",
        category = "bof",
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = "item", name = "sand", amount = 26}
        },
        results = {
            {type = "fluid", name = "molten-glass", amount = 20}
        },
        main_product = "molten-glass",
        subgroup = "Func-fluid",
        order = "a"
    }:add_unlock("simplicity")

 

    RECIPE {
        type = "recipe",
        name = "base-liquid-glass-2",
        category = "bof",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "sand", amount = 26},
            {type = "item", name = "sodium-hydroxide", amount = 2}
        },
        results = {
            {type = "fluid", name = "molten-glass", amount = 20}
        },
        main_product = "molten-glass",
        subgroup = "Func-fluid",
        order = "a"
    }:add_unlock("simplicity-2")

    RECIPE {
        type = "recipe",
        name = "glass",
        category = "Func-Cryst",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "molten-glass", amount = 60}
        },
        results = {
            {type = "item", name = "glass", amount = 5},
            {type = "item", name = "glass", amount = 1, probability = 0.5}
        },
        main_product = "glass",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "flask-molten-glass",
        category = "Func-Cryst",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "molten-glass", amount = 60}
        },
        results = {
            {type = "item", name = "flask", amount = 2},
            {type = "item", name = "flask", amount = 1, probability = 0.3}
        },
        main_product = "flask",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "javel",
        category = "mixer",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "chlorine", amount = 200},
            {type = "item", name = "sodium-hydroxide", amount = 2}
        },
        results = {
            {type = "item", name = "javel", amount = 1},
            {type = "fluid", name = "water", amount = 100},
            {type = "item", name = "salt", amount = 1}
        },
        main_product = "javel",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity-2")
else
    RECIPE {
        type = "recipe",
        name = "javel",
        category = "mixer",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "water", amount = 200},
            {type = "item", name = "sand", amount = 2}
        },
        results = {
            {type = "item", name = "javel", amount = 1},
            {type = "fluid", name = "water", amount = 100},
            {type = "item", name = "iron-oxide", amount = 1}
        },
        main_product = "javel",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity-2")

    RECIPE {
        type = "recipe",
        name = "flask-base-liquid-glass",
        category = "Func-Cryst",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "molten-glass", amount = 60}
        },
        results = {
            {type = "item", name = "flask", amount = 2},
            {type = "item", name = "flask", amount = 1, probability = 0.3}
        },
        main_product = "flask",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "base-liquid-glass-1",
        category = "smelting",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "sand", amount = 26}
        },
        results = {
            {type = "fluid", name = "molten-glass", amount = 10}
        },
        main_product = "base-liquid-glass",
        subgroup = "Func-fluid",
        order = "a"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "base-liquid-glass-2",
        category = "smelting",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "item", name = "pure-sand", amount = 10}
        },
        results = {
            {type = "fluid", name = "molten-glass", amount = 20}
        },
        main_product = "base-liquid-glass",
        subgroup = "Func-fluid",
        order = "a"
    }:add_unlock("simplicity-2")

    RECIPE {
        type = "recipe",
        name = "mordenite-crystalisation",
        category = "Func-Cryst",
        enabled = false,
        energy_required = 48,
        ingredients = {
            {type = "item", name = "iron-plate", amount = 2},
            {type = "fluid", name = "water", amount = 70},
            {type = "item", name = "silicon", amount = 10},
            {type = "fluid", name = "vacuum", amount = 100}
        },
        results = {
            {type = "item", name = "mordenite", amount = 1, probability = 0.70},
            {type = "item", name = "mordenite", amount = 2, probability = 0.15}
        },
        main_product = "mordenite",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity-3")

    RECIPE {
        type = "recipe",
        name = "copper-doper-mordenite ",
        category = "nano",
        enabled = false,
        energy_required = 32,
        ingredients = {
            {type = "item", name = "mordenite", amount = 1},
            {type = "item", name = "copper-plate", amount = 1}
        },
        results = {
            {type = "item", name = "copper-doper-mordenite", amount = 1}
        },
        main_product = "copper-doper-mordenite",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity-3")
end
