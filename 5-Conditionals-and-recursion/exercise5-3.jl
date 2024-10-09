#=
    Write a function named check fermat that takes four parameters
    a, b, c and n and checks to see if Fermat's theorem holds
=#

function checkfermat(a, b, c, n)
    if a^n + b^n == c^n
        println("Holy smokes, Fermat was wrong!")
    else
        println("No, that doesn't work.")
    end
end

checkfermat(1, 2, 3, 2)