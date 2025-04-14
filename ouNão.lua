local MONSTER_NAME <const> = "Creeper"
local isCreeper = MONSTER_NAME == "Creeper"
local health = 20
local maxHealth = 20
local healthPercentage = health / maxHealth
local isHealthCritical = healthPercentage <= 0.25

local devoCorrer = isCreeper or not isHealthCritical -- se for um creeper ou a vida estiver baixa mete o pé
print(devoCorrer)