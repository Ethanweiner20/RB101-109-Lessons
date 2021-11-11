def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# If divisor equals 0, the loop never runs, so division by zero never occurs.
# If divisor is negative, the loop never runs, avoiding the infinite loop.

=begin

Bonus 1: This is the definition of a factor. `divisor` is a factor of `number`
if and only if number mod divisor == 0 (e.g. 9 % 3 == 0 => 3 is a factor of 9).

Bonus 2: Without this line, the factors themselves would never be returned. This
line ensures access to the generated factors from outside the method.

=end
