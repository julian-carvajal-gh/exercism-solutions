get_item(stack, pos) = stack[pos]

function set_item!(stack, pos, replacement_card)
    stack[pos] = replacement_card
    stack
end

insert_item_at_top!(stack, new_card) = push!(stack, new_card)

remove_item!(stack, pos) = deleteat!(stack, pos)

function remove_item_from_top!(stack)
    pop!(stack)
    stack
end

insert_item_at_bottom!(stack, new_card) = pushfirst!(stack, new_card)

function remove_item_at_bottom!(stack)
    popfirst!(stack)
    stack
end

check_size_of_stack(stack, stack_size) = length(stack) == stack_size
