const replies = Dict(
    :question => "Sure.",
    :yell => "Whoa, chill out!",
    :yell_question => "Calm down, I know what I'm doing!",
    :silence => "Fine. Be that way!",
    :other => "Whatever."
)

function bob(stimulus)
    if isyellquestion(stimulus)
        return replies[:yell_question]
    elseif isyell(stimulus)
        return replies[:yell]
    elseif isquestion(stimulus)
        return replies[:question]
    elseif issilent(stimulus)
        return replies[:silence]
    end
    replies[:other]
end

isquestion(s) = endswith("?")(strip(s))
isyell(s) = hasletters(s) && s == uppercase(s)
isyellquestion(s) = hasletters(s) && isquestion(s) && s == uppercase(s)
issilent(s) = isempty(strip(s))
isother(s) = !isquestion(s) && !isyell(s) && !issilent(s)
hasletters(s) = any([isletter(c) for c in s])
