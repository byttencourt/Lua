local function readFile(filepath)
    local file = io.open(filepath, "r")
    local fileContent = file:read("a")
    return fileContent
end

local function readFileWithPcall(filepath)
    local success, result = pcall(function()
    local file = io.open(filepath, "r")
    local fileContent = file:read("a")
    return fileContent
    end)
    return success, result    
end

local function readFileWithXpcall(filepath)
    local success, result = pcall(function()
    local file = io.open(filepath, "r")
    local fileContent = file:read("a")
    return fileContent
    end,
    function(err)
        --msg handler
        return "the file doesn't exist!"
    end)
    return success, result    
end


os.execute("chcp 65001 > NUL")
--readFile("resources/example.json")

local filepaths = {
    "resources/example.json",
    "resources/banana.nil"
}

for _, filepath in pairs(filepaths) do
    local success, result = pcall(function ()
        return readFile(filepath)        
    end)
    if not success then
        print(string.format("Erro!: %s Ao ler o arquivo %s.", result, filepath))
    end
end

print("test ok")