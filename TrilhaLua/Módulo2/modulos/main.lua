local utils = require("utils")

utils.enableUtf8()
print()
print("Hello from Main!")
print()

for i = 0, 10, 1 do
    print(utils.progressBar(i))
end