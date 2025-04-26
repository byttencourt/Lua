local class = require "libs.middleclass"

local Point = class("Point")

function Point:initialize(x, y)
    self.x = x
    self.y = y
end

function Point.__add(PointA, PointB)
    return Point:new(PointA.x + PointB.x, PointA.y + PointB.y)
end

function Point:__tostring()
    return string.format("[X:%d, Y:%d]", self.x, self.y)
end

local PointA = Point:new(3, 4)
local PointB = Point:new(1920, 1080)

local result = PointA + PointB
print(result)
-- local result2 = PointA + PointB
-- print(result2)

-- print(PointA)
-- print(PointB)