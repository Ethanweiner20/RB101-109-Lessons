munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Assumption: Only non-negative ages can be inputted

# Refactored
def age_group(age)
  case age
  when 0..17 then "kid"
  when 18..64 then "adult"
  else "senior"
  end
end

# Solution 1: Direct mutation

munsters.transform_values! do |data|
  data["age_group"] = age_group(data["age"])
  data
end

p munsters

# Solution 2: Mutate during iteration (malpractice)

munsters.each do |_, data|
  data["age_group"] = age_group(data["age"])
end

p munsters

# Solution 3: Reassignment with map (very messy)