local MONSTER_NAME <const> = "Creeper"
local health = 20
local maxHealth = 20

while health > 0 do
    health = health - 1
    
    local healthPercentage = health / maxHealth
    local isHealthCritical = healthPercentage <= 0.25
    print (healthPercentage, isHealthCritical)
end

print("O Creeper morreu!")
