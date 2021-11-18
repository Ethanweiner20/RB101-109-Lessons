=begin

Ways arrays could be joined...
- Array#join w/ ' ' arr.join(' ')
- Reduce w/ concatenation
- Accumulate a string during iteration

=end

# Element Assignment

str = "joe's favorite color is blue"
first_letter_indices = [0, 6, 15, 21, 24]
first_letter_indices.each { |index| str[index] = str[index].upcase }
puts str
