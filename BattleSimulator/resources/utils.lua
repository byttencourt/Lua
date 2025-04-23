local utils = {}
---
---  Ativa Emojis no consosle
--- 
function utils.enableUtf8()
    os.execute("chcp 65001")
    print("😉 utf-8 Ativado!")
end

---
--- Ativa Header
--- 
function utils.header()
    print([[========================================================================
                        />
                       /<
                      /<
            |\_______{o}----------------------------------------------------------_
            [\\\\\\\\\\\{*}:::<=============================================-       >
            |/~~~~~~~{o}----------------------------------------------------------~
                      \<
                       \<
                        \>


                                                                                                                       
                    ██████╗  █████╗ ████████╗████████╗██╗     ███████╗                       
                    ██╔══██╗██╔══██╗╚══██╔══╝╚══██╔══╝██║     ██╔════╝                       
                    ██████╔╝███████║   ██║      ██║   ██║     █████╗                         
                    ██╔══██╗██╔══██║   ██║      ██║   ██║     ██╔══╝                         
                    ██████╔╝██║  ██║   ██║      ██║   ███████╗███████╗                       
                    ╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚══════╝╚══════╝                       
                                                                         
            ███████╗██╗███╗   ███╗██╗   ██╗██╗      █████╗ ████████╗ ██████╗ ██████╗ 
            ██╔════╝██║████╗ ████║██║   ██║██║     ██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗
            ███████╗██║██╔████╔██║██║   ██║██║     ███████║   ██║   ██║   ██║██████╔╝
            ╚════██║██║██║╚██╔╝██║██║   ██║██║     ██╔══██║   ██║   ██║   ██║██╔══██╗
            ███████║██║██║ ╚═╝ ██║╚██████╔╝███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║
            ╚══════╝╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                                             
                                                                                       

                       Você empunha sua espada e se prapara para lutar.
                                   É hora da batalha!   
                
            ========================================================================]])
   
    print("")
end

--- Adiciona linha em branco
function utils.space()
    print("")    
end

function utils.getProgressBar(Atributos)
    local fullchar = "▰"
    local emptychar = "▱"
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

function utils.printCreature(creature)
    local percentHealth = math.floor((creature.health / creature.maxHealth) * 10)
    -- cartão
    print("|  "..creature.name)
    print("|")
    print("|  "..creature.description)
    print("|")
    print("|    Atributos:")
    print("|     Vida:              "..percentHealth.." "..utils.getProgressBar(percentHealth))
    print("|     Ataque:             "..creature.attack.." "..utils.getProgressBar(creature.attack))
    print("|     Defesa:             "..creature.defense.." "..utils.getProgressBar(creature.defense))
    print("|     Velocidade:         "..creature.speed.." "..utils.getProgressBar(creature.speed))
   

end

return utils