ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution 1: Idiomatic

minimum_age = ages.values.min
p minimum_age

# Solution 2: Manual Search

minimum_age = nil

ages.each_value do |age|
  minimum_age ||= age 
  minimum_age = age if age < minimum_age 
end
p minimum_age

# Solution 3: Use reduce

minimum_age = ages.values.reduce(ages.values[0]) do |min_so_far, age| 
  [age, min_so_far].min
end
p minimum_age
