arr = ['10', '11', '9', '7', '8']

# We need to sort by the corresponding integer

p(arr.sort { |a, b| b.to_i <=> a.to_i })

