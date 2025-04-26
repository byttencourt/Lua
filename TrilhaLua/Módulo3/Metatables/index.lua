local dictionary = {}

local meta = {
    __index = function (t, key)
        print("__index com chave", key)
        return "transparente"        
    end,

    __newindex = function (t, key, value)
        print("__newindex com chave", key, "e valor ", value)
        rawset(t, key, value)
    end
}

setmetatable(dictionary, meta)

print(dictionary.banana)
dictionary.banana = "Amarela"
print(dictionary.banana)
dictionary.banna = "verde"
print(dictionary.banana)
dictionary.banna = nil
print(dictionary.banana)
dictionary.banna = "azul"
print(dictionary.banana)

