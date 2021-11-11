munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
puts munsters

=begin

The family's data is altered, because the values stored in the hash are directly
mutated.

1. The object stored in `munsters` is assigned to `demo_hash`
2. We iterate over each value of `demo_hash`. #values directly inputs the
values from `demo_hash` into a new array, without copying.
3. Each value in demo hash is mutated directly via key assignment, a mutating
operation

=end
