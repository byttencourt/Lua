local MONSTER_NAME <const> = "creeper"
local maxHealth = 10
local health = 10

for i = 1, 10, 1 do
    health = health - 1
end

if health > 0 then
    print("O creeper está vivo!")
    print(health)
else
    print("O creeper se foi!")
end