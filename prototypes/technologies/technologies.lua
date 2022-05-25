
function SimplicityTech(name,icon,prerequisites,count,ingredients,time)
return 
  TECHNOLOGY {
    type = "technology",
    name = name,
    icon = "__pyfunctionnal__/prototypes/technologies/icons/".. icon,
    icon_size = 128,
    order = "s",
    upgrade = true,
    prerequisites = prerequisites,
    effects = {},
    unit = {
        count = count,
        ingredients = ingredients,
        
        time = time
    }
}
  
end

SimplicityTech("simplicity","simplicity.png",{},60,{{"automation-science-pack", 1}},42)
SimplicityTech("simplicity-2","simplicity2.png",{"simplicity"},80,{{"automation-science-pack", 1},{"logistic-science-pack", 1}},50)
SimplicityTech("simplicity-3","simplicity3.png",{"simplicity","simplicity-2"},160,{{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}},64)
SimplicityTech("Chemicalfactory","Orefactory.png",{},750,{{"automation-science-pack", 1}},70)

 
TECHNOLOGY {
    type = "technology",
    name = "nexelit-1-titanium",
    icon = '__pyraworesgraphics__/graphics/technology/nexelit-1.png',
    icon_size = 128,
    order = "s",
    upgrade = true,
    prerequisites = {"titanium-mk01","simplicity"},
    effects = {},
    unit = {
        count = 80,
        ingredients = {{"automation-science-pack", 1}},
        
        time = 20
    }
}

--[[
TECHNOLOGY {
    type = "technology",
    name = "simplicity",
    icon = "__pyfunctionnal__/prototypes/technologies/simplicity.png",
    icon_size = 128,
    order = "s",
    upgrade = true,
    prerequisites = {},
    effects = {},
    unit = {
        count = 60,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 42
    }
}
--]]

 