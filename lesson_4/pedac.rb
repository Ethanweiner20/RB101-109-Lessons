# PROBLEM
# ============================================================================

=begin

Given a string, write a method `palindrome_substrings` which returns all the 
substrings from a given string which are palindromes. Consider palindrome words
case sensitive.

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

Input:
- A _string_ to analyze

Output:
- Array of all the substrings in _string_ which are palindromes

Explicit Requirements:
- Returns only substrings which are palindromes
- Palindrome words are case sensitive -- e.g. "abA" is not considered a
  palindrome
- Palindromes can contain other palindromes

Implicit Requirements:
- A string with no palindromes returns an empty array
- A palindrome must contain at least 2 characters (e.g. "d" is not considered
a palindrome)

Questions:
- Is the entire word considered a possible palindromic substring? e.g.
if the word is "aba", could "aba" be included as one of the substrings?
- Is the input assumed to be a string?


=end

# EXAMPLES/TESTS
# ============================================================================

=begin

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=end

# DATA STRUCTURE(s)
# ============================================================================

=begin

We will use an array to collect the palindromic substrings.

=end

# ALGORITHM
# ============================================================================

=begin

The algorithm seems complete at a declarative level, but it is not complete
enough to translate it into code.

=end

# CODE
# ============================================================================

# Example

=begin

Given a string, produce a new string with every other word removed.

Explicit Requirements:
- Input: _string_
- Output: A string with every other word removed
- Remove every other word from _string_

Implicit Requirements (Test Cases)
- Return a new string (don't mutate the original string)

Questions:
- More precise definition of word: Can words contain non-alphabetic characters?
- Is the first word removed the first word in the string, or the second word in
the string?
- What are words delimited by?

=end

# EXAMPLE

# PROBLEM
# ============================================================================

=begin




I'm going to go with mental model #1. It makes more sense intuitively.

=end

# EXAMPLES/TESTS
# ============================================================================

=begin

row 1 => 2
row 2 => 10
row 4 => 68

=end

# DATA STRUCTURE(s)
# ============================================================================

=begin

We need a data structure that can:
- Store multiple rows
- Each row contains a # of integers

A nested array makes sense here:

[
  [2],
  [4, 6],
  ...
]

=end

# ALGORITHM
# ============================================================================

=begin

# Solution 1 (brute force)

Given a row number _n_:

rows = empty array
row_start = 2

Iterate from 1 to to _n_, tracking the `row_size`:
  Build a row of size `row_size`, starting at row_start
  Set row_start to the final row in this row

Sum the integers in the final row
Return this sum

SUB-PROBLEM: Build a row

SUBPROCESS build a row

Input: _row_size_, _starting_index_
Ouput: The row

Given _row_size_ and _row_start_:

EXAMPLES:
- start: 8, size: 3 => [8, 10, 12]

ALGORITHM:

Initialize an empty array
Initialize an element placeholder variable to row_start

Iterate from 1 to row_size
  Add the element placeholder to the empty arrow
  Increment this element placeholder by 2

Return the array

=end

# CODE
# ============================================================================


def sum_even_number_row(row_number)
  row = []
end

puts sum_even_number_row(1) == 2  # => 2
puts sum_even_number_row(2) == 10 # => 10
puts sum_even_number_row(3) == 30 # => 30

def create_row(start_integer, row_length)
  []
end

puts create_row(1, 2) == [2]         # => [2]
puts create_row(2, 4) == [4, 6]      # => [4, 6]
puts create_row(3, 8) == [8, 10, 12] # => [8, 10, 12]



# ============================================================================

# ALGORITHM 2 

=begin

# Solution 2 (mathematic)

We need some way to determine the starting integer.

The starting integer for a given row _n_ can be mathematically defined as:
((n - 1 + n - 2 + n - 3 ... + 1) + 1) * 2

Why does this work? Each n-k represents the # of integers in each previous row.
By summing all of these previous row counts, plus 1, we retrieve the total # of 
elements in the sequence so far. Since the rule of the sequence is
incrementation by 2, multiplying the entire sum gets us to the current # in the
sequence.

=end