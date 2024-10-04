using ThinkJulia

🐢 = Turtle()

#=
    Modify the macro to draw a square
=#

@svg begin
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
end

@svg begin
    for i in 1:4
        forward(🐢, 100)
        turn(🐢, -90)
    end
end