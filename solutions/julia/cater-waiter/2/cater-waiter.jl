clean_ingredients(dish_name, dish_ingredients) = (dish_name, Set(dish_ingredients))

check_drinks(drink_name, drink_ingredients) = isempty(intersect(drink_ingredients, ALCOHOLS)) ? "$(drink_name) Mocktail" : "$(drink_name) Cocktail"

function categorize_dish(dish_name, dish_ingredients)
    category = "VEGAN"
    if issubset(dish_ingredients, VEGETARIAN)
        category = "VEGETARIAN"
    elseif issubset(dish_ingredients, PALEO)
        category = "PALEO"
    elseif issubset(dish_ingredients, KETO)
        category = "KETO"
    elseif issubset(dish_ingredients, OMNIVORE)
        category = "OMNIVORE"
    end
    "$(dish_name): $(category)"
end

function tag_special_ingredients(dish)
    name, ingredients = dish
    (name, intersect(SPECIAL_INGREDIENTS, Set(ingredients)))
end

compile_ingredients(dishes) = union(dishes...)

separate_appetizers(dishes, appetizers) = collect(setdiff(Set(dishes), Set(appetizers)))

singleton_ingredients(dishes, intersection) = setdiff(compile_ingredients(dishes), intersection)
