const preptimes = Dict(
    "Pure Strawberry Joy" => 0.5,
    "Energizer" => 1.5,
    "Green Garden" => 1.5,
    "Tropical Island" => 3.0,
    "All or Nothing" => 5.0,
)

const specialpreptime = 2.5

const wedgesforsize = Dict(
    "small" => 6,
    "medium" => 8,
    "large" => 10,
)

time_to_mix_juice(juice) = haskey(preptimes, juice) ? preptimes[juice] : specialpreptime

wedges_from_lime(size) = haskey(wedgesforsize, size) ? wedgesforsize[size] : throw(DomainError("Unkown lime size."))

function limes_to_cut(needed, limes)
    wedges = [wedges_from_lime(lime) for lime in limes]
    cuts = 0
    cut = 0
    for wedge in wedges
        if cut >= needed
            return cuts
        end
        cut += wedge
        cuts += 1
    end
    cuts
end

order_times(orders) = [time_to_mix_juice(order) for order in orders]

function remaining_orders(time_left, orders)
    preped = 1
    for order in orders
        prep_time = time_to_mix_juice(order)
        if time_left > 0
            preped += 1
            time_left -= prep_time
        end
    end
    orders[preped:end]
end
