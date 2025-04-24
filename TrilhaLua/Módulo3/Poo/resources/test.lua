local function addNumbers(a, b, c) 
    return a + b, a + c 
end 
local result = pcall(function() 
    return addNumbers(2, 4) 
end)

print(result)