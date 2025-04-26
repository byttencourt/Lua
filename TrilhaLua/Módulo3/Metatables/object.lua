local Person = {}

function Person:new(name, role)
    local object = {}
    object.name = name
    object.role = role
    setmetatable(object, self)
    self.__index = self
    return object
end

function Person:getName()
    return self.name
end

function Person:getRole()
    return self.role
end

function Person:__tostring()
    return string.format("%s: %s", self.name, self.role)
end


local nino = Person:new("NINO", "Game Dev")

local nico = Person:new("Nico", "Filho")
--print(nino:getName())
--print(nino:getRole())
print(nino)
print(nico)







---------------------------
local obj1 = {name = "Rafa"} -- rafa, Game Dev
local obj2 = {name = "Nico"} -- 
local obj3 = {}

local meta = {}

function meta:getName()
   return self.name    
end

meta.__index = meta

setmetatable(obj1, meta)
setmetatable(obj2, meta)

-- print(obj1:getName())
-- print(obj2:getName())