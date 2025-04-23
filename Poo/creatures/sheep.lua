local Animal = require "creatures.monster"
local Sheep = Animal:subclass("Sheep")

function Sheep:initialize()
    Animal.initialize(self, "Sheep")
    self.health = 4
    self.maxHealth = 4
end

--- Retorna se é hostil
--- @return boolean
function Animal:isHostile()
    return false    
end

return Sheep