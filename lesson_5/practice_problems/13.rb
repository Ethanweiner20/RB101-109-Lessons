arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# Sort the array according to the odd numbers in the sub-arrays

sorted_arr = arr.sort_by do |sub_arr|
  sub_arr.select(&:odd?)
end

p sorted_arr
