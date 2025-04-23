local class = require "libs.middleclass"

local Creature = class("Creature")

-- Constructor
function Creature:initialize(name)
    self.name = name
    self.health = 0
    self.maxHealth = 0
end

--- Retorna nome da criatura
--- @return string
function Creature:getName()
    return self.name    
end

--- Retorna pontos de vida
--- @return integer
function Creature:getHealth()
    return self.health    
end

--- Retorna máximo de vida
--- @return integer
function Creature:getMaxHealth()
    return self.maxHealth    
end

--- Retorna se a vida está cheia
--- @return boolean
function Creature:getHealthFull()
    return self.health >= self.maxHealth    
end

--- Retorna se a criatura está viva
--- @return boolean
function Creature:isAlive()
    return self.health > 0    
end

--- Retorna se a criatura está morta
--- @return boolean
function Creature:isDead()
    return not self:isAlive()    
end

return Creature