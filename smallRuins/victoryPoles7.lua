
return function(center, surface) --victory poles
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local e = ce{name = "small-electric-pole", position = {center.x + (0.0), center.y + (-1.0)}, force = fN}
    if e and e.valid then
      e.damage(26,"neutral","physical")
    end
end
