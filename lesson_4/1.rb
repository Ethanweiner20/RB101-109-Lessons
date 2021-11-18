flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Solution 1

hash = {}

flintstones.each_with_index do |name, index|
  hash[name] = index
end

p hash

# Solution 2

position = 0

hash2 = flintstones.each_with_object({}) do |name, hash|
  hash[name] = position
  position += 1
end

p hash2
