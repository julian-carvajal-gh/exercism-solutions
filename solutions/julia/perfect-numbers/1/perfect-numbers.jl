isperfect(n) = n == aliquot_sum(n)
    
isabundant(n) = n < aliquot_sum(n)

isdeficient(n) = n > aliquot_sum(n)

aliquot_sum(n) = n < 1 ? throw(DomainError("Must be a positive integer")) : sum(filter!(x -> n % x == 0, Vector(1:n-1)))
