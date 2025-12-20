exchange_money(budget, exchange_rate) = budget / exchange_rate

get_change(budget, exchanging_value) = budget - exchanging_value

# Any fractional amount is lost as a fee for the exchange.
get_value_of_bills(denomination, number_of_bills) = floor(denomination * number_of_bills)

# Only whole bills available.
get_number_of_bills(amount, denomination) = floor(amount / denomination)

get_leftover_of_bills(amount, denomination) = amount % denomination 

function exchangeable_value(budget, exchange_rate, spread, denomination)
    exchange_fee = exchange_rate * (spread / 100)
    actual_exchange_rate = exchange_rate + exchange_fee
    exchanged_value = exchange_money(budget, actual_exchange_rate)
    whole_bills = get_number_of_bills(exchanged_value, denomination)
    whole_bills * denomination
end
