arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# Use multiple methods, using either the #select or #rejecct method
# Array must maintain its structure

def multiple_of_3?(integer)
  integer % 3 == 0
end

# map preserves the original sub-array structure

multiples = arr.map do |sub_arr|
  sub_arr.select { |integer| multiple_of_3?(integer) }
end

p multiples
