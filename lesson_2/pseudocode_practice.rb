# PROBLEM: Write a method that returns the sum of two integers

=begin

Informal:

- Receive two integers as parameters
- Add the integers
- Return the result

Formal: 

START

# Given two integers called "num1" and "num2"

RETURN num1 + num2

=end

# PROBLEM: Write a method that takes an array of strings, and returns a string that is all those strings concatenated together

=begin

Informal:

Given an array of strings:

Initialize an empty "accumulator" string

For each string in the array of strings:
- Append the string onto the accumulator string

Once out of the loop, return the accumulator string

Formal:

START

# Given an array of strings, "strings"

SET accumulator = ""

FOR string in strings
  accumulator += string

RETURN accumulator

END

=end

# PROBLEM: Write a method that takes an array of integers, and returns a new array with every other element

=begin

Informal:

Given an array of integers:

Initialize an empty array called "result"
Initialize a boolean variable called "is_included" to true

For every integer in integers:
- Append the integer to result if is_included is true
- Toggle the value of is_included_

Return the result

Formal:

START

# Given an array of integers called "integers"

SET result = empty collection
SET is_included = true

FOR integer in integers:
- Append integer if is_included
- Toggle is_included

RETURN result

END

=end