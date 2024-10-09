function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx^2 + dy^2
    sqrt(d²)
end

function area(radius)
    a = π*radius^2
    return a
end

radius = distance(xc, yc, xp, yp)

result = area(radius)

#=
    Encapsulating these steps in a function,
    we get
=#

function circlearea(xc, yc, xp, yp)
    radius = distance(xc, yc, xp, yp)
    result = area(radius)
    return result
end

#=
    The temporary variables radius and result are useful for development and debuggin,
    but once the program is working, we can make it more concise by composing the
    function calls:
=#

function circlearea(xc, yc, xp, yp)
    area(distance(xc, yc, xp, yp))
end