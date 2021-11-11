=begin

The String#+ method (& concatenation in general) expects only String operands,
but an integer operand (40 + 2) is used.

Two possible ways to fix this are:
1. Still use concatenation, but convert the result of (40 + 2) to a String
before concatentation
2. Use interpolation instead, which automatically calls #to_s on any non-String
inputs

=end

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
