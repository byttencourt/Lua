local class = require "libs.middleclass"

local Creature = class("Creature")

-- Constructor
function Creature:initialize(name)
    self.name = name
end

function Creature:getName()
    return self.name    
end

return Creature