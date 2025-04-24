local utils = {}

function utils.getProgressBar(Atributos)
    local fullchar = "%{green}▰"
    local emptychar = "%{black}▱"
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

return utils