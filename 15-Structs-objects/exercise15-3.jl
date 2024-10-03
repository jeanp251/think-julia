#=
    1. Write a definition for a type named Circle with fields center and
    radius, where center is a Point object and radius is a number.
=#

mutable struct MPoint
    x::Float64
    y::Float64
end

mutable struct Circle
    center::MPoint
    radius::Float64
end

#=
    2. Instantiate a circle object that represents a circle with its
    center (150, 100) and radius 75.
=#
center_1 = MPoint(150, 100)
circle_1 = Circle(center_1, 75)

#=
    3. Write a function named `pointincircle` that takes `Circle` object
    and a `Point` object and returns true if the point lies in or on the
    boundary of the circle.
=#

function point_in_circle(circle, point)
    r = circle.radius
    d = sqrt((point.x - circle.center.x)^2 + (point.y - circle.center.y)^2)
    if d <= r
        return true
    else
        return false
    end
end

point_1 = MPoint(5.0, 20.0)
point_2 = MPoint(150.0, 25.0)

point_in_circle(circle_1, point_1)
point_in_circle(circle_1, point_2)

#=
    4. Writhe a function named `rectincircle` that thakes a `Circle` object
    and a `Rectangle` object and returns true of the rectangle lies entirely
    in or on the boundary of the circle.
=#

mutable struct Rectangle
    center::MPoint
    width::Float64
    height::Float64
end

function rect_in_circle(Rectangle, Circle)
    # Left corner top
    x_left_top = Rectangle.center.x - Rectangle.width/2
    y_left_top = Rectangle.center.y + Rectangle.height/2

    # Left corner bottom
    x_left_bot = Rectangle.center.x - Rectangle.width/2
    y_left_bot = Rectangle.center.y - Rectangle.height/2

    # Right corner top
    x_right_top = Rectangle.center.x + Rectangle.width/2
    y_right_top = Rectangle.center.y + Rectangle.height/2

    # Right corner bottom
    x_right_bot = Rectangle.center.x + Rectangle.width/2
    y_right_bot = Rectangle.center.y - Rectangle.height/2

    d_left_top = sqrt((x_left_top - Circle.center.x)^2 + (y_left_top - Circle.center.y)^2)
    d_left_bot = sqrt((x_left_bot - Circle.center.x)^2 + (y_left_bot - Circle.center.y)^2)

    d_right_top = sqrt((x_right_top - Circle.center.x)^2 + (y_right_top - Circle.center.y)^2)
    d_right_bot = sqrt((x_right_bot - Circle.center.x)^2 + (y_right_bot - Circle.center.y)^2)

    r = Circle.radius

    if d_left_top <= r && d_left_bot <= r && d_right_top <= r && d_right_bot <= r
        return true
    else
        return false
    end

end

rectangle_1 = Rectangle(center_1, 150.0, 100.0)

rectangle_2 = Rectangle(center_1, 10.0, 5.0)

rect_in_circle(rectangle_1, circle_1)
rect_in_circle(rectangle_2, circle_1)