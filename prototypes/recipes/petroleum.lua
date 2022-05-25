if mods["pypetroleumhandling"] then


    RECIPE {
        type = "recipe",
        name = "heating-stone-brick-3",
        category = "smelting",
        enabled = false,
        energy_required = 10.0,
        ingredients = {
            {type = "item", name = "warmer-stone-brick", amount = 1}
        },
        results = {
            {type = "item", name = "hot-stone-brick", amount = 1}
        },
        main_product = "hot-stone-brick",
        subgroup = "Func-Item",
        icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick.png",
        icon_size = 32
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "heating-stone-brick-2",
        category = "smelting",
        enabled = false,
        energy_required = 30.0,
        ingredients = {
            {type = "item", name = "warm-stone-brick", amount = 1}
        },
        results = {
            {type = "item", name = "warmer-stone-brick", amount = 1}
        },
        main_product = "warmer-stone-brick",
        subgroup = "Func-Item",
        icon = "__pypetroleumhandlinggraphics__/graphics/icons/warmer-stone-brick.png",
        icon_size = 64
    }:add_unlock("simplicity")


    RECIPE {
        type = "recipe",
        name = "heating-stone-brick",
        category = "smelting",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {type = "item", name = "stone-brick", amount = 1}
        },
        results = {
            {type = "item", name = "warm-stone-brick", amount = 1}
        },
        main_product = "warm-stone-brick",
        subgroup = "Func-Item",
        icon = "__pypetroleumhandlinggraphics__/graphics/icons/warm-stone-brick.png",
        icon_size = 64
    }:add_unlock("simplicity")

 


    RECIPE {
        type = "recipe",
        name = "omega-to-olefins",
        category = "upgrader",
        enabled = false,
        energy_required = 5.5,
        ingredients = {
            {type = "item", name = "pure-omega", amount = 1},
            {type = "fluid", name = "steam", amount = 500}
        },
        results = {
            {type = "fluid", name = "olefin", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 370},
            {type = "fluid", name = "water", amount = 30}
        },
        main_product = "olefin",
        subgroup = "Func-Omega",
        icon = "__pycoalprocessinggraphics__/graphics/icons/olefin.png", -- need omega icon
        icon_size = 32
    }:add_unlock("simplicity-2")

    RECIPE {
        type = "recipe",
        name = "omega-refining-ex",
        category = "distilator",
        enabled = false,
        energy_required = 7.0,
        ingredients = {
            {type = "fluid", name = "liquid-omega", amount = 200},
            {type = "fluid", name = "hot-air", amount = 100}
        },
        results = {
            {type = "item", name = "pure-omega", amount = 1}
        },
        main_product = "pure-omega",
        subgroup = "Func-fluid",
        icon = "__pyfunctionnal__/prototypes/items/graphics/omega.png", -- need omega icon
        icon_size = 250
    }:add_unlock("simplicity-2")

    RECIPE {
        type = "recipe",
        name = "omega-refining",
        category = "distilator",
        enabled = false,
        energy_required = 10.0,
        ingredients = {
            {type = "fluid", name = "liquid-omega", amount = 260}
        },
        results = {
            {type = "item", name = "pure-omega", amount = 1}
        },
        main_product = "pure-omega",
        subgroup = "Func-fluid",
        icon = "__pyfunctionnal__/prototypes/items/graphics/omega.png", -- need omega icon
        icon_size = 250
    }:add_unlock("simplicity-2")

    RECIPE {
        type = "recipe",
        name = "Alt-small-parts-01",
        category = "crafting",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "iron-plate", amount = 5}
        },
        results = {
            {type = "item", name = "small-parts-01", amount = 2},
            {type = "item", name = "small-parts-01", amount = 1, probability = 0.20}
        },
        main_product = "small-parts-01",
        subgroup = "Func-Item",
        order = "a"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "Hydrogen-chloride-electrolysis",
        category = "electrolyzer",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "hydrogen-chloride", amount = 400},
            {type = "fluid", name = "oxygen", amount = 100}
        },
        results = {
            {type = "fluid", name = "water", amount = 200},
            {type = "fluid", name = "chlorine", amount = 200}
        },
        icon = "__pyraworesgraphics__/graphics/icons/chlorine.png",
        icon_size = 32,
        subgroup = "Func-fluid",
        order = "c"
    }:add_unlock("oil-machines-mk03")

    RECIPE {
        type = "recipe",
        name = "Ammonia-heating",
        category = "gas-refinery",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "ammonia", amount = 100},
            {type = "fluid", name = "hot-air", amount = 100}
        },
        results = {
            {type = "fluid", name = "nitrogen", amount = 100},
            {type = "fluid", name = "hydrogen", amount = 300}
        },
        icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
        icon_size = 32,
        subgroup = "Func-fluid",
        order = "c"
    }:add_unlock("oil-machines-mk03")

    RECIPE {
        type = "recipe",
        name = "methane-light-arc-pyrolisis",
        category = "gas-refinery",
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = "fluid", name = "methane", amount = 100},
            {type = "fluid", name = "hot-air", amount = 50}
        },
        results = {
            {type = "fluid", name = "acetylene", amount = 50},
            {type = "fluid", name = "hydrogen", amount = 100}
        },
        main_product = "acetylene",
        subgroup = "Func-fluid",
        order = "a"
    }:add_unlock("oil-machines-mk01")
else
    RECIPE {
        type = "recipe",
        name = "omega-refining",
        category = "distilator",
        enabled = false,
        energy_required = 10.0,
        ingredients = {
            {type = "fluid", name = "liquid-omega", amount = 200}
        },
        results = {
            {type = "item", name = "pure-omega", amount = 1}
        },
        main_product = "pure-omega",
        subgroup = "Func-fluid",
        icon = "__pyfunctionnal__/prototypes/items/graphics/omega.png", -- need omega icon
        icon_size = 32
    }:add_unlock("simplicity-2")


  

end
