ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution 1

ages_sum = 0

ages.each_value { |age| ages_sum += age }

p ages_sum

# Solution 2 (use reduce on array)

# Best solution: Uses abstraction & is the least convoluted

ages_sum = ages.values.reduce(:+)
puts ages_sum

# Solution 3 (use reduce on hash)

ages_sum = ages.reduce(0) { |sum, (_, age)| sum + age }
puts ages_sum
