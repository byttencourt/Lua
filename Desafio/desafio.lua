-- para funcionar o emoji chcp 65001
os.execute("chcp 65001")

-- criatura
local MONSTER_NAME = "CREEPER"
local description = "Monstro furtivo do Minecraft"
local emoji = "💥"
local favoritetime = "Noturno"
local item = "Pólvora"

-- Atributos
local attack = 10
local defense = 1
local life = 5
local speed = 7
local inteligence = 2

-- função que calcula um texto
local function getProgressBar(Atributos)
    local fullchar = "⬜"
    local emptychar = "⬛"
    local result = ""
    for i = 1, 10, 1 do
        if i <= Atributos then
            -- quadrado cheio
            result = result .. fullchar
        else
            -- qudrado vazio
            result = result .. emptychar
        end 
    end
    return result
end

-- cartão
print("===================================================")
print("|  "..MONSTER_NAME..emoji)
print("|  "..description)
print("|")
print("|  Horário Favorito: "..favoritetime)
print("|  Item: "..item)
print("|  Emoji favorito: "..emoji)
print("|")
print("|    Atributos:")
print("|     Ataque:            "..attack..getProgressBar(attack))
print("|     Defesa:             "..defense..getProgressBar(defense))
print("|     Vida:               "..life..getProgressBar(life))
print("|     Velocidade:         "..speed..getProgressBar(speed))
print("|     inteligencia:       "..inteligence..getProgressBar(inteligence))
print("===================================================")

-- Verso cartão

print("===================================================")
print("          "..emoji..MONSTER_NAME..emoji)
print("       🟩🟩🟩🟩🟩🟩🟩🟩")
print("       🟩⬛⬛🟩🟩⬛⬛🟩")
print("       🟩⬛⬛🟩🟩⬛⬛🟩")
print("       🟩🟩🟩⬛⬛🟩🟩🟩")
print("       🟩🟩🟩⬛⬛🟩🟩🟩")
print("       🟩🟩⬛⬛⬛⬛🟩🟩")
print("       🟩🟩⬛🟩🟩⬛🟩🟩")
print("       🟩🟩🟩🟩🟩🟩🟩🟩")
print("===================================================")


