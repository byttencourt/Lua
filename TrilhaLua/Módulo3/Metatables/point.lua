local meta = {}

meta.__add = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) + (isBTable and b.x or b)  
    result.y = (isATable and a.y or a) + (isBTable and b.y or b)
    return result   
end

meta.__sub = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) - (isBTable and b.x or b)  
    result.y = (isATable and a.y or a) - (isBTable and b.y or b)
    return result   
end

meta.__mul = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) * (isBTable and b.x or b)  
    result.y = (isATable and a.y or a) * (isBTable and b.y or b)
    return result     
end

meta.__div = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) / (isBTable and b.x or b)  
    result.y = (isATable and a.y or a) / (isBTable and b.y or b)
    return result     
end

meta.__mod = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) % (isBTable and b.x or b)  
    result.y = (isATable and a.y or a) % (isBTable and b.y or b)
    return result     
end

meta.__pow = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) ^ (isBTable and b.x or b)  
    result.y = (isATable and a.y or a) ^ (isBTable and b.y or b)
    return result     
end

local mousePoint = {
    x = 400,
    y = 200
}
setmetatable(mousePoint, meta)

local webcamPoint = {
    x = 1800,
    y = 900
}
setmetatable(webcamPoint, meta)

local result = mousePoint % 3

--local result = sumPoints(mousePoint, webcamPoint)
print(string.format("X: %f, Y: %f",result.x, result.y))

