function create_inventory(items)
    inv = Dict()
    for item in items
        if haskey(inv, item)
            inv[item] += 1
        else
            inv[item] = 1
        end
    end
    inv
end

function add_items(inventory, items)
  for item in items
        if haskey(inventory, item)
            inventory[item] += 1
        else
            inventory[item] = 1
        end
    end
    inventory
end

function decrement_items(inventory, items)
        for item in items
        if haskey(inventory, item)
            if inventory[item] > 0
                inventory[item] -= 1
            end
        end
    end
    inventory
end

remove_item(inventory, item) = delete!(copy(inventory), item)

list_inventory(inventory) = filter(p -> p.second > 0, sort(collect(pairs(inventory))))
