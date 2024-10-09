using ThinkJulia
#=
    ENCAPSULATION
    The first exercise asks you to put your square-rawing code into
    a function definition and then call the function, passing the 
    turtle as a parameter
=#

function square(t)
    for i in 1:4
        forward(t, 100)
        turn(t, -90)
    end
end

🐢 = Turtle()
@svg begin
    square(🐢)
end

🐫 = Turtle()
@svg begin
    square(🐫)
end

#=
    GENERALIZATION
    The next step is to add len parameter to squere
    Here is a solution

=#
function square(t, len)
    for i in 1:4
        forward(t, len)
        turn(t, -90)
    end
end

🐢 = Turtle()
@svg begin
    square(🐢, 100)
end

#=
    Adding a parameter to a function is called generalization
    because it makes the function more general
=#

function polygon(t, n, len)
    angle = 360/n
    for i in 1:n
        forward(t, len)
        turn(t, -angle)
    end
end

🐢 = Turtle()
@svg begin
    polygon(🐢, 7, 70)
end

#=
    INTERFACE DESIGN
    The next step is to write circle, which takes a radius r,
    as a parameter
=#

function circle(t, r)
    circumference = 2*π*r
    n = 50
    len = circumference/n
    polygon(t, n, len)
end

🐢 = Turtle()
@svg begin
    circle(🐢, 25)
end


function circle(t, r)
    circumference = 2*π*r
    n = trunc(circumference/3) + 3
    len = circumference/n
    polygon(t, n, len)
end


🐢 = Turtle()
@svg begin
    circle(🐢, 25)
end

#=
    REFACTORING
    When I wrote circle, I was able to re-use polygon because a many-sided
    polygon is a good approximation of a circle
=#

function arc(t, r, angle)
    arc_len = 2*π*r*angle/360
    n = trunc(arc_len/3) + 1
    step_len = arc_len/n 
    step_angle = angle/n
    for i in 1:n
        forward(t, step_len)
        turn(t, -step_angle)
    end
end

🐢 = Turtle()
@svg begin
    arc(🐢, 25, 60)
end

#=
    The second half of this function looks like polygon, but we cant
    re-use polygon without changing the interface. We could generalize
    polygon to take an angle as a third argument, but then polygon would
    no longer be an appropriate name! Instead, let's call the more general
    function polyline
=#

function polyline(t, n, len, angle)
    for i in 1:n
        forward(t, len)
        turn(t, -angle)
    end
end

# Now we can rewirte polygon and arc to use polyline:

function polygon(t, n, len)
    angle = 360/n
    polyline(t, n, len, angle)
end

function arc(t, r, angle)
    arc_len = 2*π*r*angle/360
    n = trunc(arc_len/3) + 1
    step_len = arc_len/n
    step_angle = angle/n
    polyline(t, n, step_len, step_angle)
end

# Finally, we can rewrite circle to use arc

function circle(t,r)
    arc(t,r,360)
end


🐢 = Turtle()
@svg begin
    arc(🐢, 25, 135)
end

#=
    This process-rearranging a program to improve interfaces and
    facilitate code re-use - is called refactoring.
=#

#=
    DOCSTRING

    A docstring is a string before a function that explains the interface
=#

"""
polyline(t, n, len, angle)

Draws n line segmentes with the given length and
angle (in degrees) between them. t is a turtle.

"""
function polyline(t, n, len, angle)
    for i in 1:n
        forward(t, len)
        turn(t, -angle)
    end
end
