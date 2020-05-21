
return function(center, surface) --suspicious rock, stash
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local chest = ce{name = "wooden-chest", position = {center.x+1, center.y+1}, force = fN}
    if chest and chest.valid then
      chest.insert{name = "piercing-shotgun-shell", count = math.random(5, 25)}
    end
    ce{name = "rock-big", position = {center.x, center.y}, force = fN}
end
