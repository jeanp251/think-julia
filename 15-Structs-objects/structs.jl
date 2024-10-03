## COMPOSITE TYPES
# Coordinates (x,y)
struct Point
    x
    y
end

# Create a new object is called instantiation
p = Point(3.0, 4.0)
typeof(p)

x = p.x
# There is no conflict between the variable x and the field x
p.y

distance = sqrt(p.x^2 + p.y^2)

# Structs by default are inmutable, after construction the fields cannot change value
# p.y = 1.0

# Mutalbe Structs
mutable struct MPoint
    x
    y
end

blank = MPoint(0.0, 0.0)
blank.x = 3.0
blank.y = 4.0


## RECTANGLES
#=
    Represents a rectangle
    fields: width, height, corner
=#

struct Rectangle
    width
    height
    corner
end

origin = MPoint(0.0, 0.0)
box = Rectangle(100.0, 200.0, origin)

## INSTANCES AS ARGUMENTS
# You can pass an instance as an argument
function printpoint(p)
    println("($(p.x), $(p.y))")
end
printpoint(blank)

#=
    If a mutable struct object is passed to a function as an argument, the function
    can modify the fields of the object.
=#
function movepoint!(p, dx, dy)
    p.x += dx
    p.y += dy
    nothing
end

origin = MPoint(0.0, 0.0)

movepoint!(origin, 1.0, 2.0)

origin

#=
    You can however modify the value of a mutable attribute
    of an immutable object!
=#

function moverectangle!(rect, dx, dy)
    movepoint!(rect.corner, dx, dy)
end

box
moverectangle!(box, 1.0, 2.0)
box

## INSTANCES AS RETURN VALUES
# Functions can return instances!

function findcenter(rect)
    Point(rect.corner.x + rect.width/2, rect.corner.y + rect.height/2)
end

center = findcenter(box)