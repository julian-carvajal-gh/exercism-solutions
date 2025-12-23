const meaningfulbits = 5
const indexcode = Dict(
    1 => "wink",
    2 => "double blink",
    3 => "close your eyes",
    4 => "jump",
    )

function secret_handshake(code)  
    actions::Array{String} = []
    bits = reverse(bitstring(code)[end - (meaningfulbits - 1):end])
    for i in eachindex(bits[begin:end - 1])
        if bits[i] == '1'
            push!(actions, indexcode[i])
        end
    end
    if bits[end] == '1'
        reverse!(actions)
    end
    actions
end
