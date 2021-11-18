words = "the flintstones rock"

# Solution 1: Turse

def titleize(words)
  words.split.map(&:capitalize).join(' ')
end

p titleize(words)

# Other solutions might involve:
# - Appending capitalized versions of each word onto an accumulator string
# - Using string substitution methods to replace via pattern-matching