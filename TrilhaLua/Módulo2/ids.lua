-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

--ids
local ID_CREEPER <const> = 1
local ID_SKELETON <const> = 2
local ID_ZOMBIE <const> = 3
local ID_DOLPHIN <const> = 508

--names
local names = {}
names[ID_CREEPER] = "Creeper"
names[ID_SKELETON] = "Skeleton"
names[ID_ZOMBIE] = "Zombie"
names[ID_DOLPHIN] = "Dolphin"

-- colors
local colors = {}
colors[ID_CREEPER] = "Verde"
colors[ID_SKELETON] = "Branco"
colors[ID_ZOMBIE] = "verde"
colors[ID_DOLPHIN] = "Azul"

-- programa
print("Digite o id da sua criatura: ")
local id = io.read("*n")
local name = names[id]
local color = colors[id]
if name == nil then
    print("Essa criatura não existe registro em nossos registros!")
else
    print(string.format("A criatura que vc escolheu foi %s, sua cor %s.", name, color))
end
