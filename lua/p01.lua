count = 11

function factorial(x)
    count = x
    if x == 0 then
        return 1
    else
        return x * factorial(x - 1)
    end
end

print(factorial(1))  -- Output: 120
print("Count:", count)  -- Output: Count: 10
print((function(a) return a * 2 end)(5))

function outer(x)
    local function inner(x)
        if (x == nil) then
            print("x is nil")
            x = ""
        end
        return "Inner Function "..x
    end

    local function abc(x)
        return "ABC Function "..x
    end

    return inner(x)..abc(x)
end

result = outer(123)
print(result)  -- Output: Inner Function

function makeAddre(x)
    function a(y)
        return x + y
    end
    return a
end

first = makeAddre(10)
print(first(5))  -- Output: 15