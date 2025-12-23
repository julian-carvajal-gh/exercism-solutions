today(birds_per_day) = birds_per_day[end]

function increment_todays_count(birds_per_day)
    newlog = copy(birds_per_day)
    newlog[end] = today(birds_per_day) + 1
    newlog
end

has_day_without_birds(birds_per_day) = any(i -> i == 0, birds_per_day)

count_for_first_days(birds_per_day, num_days) = sum(birds_per_day[begin:num_days])

busy_days(birds_per_day) = count(>=(5), birds_per_day)

average_per_day(week1, week2) = (week1 .+ week2) ./ 2

