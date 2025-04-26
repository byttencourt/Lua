local function printFruits()
    print("banana")
    coroutine.yield()
    print("apple")
    coroutine.yield()
    print("Kiwi")
end

local thread = coroutine.create(printFruits) -- retorna thread

print(coroutine.status(thread))
coroutine.resume(thread) --suspended, running, dead
print(coroutine.status(thread))
coroutine.resume(thread) --suspended, running, dead
print(coroutine.status(thread))
coroutine.resume(thread) --suspended, running, dead
print(coroutine.status(thread))



