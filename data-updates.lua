require("__stdlib__/stdlib/data/data").Util.create_data_globals()

 local Logger = require('__stdlib__/stdlib/misc/logger')	 
 local Log= Logger.new("test",true)

if settings.startup["powerhouse-is-efficient"].value then
 
  local string = require('__stdlib__/stdlib/utils/string')	
  
   Log("checking...combustion recipes")
    for _, recipe in pairs(data.raw.recipe) do     
      if recipe.name ~= "crude-oil-combustion" and string.ends_with(recipe.name,"combustion") then
        local r = RECIPE(recipe.name)
        r
          :remove_ingredient("coke")
          :add_ingredient({type = "fluid", name = settings.startup["efficient-fluid-type"].value  , amount = 20})
  	    Log( "Recipe " .. recipe.name .. " was a combustion recipe")	  
  	  end
    end
  Log("checking...ended") 
end

if settings.startup["proficient-purified-air"].value then
  RECIPE {
    type = "recipe",
    name = "purified-air",
    category = "carbonfilter",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "pressured-air", amount = 100},
        {type = "item", name = "active-carbon", amount = 1}
    },
    results = {
        {type = "fluid", name = "purified-air", amount = 50}
    }
}
Log("Proficient purified air is active...") 
end

--[[RECIPE("flask")
  :convert_results()
  :replace_result("flask",{type="item",name="flask", amount=2})
  :remove_ingredient("wood")
  :replace_ingredient("glass",{type="item", name="glass", amount=10})
  not working ???
   ]]--