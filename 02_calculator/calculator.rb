#write your code here
def add(x, y)
    return x+y

end

#write your code here
def subtract(x, y)
    return x-y

end

def sum(arr)
    s = 0
    arr.each do |x|
        s = s + x
    end
    return s
end

def multiply(*arr)
    p = 1
    arr.each do |x|
        p = p * x
    end
    return p
end

def power(a, n)
    p = 1
    n.times do
        p *= a
    end
    return p
end

def factorial(n)
    if n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

