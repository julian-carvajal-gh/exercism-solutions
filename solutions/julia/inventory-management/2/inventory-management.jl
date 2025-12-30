create_inventory(items) = add_items(Dict(), items)

function add_items(inventory, items)
    new_inventory = copy(inventory)
    for item in items
        new_inventory[item] = haskey(new_inventory, item) ? new_inventory[item] + 1 : 1
    end
    new_inventory
end

function decrement_items(inventory, items)
    new_inventory = copy(inventory)
    for item in items
        if haskey(new_inventory, item)
            if new_inventory[item] > 0
                new_inventory[item] -= 1
            end
        end
    end
    new_inventory
end

remove_item(inventory, item) = delete!(copy(inventory), item)

list_inventory(inventory) = filter(p -> p.second > 0, sort(collect(pairs(inventory))))
