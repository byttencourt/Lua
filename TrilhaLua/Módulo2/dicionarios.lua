--dictonary

local users = {
    Nicolas = "Filho",
    Josi = "Mãe",
    NINO = "Pai"
}

local cargos = {
    Nicolas = "usuario",
    Josi = "gerente",
    NINO = "dono",
    Juju = "guarda",
    Suzy = "dondoca"
}

for key, value in pairs(cargos) do
    print(key, value)
end

local nicolasCargo = users["Nicolas"]
print(string.format("O Nicolas é %s .", nicolasCargo))
local marleneCargo = users["Marlene"] or "Inexistente" -- or "Inexistente" já inclui uma informação caso nao exista
print(string.format("O usuário Marlene possui o cargo %s .", marleneCargo))

print(cargos.Suzy) -- acessa diretamente a informação dentro do dicionario
