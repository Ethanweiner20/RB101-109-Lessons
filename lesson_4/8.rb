numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin

I'm not too sure what will be output by these two code examples. However, I will
make a guess. Perhaps looking at Array#each will help.

The docs state that #each allows the array to be modified during iteration.
Which means that it probably decides the #s to iterate over during iteration,
not before.

Output Guess #1:

1
2
3
4

Output Guess #2 (based on index jumps):

1
3

=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin

Output Guess:

1
2

Actual answer: Since the caller updates as you are iterating, the elements
referenced by the iterator change during real-time. This affects the result.

=end