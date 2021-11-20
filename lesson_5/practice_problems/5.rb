munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Select the male members
# Determine the total age

age = munsters.reduce(0) do |total_age, (_, data)|
  if data["gender"] == "male"
    total_age + data["age"]
  else
    total_age
  end
end

puts age