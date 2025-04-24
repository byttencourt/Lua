local json = require "libs.jason"
local inspect = require "libs.inspect"
os.execute("chcp 65001 > NUL")

local file = io.open("resources/example.json", "r")
local fileContent = file and file:read("a")
local fileDecoded = fileContent and json.decode(fileContent) or {}

print(inspect(fileDecoded))
-- for key, value in pairs(fileDecoded) do
--     print(key,value)
-- end
-- print(json.encode({ 1, 2, 3, { x = 10 } })) -- Returns '[1,2,3,{"x":10}]'

-- print(json.decode('[1,2,3,{"x":10}]')) -- Returns { 1, 2, 3, { x = 10 } }