local letters = {"A","B","C","D","E","F","G","H","a","b","c","d","e","f","g","h"}
local numbers = {1,2,3,4,5,6,7,8,9,0}
local Specials = {"!","@","#","$","%"}
local charLists = {
    letters,numbers,Specials
}

print("Quantos caracteres você deseja na senha?")
local leght = io.read("*n")

local password = ""
for i = 1, leght, 1 do
    --get list
    local listIndex = math.random(#charLists)
    local list = charLists[listIndex]

    --get caracter
    local charIndex = math.random(#list)
    local char = list[charIndex]

    --Append caracteres
    password = password .. char
end

print("Sua senha: "..password)
