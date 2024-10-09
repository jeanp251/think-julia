#=
    RECURSION
    It is legal for one function to call another, it is also legal
    for a function to call itself. It may not be obvius why that is
    a good thing, but it turns to be one of the most magical
    things a program can do
=# 

function countdown(n)
    if n <= 0
        print("Blastoff!")
    else
        print(n, " ")
        countdown(n-1)
    end
end

countdown(3)

# A function that calls itself is recursie
# As another example, we can write a function that prints a string n times

function printn(s, n)
    if n <= 0
        return
    end
    println(s)
    printn(s, n-1)
end

printn("Hi", 3)