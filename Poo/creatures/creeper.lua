local Monster = require "creatures.monster"
local Creeper = Monster:subclass("Creeper")

function Creeper:initialize()
    Monster.initialize(self, "Creeper")
end

return Creeper