-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

local board = {}
board[1] = {"♖", "♘", "♗", "♕", "♔", "♗", "♘", "♖"}
board[2] = {"♙", "♙", "♙", "♙", "♙", "♙", "♙", "♙"}
board[3] = {}
board[4] = {}
board[5] = {}
board[6] = {}
board[7] = {"♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎"}
board[8] = {"♜", "♞", "♝", "♛", "♚", "♝", "♞", "♜"}

for _, linha in pairs(board) do
    local linhaString = ""
    for _, piece in pairs(linha) do
        linhaString = linhaString .. piece .. " "
    end
    print(linhaString)
end