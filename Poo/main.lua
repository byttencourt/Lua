local Banana = require "banana"

-- local b1 = Banana:new(7)
-- local b2 = Banana:new(6)
-- local b3 = Banana:new(1)

-- print(b1:isGood())
-- print(b2:isGood())
-- print(b3:isGood())

local Creeper = require "creatures.creeper"

local myCreeper = Creeper:new()
print(myCreeper:getName())