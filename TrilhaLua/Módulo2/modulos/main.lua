local utils = require("utils")
local sheep = require("creatures.sheep")
local cat = require("creatures.cat")

utils.enableUtf8()
print()
print("Hello from Main!")
print()

for i = 5, 7, 1 do
    print(utils.progressBar(i))
end

sheep.fale()
cat.talk()

