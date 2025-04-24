local Banana = require "banana"

-- local b1 = Banana:new(7)
-- local b2 = Banana:new(6)
-- local b3 = Banana:new(1)

-- print(b1:isGood())
-- print(b2:isGood())
-- print(b3:isGood())

local Creeper = require "creatures.creeper"
local Sheep = require "creatures.sheep"
-- para funcionar o emoji chcp 65001
os.execute("chcp 65001")

local myCreeper = Creeper:new()
local mySheep = Sheep:new()

local creatures = {
    myCreeper,
    mySheep
}
for _, creature in pairs(creatures) do
    -- local hostileString = creature:isHostile() and "hostil" or "docil"
    -- local aliveString = creature:isAlive() and "viva" or "morta"
    -- print(string.format("Nossa criatura %s é %s, e ela está %s", creature:getName(), hostileString, aliveString))
    creature:printInfo()
end


-- print(string.format("name: %s", myCreeper:getName()))
-- print(string.format("isHealthFull: %s", myCreeper:getHealthFull()))
-- print(string.format("isAlive: %s", myCreeper:isAlive()))
-- print(string.format("isDead: %s", myCreeper:isDead()))

-- local color = require "libs.ansicolorsx"

-- print(color '%{italic red}An italic text with red color!')
-- print(color '%{bbluebg cyan}A text with bright blue background and cyan foreground color!')