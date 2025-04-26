local utils = {}

function utils.helloFromutils()
    print("hello from Utils")
end

---
--- Função para habilitar UTF-8 no terminal
--- 
function utils.enableUtf8()
    os.execute("chcp 65001")
    print("utf-8 Ativado!")
end

---calcula a barra de progresso ASCII baseado em um atributo

function utils.progressBar(attribute)
    local fullchar = "⬜"
    local emptychar = "⬛"
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
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