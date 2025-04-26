local coroutines = {}

local numberRate = 0
local colorRate = 0

table.insert(coroutines, coroutine.create(function ()
    local totalAmoutOfNunbers = 100
    for i = 1, totalAmoutOfNunbers, 1 do
        print("Processing Numbers #"..i)
        numberRate = i / totalAmoutOfNunbers
        if (i % 10) == 0 then
            coroutine.yield()
        end
    end
end))

table.insert(coroutines, coroutine.create(function ()
    local colors = { "red", "green", "blue", "yellow", "black", "orange", "white", "purple", "brown"}
    for i, color in pairs(colors) do
        colorRate = i / #colors
        print("Processing Colors #".. color)
        coroutine.yield()
    end
end))

table.insert(coroutines, coroutine.create(function ()
    while true do
        local appPercentage = (numberRate + colorRate) / 2
        local appPercentageInt = math.floor(appPercentage * 100 + 0.5)
        print(string.format("app progress Bar: %d%%", appPercentageInt))
        if appPercentageInt >= 100 then
            print("The End!")
            break
        else
        coroutine.yield()
        end
    end
end))

while true do
    local hasActivThreads = false
    for i, thread in pairs(coroutines) do
        local status = coroutine.status(thread)
        local isSuspended = status == "suspended"
        if status ~= "dead" then
            hasActivThreads = true
        end
        if isSuspended then
            coroutine.resume(thread)
        end
    end
    if not hasActivThreads then
        break
    end
end