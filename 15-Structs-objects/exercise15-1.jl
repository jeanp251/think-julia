#=
    Write a fucntion called distancebetweenpoints that takes two points
    as argumnets and returns the distance between them
=#

# Construct the point object (or struct)

mutable struct MutablePoint
    x::Float64
    y::Float64
end

point_1 = MutablePoint(0.0, 0.0)
point_2 = MutablePoint(4.0, 3.0)

function distancebetweenpoints(p1, p2)
    return sqrt((p1.x - p2.x)^2 + (p1.y - p2.y)^2)
end

distance = distancebetweenpoints(point_1, point_2)