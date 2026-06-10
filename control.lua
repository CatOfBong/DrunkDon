script.on_event(defines.events.on_player_mined_entity, function(event)
  if event.entity.name == "tree" or event.entity.name == "dead-tree" or event.entity.name == "dry-tree" then
    local player = game.get_player(event.player_index)
    local wood_count = math.random(1, 3) -- Случайное количество съедобных деревьев
    
    player.insert({name = "edible-wood", count = wood_count})
  end
end)