using ThinkJulia
#=
    Make a more general version of circle called arc that takes an
    additional parameter angle, which determines what fraction
    of a circle to draw. angle is in units of degrees
=#

function polygon(t, len, n, angle)
    @svg begin
        for i in 1:n
            forward(t, len)
            turn(t, -angle/n)
        end
    end
end

function arc(t, r, angle)
    n = 100
    len = 2*π*r*(angle/360)/n
    polygon(t, len, n, angle)
end

🐢 = Turtle()
arc(🐢, 10, 45)