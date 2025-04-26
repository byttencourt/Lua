utils = require "utils"

utils.enableUtf8()

local dice = {
    -- informando a quantidode de lados
    sides = 6
}

function dice:rolar()    
    return math.random(1, self.sides)    
end

local meta = {}

function meta.__call(t)
   return t:rolar()
end

setmetatable(dice, meta)

print(dice())
