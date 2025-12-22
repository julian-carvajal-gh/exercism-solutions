const origin = (0, 0)

function score(x, y)
    x0, y0 = origin
    dist = sqrt((x - x0) ^ 2 + (y - y0) ^ 2)
    
    if dist <= 1
        return 10
    elseif dist <= 5
        return 5
    elseif dist <= 10
        return 1
    else
        return 0
    end
end
