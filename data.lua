require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/technologies/technologies")
require("prototypes/recipes/recipes")
require("prototypes/recipes/raw")
require("prototypes/recipes/petroleum")
require("prototypes/recipes/omega")
require("prototypes/item-groups")
require("prototypes/recipe-categories")
require("prototypes/items/items")
require("prototypes/fluids/fluids")
require("prototypes/building/recipe")
require("prototypes/building/cover")
require("prototypes/building/shard-crystallizer")
require("prototypes/building/Orefactory")
 require ("prototypes/building/replace")


if settings.startup["enable-old-recipe"].value then
 require ("prototypes/recipes/oldrecipes")
end



 

 
 
