--[[
    | Prismarine Colossus
    | 
    | Enormes estátuas de prismarine que medem mais de 20 metros de altura. Sua aparência ameaçadora pode assustar até os mais bravos guerreiros.
    | Eles têm olhos turquesa brilhantes, mas um elogio não vai te ajudar muito durante uma batalha.
    | 
    | Atributos
    | Vida      ▰▰▰▰▰▰▰▰▰▰
    | Ataque    ▰▰▰▰▱▱▱▱▱▱
    | Defesa    ▰▰▰▰▰▰▰▰▰▰
    | Agilidade ▰▱▱▱▱▱▱▱▱▱

    O que você vai fazer?
    1. Atacar com a espada.
    2. Usar poção de regeneração.
    3. Atirar uma pedra.
    4. Se esconder.
    > 2

]]

-- dependencies
local utils = require("resources.utils")
local player = require("resources.player")
local colossus = require("resources.colossus")

--ativa emojis
utils.enableUtf8()
-- header
utils.header()

-- Obtem a definição do jogador
print(string.format("A vida do jogador é %d/%d.", player.health, player.maxHealth))
utils.space()

-- Obterm a definição do monstro
local boss = colossus

--Apresentar o Monstro
utils.printCreature(boss)

while true do
    -- mostrar opções para o jogodador
    print("O que você vai fazer?")
    option = io.input()

    -- simular o turno do jogodor

    --ponto de saida Boss sem vida
    if boss.health <=0 then
        break
    end
    -- simular o turno da criatura
    
    --ponto de saida jogador sem vida
    if player.health <= 0 then
        break
    end
end
print("fim!")