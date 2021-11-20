arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Note: We are sordering the sub-arrays, not the main array

ordered = arr.map do |sub_array|
  sub_array.sort { |a, b| b <=> a }
end

p ordered
