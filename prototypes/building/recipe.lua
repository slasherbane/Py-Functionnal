if mods["pypetroleumhandling"] then
    RECIPE {
        type = "recipe",
        name = "shard-crystallizer",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {"iron-plate", 10},
            {"small-parts-01", 10},
            {"pipe", 15},
            {"pipe-to-ground", 2}
        },
        result = "shard-crystallizer"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "Chemical-factory",
        energy_required = 120,
        enabled = false,
        ingredients = {
            {"iron-plate", 65},
            {"small-parts-01", 100},
            {"pipe", 50},
            {"pipe-to-ground", 20},
            {"electronic-circuit", 10},
            {"stone-furnace", 1}
        },
        result = "Chemical-factory"
    }:add_unlock("Chemicalfactory")
else
    RECIPE {
        type = "recipe",
        name = "shard-crystallizer",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {"iron-plate", 10},
            {"repair-pack", 10},
            {"pipe", 15},
            {"pipe-to-ground", 2}
        },
        result = "shard-crystallizer"
    }:add_unlock("simplicity")

    RECIPE {
        type = "recipe",
        name = "Chemical-factory",
        energy_required = 120,
        enabled = false,
        ingredients = {
            {"iron-plate", 75},
            {"repair-pack", 100},
            {"pipe", 64},
            {"pipe-to-ground", 20},
            {"electronic-circuit", 20},
            {"iron-gear-wheel", 40},
            {"transport-belt", 32}
        },
        result = "Chemical-factory"
    }:add_unlock("Chemicalfactory")
end
