local string = require('__stdlib__/stdlib/utils/string')  
local Logger = require('__stdlib__/stdlib/misc/logger')  
local Log= Logger.new("test",true)

commands.add_command("PyFunctionnal.Orefactory.mode.master", "steak", function(param)
  local p = game.players[param.player_index]
  for _, entity in ipairs(game.player.surface.find_entities_filtered{
    area={{game.player.position.x-32, game.player.position.y-32},
      {game.player.position.x+32, game.player.position.y+32}},
    name= param.parameter})
  do
    local e = game.surfaces["nauvis"].create_entity{name="Dummydrillmodule",position={entity.position.x,entity.position.y},force = game.forces.player,direction=defines.direction.north}
    e.rotatable = false
    e.minable = false
    local f = game.surfaces["nauvis"].create_entity{name="quarry_module",position={entity.position.x,entity.position.y},force = game.forces.player,direction=defines.direction.north}
    f.minable = false
  end
end)

commands.add_command("PyFunctionnal.Orefactory.mode.master.spawnchest", "steak", function(param)
   game.surfaces["nauvis"].create_entity{name="Dummychest",position={game.player.position.x-3,game.player.position.y-3 },force = game.forces.player,direction=defines.direction.north}.rotatable = false
end)

commands.add_command("PyFunctionnal.Orefactory.mode.master.collect", "steak", function(param)
  for _, entity in ipairs(game.player.surface.find_entities_filtered{
    area={{game.player.position.x-64, game.player.position.y-64},
      {game.player.position.x+64, game.player.position.y+64}},

    type="item-entity"})
  do
    if entity.stack.name == param.parameter then
      game.player.get_main_inventory().insert(entity.stack)
      entity.stack.clear()
    end
  end
end)



function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end





    

 
 
