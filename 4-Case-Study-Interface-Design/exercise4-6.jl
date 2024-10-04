using ThinkJulia
#=
    Write a function called circle that takes a turtle t
    and a radius r as parameters and that draws an approximate
    circle by calling polygon with an appropiate length and number of sides
=#

function polygon(t, len, n)
    @svg begin
        for i in 1:n
            forward(t, len)
            turn(t, -360/n)
        end
    end
end

function circle(t, r)
    n = 100
    θ = 2*π/n
    len = θ*r
    polygon(t, len, n)
end

🐢 = Turtle()
circle(🐢, 25)