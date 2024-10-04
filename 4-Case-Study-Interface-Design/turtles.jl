using ThinkJulia

🐢 = Turtle()

@svg begin
    forward(🐢, 100)
end

@svg begin
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
end
