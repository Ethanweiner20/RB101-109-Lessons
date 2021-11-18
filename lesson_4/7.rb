statement = "The Flintstones Rock"

=begin

# Clarification: The solution should be case-sensitive (different cases are
# counted separately)

# Spaces should be negated

# Question: Should the answer be alphabetical?

Ideas:
- Use each with object to increment each value in a hash
  - More efficient
- Use Array#count for each letter in the string
  - Less efficient

=end

# Solution 1

# Initialize every count to zero, and increment by 1 upon each occurrence

frequencies = statement.chars.sort.each_with_object(Hash.new(0)) do |char, counts|
  counts[char] += 1 if char =~ /[A-Za-z]/
end

p frequencies

# Solution 2 (inefficient)

# Results in duplicate evaluations of characters

frequencies = statement.chars.sort.each_with_object({}) do |char, counts|
  # Don't recount & only count letter characters
  if !counts[char] && char =~ /[A-Za-z]/
    counts[char] = statement.count(char)
  end
end

p frequencies

# Solution 3 (try counting EVERY letter)

letters = ('A'..'Z').to_a + ('a'..'z').to_a

frequencies = letters.each_with_object({}) do |letter, counts|
  count = statement.count(letter)
  counts[letter] = count unless count == 0
end

p frequencies
