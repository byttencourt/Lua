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
local utils = require("utils")
local player = require("resources.player")
local colossus = require("resources.colossus")
local playerActions = require("resources.actions")
local colossusActions = require("resources.mobactions")

--ativa emojis
utils.enableUtf8()
-- header
utils.header()

-- Obtem a definição do jogador
print(string.format("A vida do jogador é %d/%d.", player.health, player.maxHealth))
utils.space()

-- Obterm a definição do monstro
local boss = colossus
local bossActions = colossusActions

--Apresentar o Monstro
utils.printCreature(boss)

--Build Actions
playerActions.build()
bossActions.build()

while true do
    -- mostrar opções para o jogodador
    utils.space()
    print("O que você desja fazer em seguida?")
    local validPlayerActions = playerActions.getValidActions(player, boss)
    for i, action in pairs(validPlayerActions) do
        print(string.format("%d. %s", i, action.description))
    end
    local chosenIndex = utils.ask()
    local chosenAction = validPlayerActions[chosenIndex]
    local isActionValid = chosenAction ~= nil
    
    -- simular o turno do jogodor
    if isActionValid then
        chosenAction.execute(player, boss)
    else
        print(string.format("Sua opção é inválida, %s perdeu a vez.",player.name))
    end
    --ponto de saida Boss sem vida
    if boss.health <=0 then
        utils.space()
        print(string.format("%s venceu o confronto! Nem o %s é paril para ele!", player.name, boss.name))
        utils.credits()
        break
    end
    -- simular o turno da criatura
    utils.space()
    local validBossActions = bossActions.getValidActions(player, boss)
    local bossActions = validBossActions[math.random(#validBossActions)]
    bossActions.execute(player,boss)

    --ponto de saida jogador sem vida
    if player.health <= 0 then
        utils.space()
        print(string.format("%s Perdeu o confronto! %s parece imbatível!", player.name, boss.name))
        utils.credits()
        utils.lapide()
        break
    end
end
print("fim!")