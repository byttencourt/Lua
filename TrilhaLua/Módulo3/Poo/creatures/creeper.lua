local Monster = require "creatures.monster"
local Creeper = Monster:subclass("Creeper")

function Creeper:initialize()
    Monster.initialize(self, "Creeper")
    self.health = 8
    self.maxHealth = 10
end

--- Retorna se é hostil
--- @return boolean
function Creeper:isHostile()
    return true    
end

return Creeper