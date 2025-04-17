-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

local bananaStruct = {
    Name = "Banana",
    Color = "Amarelo",
    Price = "$$",
    Sweetness = "4",
    Emoji = "🍌"

}

local appleStruct = {
    Name = "Appel",
    Color = "Vermelho",
    Price = "$$$",
    Sweetness = "6",
    Emoji = "🍎"
}

local fruits = {bananaStruct, appleStruct}

for i = 1, #fruits, 1 do
    local fruitStruct = fruits[i]

    print("================================")
    print(string.format("%s %s",fruitStruct.Name, fruitStruct.Emoji))
    print(string.format("Valor: %s",fruitStruct.Price))
    print(string.format("Doçura: %d",fruitStruct.Sweetness))
    print(string.format("Cor: %s",fruitStruct.Color))
end