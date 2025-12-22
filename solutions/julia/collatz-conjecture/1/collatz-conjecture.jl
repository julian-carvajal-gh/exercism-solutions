function collatz_steps(n)
    if n <= 0
        throw(DomainError("Must be a positive integer!"))
    end
    
    step = 0
    while true
        if n == 1
            return step
        end
        n = n % 2 == 0 ? n / 2 : 3n + 1
        step += 1
    end
end
