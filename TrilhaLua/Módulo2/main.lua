-- para funcionar o emojis e acentos (chcp 65001)
os.execute("chcp 65001")

-- função sem parametro e sem retorno
local function sayHello(name)
    if name == nil then -- checa se nome tem um valor
        name = "Indivíduo Indigente" --setou nome como ID
    end
    print("Olá "..name..", seja bem vindo")
    
end

-- função sem parametro e com retorno

local function getDate()
    return os.date()
end

-- função com parametro e com retorno
local function convertMphToKmh(mph)
    return mph * 1.609
end
local mph = 100
local kph = convertMphToKmh(mph)

local function convertMany(mph1, mph2, mph3)
    local m1 = convertMphToKmh(mph1)
    local m2 = convertMphToKmh(mph2)
    local m3 = convertMphToKmh(mph3)
    return m1,m2,m3
end
local a, b, c = convertMany(40,60,80)

sayHello("NINO") -- envia nome
print("Olá hoje é "..getDate())
print("O veículo está em "..kph.."km/h.")
print("Conversões de velocidades 40/60/80 Mp/h: "..a.." / "..b.." / "..c.." Km/h.")


