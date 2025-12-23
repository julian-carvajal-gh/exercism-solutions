message(msg) = strip(split(msg, " ", limit = 2)[end])

log_level(msg) = lowercase(split(msg)[begin][2:end-2])

reformat(msg) = "$(message(msg)) ($(log_level(msg)))"
