local utils = {}

---  Ativa Emojis no consosle
function utils.enableUtf8()
    os.execute("chcp 65001")
    print("😉 utf-8 Ativado!")
end

--- Ativa Header
function utils.header()
    print([[========================================================================
                                        Battle Simulator
                        />
                       /<
                      /<
            |\_______{o}----------------------------------------------------------_
            [\\\\\\\\\\\{*}:::<=============================================-       >
            |/~~~~~~~{o}----------------------------------------------------------~
                      \<
                       \<
                        \>

                        Você empunha sua espada e se prapara para lutar.
                                    É hora da batalha!   
                
            ========================================================================]])
   
    print("")
end

return utils