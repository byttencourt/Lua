local names = {"creeper","zombie","skeleton","panthom","enderman"}
-- # + nome da table faz a contagem de quantos registros tem na tabela é o mesmo que len(names do python) pode ser utilizado diretamente.
-- em lua as tabelas sempre iniciam a interação em 1 ~= de python

local function mostraNomes()
    for i = 1, #names, 1 do
        print(names[i])
    end
end

mostraNomes()
print("----------------------------------------")

-- k,v in pairs key values in pairs
for key, value in pairs(names) do
    print(key, value)
end

local numbers = {40, 22, 8, 27, 31, 35, 39}

