message(msg) = strip(split(msg, " ", limit = 2)[2])

log_level(msg) = lowercase(split(msg)[1][2:end-2])

function reformat(msg)
    msgbody = message(msg)
    msglvl = log_level(msg)
    "$msgbody ($msglvl)"
end
