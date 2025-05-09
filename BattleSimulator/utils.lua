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

function utils.ask()
   io.write("> ") 
   local answer = io.read("*n")
   return answer
end


---
--- Ativa créditos
--- 
function utils.credits()
    print([[


           :'######::'########::'########:'########::'####:'########::'######::
           '##... ##: ##.... ##: ##.....:: ##.... ##:. ##::... ##..::'##... ##:
           ##:::..::  ##:::: ##: ##::::::: ##:::: ##:: ##::::: ##:::: ##:::..::
           ##:::::::  ########:: ######::: ##:::: ##:: ##::::: ##::::. ######::
           ##:::::::  ##.. ##::: ##...:::: ##:::: ##:: ##::::: ##:::::..... ##:
           ##::: ##:  ##::. ##:: ##::::::: ##:::: ##:: ##::::: ##::::'##::: ##:
            ######::  ##:::. ##: ########: ########::'####:::: ##::::. ######::
           :......:::..:::::..::........::........:::....:::::..::::::......:::
  
                                             _ 
                                         _ _|_ 
                                        (_) |  
        

                                                                                                                       
     ____  ___  ______________    ______   _____ ______  _____  ____    ___  __________  ____     
   / __ )/   |/_  __/_  __/ /   / ____/  / ___//  _/  |/  / / / / /   /   |/_  __/ __ \/ __ \    
  / __  / /| | / /   / / / /   / __/     \__ \ / // /|_/ / / / / /   / /| | / / / / / / /_/ /    
 / /_/ / ___ |/ /   / / / /___/ /___    ___/ // // /  / / /_/ / /___/ ___ |/ / / /_/ / _, _/     
/_____/_/  |_/_/   /_/ /_____/_____/   /____/___/_/  /_/\____/_____/_/  |_/_/  \____/_/ |_|      
                                                                                                                                                                          
                                                                                       

        Você empunhou sua espada combateu sua Batalha como um verdadeiro Herói!   

                                Desenvolvido por NINO!
                
           ]])
   
    print("")
end

function utils.lapide()
    print([[  
    
                Você empunhou sua espada e perdeu sua Batalha! 
                
                                Tente Novamente!

                                     ,-=-.      
                                    /  +  \     
                                    | ~~~ |     
                                    |R.I.P|     
                               \vV,,|_____|V,VV,,
    ]])
end


return utils