using ThinkJulia
#=
    Write a function called square that takes a parameter named
    t, which is a turtle. It should use the turtle to draw 
    a square
=#

function square(t, len)
    @svg begin
        for i in 1:4
            forward(t, len)
            turn(t, -90)
        end
    end
end

🐢 = Turtle()
square(🐢, 500)