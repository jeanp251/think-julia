function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    @show dx dy
    0.0
end

function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx^2 + dy^2
    @show d²   
    0.0
end

function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx^2 + dy^2
    sqrt(d²)
end

distance(1 ,2, 4, 6)