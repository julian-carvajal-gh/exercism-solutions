function eggcount(number)
    eggs = 0
    while number != 0
        b = bitstring(number)
        last_bit = b[length(b)]
        if last_bit == '1'
            eggs += 1
        end
        number = number >> 1
    end
    eggs
end
