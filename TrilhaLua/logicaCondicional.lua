---
--- Contém o nome do mostro do nbosso exemplo.  
--- Isso é uma constante
--- 
local MONSTER_NAME <const> = "Creeper"

local maxHealth = 20
local health = 20
local isHealthFull = health == maxHealth
local healthPercentage = health / maxHealth 
local isHealthCritical = healthPercentage <= 0.25

if isHealthCritical then
    print("Vida Baixa!")
else
    print("Tudo bem!")
end