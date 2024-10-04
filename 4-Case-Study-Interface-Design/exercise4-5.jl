using ThinkJulia
#=
    MAke a copy of square and change the name to polygon.
    Add another parameter named n and modify the body
    so it draws a n-sided regular polygon
=#

function polygon(t, len, n)
    @svg begin
        for i in 1:n
            forward(t, len)
            turn(t, -360/n)
        end
    end
end

🐢 = Turtle()
polygon(🐢, 150, 6)