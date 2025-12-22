function raindrops(number)
    sounds = ""
    number % 3 == 0 ? sounds *= "Pling" : nothing
    number % 5 == 0 ? sounds *= "Plang" : nothing
    number % 7 == 0 ? sounds *= "Plong" : nothing

    if sounds == ""
        return string(number)
    end
    sounds
end
