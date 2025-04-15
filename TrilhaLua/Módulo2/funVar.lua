
local function hi()
    print("Hi")    
end

local hello = function(nome)
    print("Hello "..nome..".")
end

hi()
hello("Nino")

-- declarando uma função como variável
local say = print

say("nino")