local function addPoints(point1, point2)
    local result = {}
    result.x = point1.x + point2.x  
    result.y = point1.y + point2.y
    return result   
end

local function remPoints(point1, point2)
    local result = {}
    result.x = point1.x - point2.x  
    result.y = point1.y - point2.y
    return result   
end

local function mulPoints(point1, point2)
    local result = {}
    result.x = point1.x * point2.x  
    result.y = point1.y * point2.y
    return result   
end

local meta = {}
meta.__add = addPoints
meta.__sub = remPoints
meta.__mul = mulPoints

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

local result = mousePoint * webcamPoint
--local result = sumPoints(mousePoint, webcamPoint)
print(string.format("X: %d, Y: %d",result.x, result.y))

