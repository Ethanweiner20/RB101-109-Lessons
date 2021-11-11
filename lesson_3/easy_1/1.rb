numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin

1
2
2
3

Array#uniq is non-mutating, so `numbers` will not be changed.

=end

