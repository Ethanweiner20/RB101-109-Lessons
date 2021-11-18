# Solution 1 (use reject)

# Best solution: Directly matches problem statement => clarity + brevity

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.reject! { |_, age| age >= 100 }
p ages