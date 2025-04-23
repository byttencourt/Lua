local utils = require "utils"
local actions = {}

actions.list = {}

--- cria uma lista de ações que é armazenada internamente
function actions.build(playerData)
    actions.list = {}

    -- Atacar com espada
    local swordAttack = {
        description = "Atacar com a Espada.",
        requirement = nil,
        execute = function(playerData, creatureData)
            --1 Define chance de sucesso
            local successChance = creatureData.speed == 0 and 1 or playerData.speed / creatureData.speed
            local success = math.random() <= successChance

            --2 Calcular dano
            local rawDamage = playerData.attack - math.random() * creatureData.defense
            local damage = math.max(1, math.ceil(rawDamage))

           
            if success then
                 --3 Aplicar o dano em caso de sucesso
                creatureData.health = creatureData.health - damage
                print(string.format("%s atacou a criatura e deu %d de dano!", playerData.name, damage))
                local healthRate = math.floor((creatureData.health / creatureData.maxHealth) * 10)
                print(string.format("%s: %s", creatureData.name, utils.getProgressBar(healthRate)))
            else
                print(string.format("%s falhou miseravelmente no seu ataque!", playerData.name))    
            end            
        end
    }

    -- Usar pot
    local regenPotion = {
        description = "Tomar uma poção.",
        
        requirement = function(playerData, creatureData)
            return playerData.potions >= 1        
        end,

        execute = function(playerData, creatureData)
            -- Tirar poções do inventário
            playerData.potions = playerData.potions - 1

            -- Recuperar a vida
            local regenPoints = 5
            playerData.health = math.min(playerData.maxHealth, playerData.health + regenPoints)
            print(string.format("%s utilizou uma poção e recuperou alguns pontos de vida!", playerData.name))
            local healthRate = math.floor((playerData.health / playerData.maxHealth) * 10)
            print(string.format("%s: %s", playerData.name, utils.getProgressBar(healthRate)))
        end
    }
    actions.list[#actions.list+1] = swordAttack
    actions.list[#actions.list+1] = regenPotion

end


---Retorna uma lista de açõpes validas
---@param playerData table Definição do jogador
---@param creatureData table Definição da criatura
---@return table 
function actions.getValidActions(playerData, creatureData)
    local validActions = {}
    for _, action in pairs(actions.list) do
        local requirement = action.requirement
        local isValid = requirement == nil or requirement(playerData, creatureData)
        if isValid then
            validActions[#validActions+1] = action
        end
    end
    return validActions
end

return actions